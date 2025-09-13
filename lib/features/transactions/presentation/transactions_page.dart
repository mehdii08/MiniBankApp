import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mini_bank_app/core/constants/pagination.dart';
import 'package:mini_bank_app/features/transactions/application/transactions_bloc.dart';
import 'package:mini_bank_app/features/transactions/domain/entities/transaction.dart' as domain;
import 'package:mini_bank_app/core/bloc/bloc_actions_listener.dart';

class TransactionsPage extends StatefulWidget {
  const TransactionsPage({super.key});

  @override
  State<TransactionsPage> createState() => _TransactionsPageState();
}

class _TransactionsPageState extends State<TransactionsPage> {
  int _page = 1;
  final List<domain.Transaction> _items = <domain.Transaction>[];
  bool _hasMore = true;

  @override
  void initState() {
    super.initState();
    _loadPage(1);
  }

  void _loadPage(int page) {
    context.read<TransactionsBloc>().add(TransactionsEvent.loadPage(page));
  }

  @override
  Widget build(BuildContext context) {
    return BlocActionsListener<TransactionsBloc>(
      child: Scaffold(
      appBar: AppBar(title: const Text('Transactions')),
      body: BlocListener<TransactionsBloc, TransactionsState>(
        listener: (context, state) {
          state.maybeWhen(
            pageLoaded: (items, page, hasMore) {
              setState(() {
                if (page == 1) _items.clear();
                _items.addAll(items);
                _page = page;
                _hasMore = hasMore;
              });
            },
            orElse: () {},
          );
        },
        child: ListView.builder(
          itemCount: _items.length + (_hasMore ? 1 : 0),
          itemBuilder: (context, index) {
            if (index == _items.length) {
              return Padding(
                padding: const EdgeInsets.all(16),
                child: Center(
                  child: ElevatedButton(
                    onPressed: () => _loadPage(_page + 1),
                    child: Text('Load more ($kTransactionsPageSize)'),
                  ),
                ),
              );
            }
            final t = _items[index];
            final sign = t.type == domain.TransactionType.credit ? '+' : '-';
            return ListTile(
              title: Text(t.description),
              subtitle: Text(t.date.toIso8601String()),
              trailing: Text('$sign${t.amount.toStringAsFixed(2)}'),
            );
          },
        ),
      ),
    ));
  }
}


