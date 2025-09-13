import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mini_bank_app/core/router/routes.dart';
import 'package:mini_bank_app/features/account/application/account_bloc.dart';
import 'package:mini_bank_app/features/auth/application/auth_bloc.dart';
import 'package:mini_bank_app/features/transactions/application/transactions_bloc.dart';
import 'package:mini_bank_app/features/transactions/domain/entities/transaction.dart' as domain;
import 'package:mini_bank_app/core/bloc/bloc_actions_listener.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final authState = context.watch<AuthBloc>().state;
    final userId = authState.maybeWhen(authenticated: (u) => u.id, orElse: () => null);
    if (userId != null) {
      context.read<AccountBloc>().add(AccountEvent.load(userId));
      context.read<TransactionsBloc>().add(const TransactionsEvent.loadRecent());
    }
    return BlocActionsListener<AuthBloc>(
      child: Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            BlocBuilder<AccountBloc, AccountState>(
              builder: (context, state) {
                final balance = state.maybeWhen(loaded: (b) => b, orElse: () => null);
                return Text('Balance: ${balance?.toStringAsFixed(2) ?? '--'}');
              },
            ),
            const SizedBox(height: 16),
            Row(
              children: <Widget>[
                ElevatedButton(onPressed: () => context.push(AppRoutes.transactions), child: const Text('Transactions')),
                const SizedBox(width: 8),
                ElevatedButton(onPressed: () => context.push(AppRoutes.transfer), child: const Text('Transfer')),
                const SizedBox(width: 8),
                ElevatedButton(onPressed: () => context.push(AppRoutes.settings), child: const Text('Settings')),
              ],
            ),
            const SizedBox(height: 24),
            const Text('Recent transactions'),
            const SizedBox(height: 8),
            Expanded(
              child: BlocBuilder<TransactionsBloc, TransactionsState>(
                builder: (context, state) {
                  final List<domain.Transaction> items = state.maybeWhen(
                    recentLoaded: (items) => items,
                    orElse: () => const <domain.Transaction>[],
                  );
                  if (items.isEmpty) return const Text('No data');
                  return ListView.separated(
                    itemCount: items.length,
                    separatorBuilder: (_, __) => const Divider(height: 1),
                    itemBuilder: (context, i) {
                      final t = items[i];
                      final sign = t.type == domain.TransactionType.credit ? '+' : '-';
                      return ListTile(
                        title: Text(t.description),
                        subtitle: Text(t.date.toIso8601String()),
                        trailing: Text('$sign${t.amount.toStringAsFixed(2)}'),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ));
  }
}


