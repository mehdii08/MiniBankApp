import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:focus_detector/focus_detector.dart';
import 'package:mini_bank_app/features/transactions/application/transactions_bloc.dart';
import 'package:mini_bank_app/features/transactions/domain/entities/transaction.dart' as domain;
import 'package:mini_bank_app/core/bloc/bloc_actions_listener.dart';
import 'package:mini_bank_app/features/transactions/presentation/transaction_type_extensions.dart';
import 'package:mini_bank_app/i18n/strings.g.dart';

class TransactionsPage extends StatefulWidget {
  const TransactionsPage({super.key});

  @override
  State<TransactionsPage> createState() => _TransactionsPageState();
}

class _TransactionsPageState extends State<TransactionsPage> {
  final ScrollController _scrollController = ScrollController();
  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      if (!_scrollController.hasClients) return;
      final position = _scrollController.position;
      if (position.pixels >= position.maxScrollExtent - 200) {
        final bloc = context.read<TransactionsBloc>();
        final st = bloc.state;
        if (!st.isLoading && st.hasMore) {
          bloc.add(const LoadNext());
        }
      }
    });
  }

  // filtering handled in bloc

  @override
  Widget build(BuildContext context) {
    final strings = t;
    return FocusDetector(
      onVisibilityGained: (){
        context.read<TransactionsBloc>().add(const Restart());
      },
      child: BlocActionsListener<TransactionsBloc>(
        child: Scaffold(
        appBar: AppBar(title: Text(strings.transactionsTitle)),
        body: BlocBuilder<TransactionsBloc, TransactionsState>(
          builder: (context, state) => Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: strings.searchHint,
                          isDense: true,
                          prefixIcon: const Icon(Icons.search),
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                        ),
                        onChanged: (v) => context.read<TransactionsBloc>().add(UpdateQuery(v)),
                      ),
                    ),
                    const SizedBox(width: 12),
                    DropdownButton<domain.TransactionType?>(
                      value: state.selectedType,
                      hint: Text(strings.type),
                      items: <DropdownMenuItem<domain.TransactionType?>>[
                        DropdownMenuItem<domain.TransactionType?>(value: null, child: Text(strings.all)),
                        DropdownMenuItem<domain.TransactionType?>(value: domain.TransactionType.credit, child: Text(strings.credit)),
                        DropdownMenuItem<domain.TransactionType?>(value: domain.TransactionType.debit, child: Text(strings.debit)),
                      ],
                      onChanged: (v) => context.read<TransactionsBloc>().add(UpdateType(v)),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Builder(
                  builder: (context) {
                    final List<domain.Transaction> visible = state.items;
                    return ListView.builder(
                      controller: _scrollController,
                      itemCount: visible.length + (state.isLoading ? 1 : 0),
                      itemBuilder: (context, index) {
                        if (index >= visible.length) {
                          return const Padding(
                            padding: EdgeInsets.all(16),
                            child: Center(child: CircularProgressIndicator()),
                          );
                        }
                        final t = visible[index];
                        return ListTile(
                          title: Text(t.description),
                          subtitle: Text(t.date.toIso8601String()),
                          trailing: Text('${t.type.sign}${t.amount.toStringAsFixed(2)}'),
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}


