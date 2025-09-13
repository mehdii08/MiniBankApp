import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:focus_detector/focus_detector.dart';
import 'package:go_router/go_router.dart';
import 'package:mini_bank_app/core/router/routes.dart';
import 'package:mini_bank_app/features/account/application/account_bloc.dart';
import 'package:mini_bank_app/features/auth/application/auth_bloc.dart';
import 'package:mini_bank_app/features/transactions/application/transactions_bloc.dart';
import 'package:mini_bank_app/features/transactions/domain/entities/transaction.dart' as domain;
import 'package:mini_bank_app/core/bloc/bloc_actions_listener.dart';
import 'package:mini_bank_app/core/widgets/circle_action.dart';
import 'package:mini_bank_app/features/transactions/presentation/transaction_type_extensions.dart';
import 'package:mini_bank_app/l10n/l10n.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final authState = context.watch<AuthBloc>().state;
    final userName = authState.maybeWhen(authenticated: (u) => u.name, orElse: () => '');
    final colorScheme = Theme.of(context).colorScheme;
    final strings = S.of(context);
    return FocusDetector(
      onVisibilityGained: (){
        context.read<AccountBloc>().add(AccountEvent.load());
        context.read<TransactionsBloc>().add(const TransactionsEvent.loadRecent());
      },
      child: BlocActionsListener<AuthBloc>(
        child: Scaffold(
        appBar: AppBar(
          title: Row(
            children: <Widget>[
              PopupMenuButton<String>(
                onSelected: (value) {
                  if (value == strings.logout) {
                    context.read<AuthBloc>().add(const AuthEvent.logoutRequested());
                  }
                },
                itemBuilder: (context) => <PopupMenuEntry<String>>[
                  PopupMenuItem<String>(value: strings.logout, child: Text(strings.logout)),
                ],
                child: const Icon(Icons.person),
              ),
              const SizedBox(width: 8),
              Text(userName, style: Theme.of(context).textTheme.labelMedium,)
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              BlocBuilder<AccountBloc, AccountState>(
                builder: (context, state) {
                  final balance = state.maybeWhen(loaded: (b) => b, orElse: () => null);
                  return Text('${balance?.toStringAsFixed(2) ?? '--'} ${strings.currency}',
                      style: const TextStyle(fontSize: 28, fontWeight: FontWeight.w700));
                },
              ),
              const SizedBox(height: 16),
              Row(
                children: <Widget>[
                  Expanded(
                    child: CircleAction(
                      icon: Icons.list,
                      title: strings.transactionsTitle,
                      onTap: () => context.push(AppRoutes.transactions),
                    ),
                  ),
                  Expanded(
                    child: CircleAction(
                      icon: Icons.send,
                      title: strings.transferTitle,
                      onTap: () => context.push(AppRoutes.transfer),
                    ),
                  ),
                  Expanded(
                    child: CircleAction(
                      icon: Icons.settings,
                      title: strings.settingsTitle,
                      onTap: () => context.push(AppRoutes.settings),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 36),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(strings.recentTransactions, style: TextStyle(color: colorScheme.onSurface, fontWeight: FontWeight.bold)),
                ),
              ),
              const SizedBox(height: 8),
              Expanded(
                child: Container(
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    color: colorScheme.primary,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: BlocBuilder<TransactionsBloc, TransactionsState>(
                      builder: (context, state) {
                        if(state.isLoading()){
                          return Center(child: CircularProgressIndicator(color: colorScheme.onPrimary));
                        }
                        final List<domain.Transaction> items = state.maybeWhen(
                          recentLoaded: (items) => items,
                          orElse: () => const <domain.Transaction>[],
                        );
                        if (items.isEmpty) {
                          return Center(child: Text(strings.emptyState, style: TextStyle(color: colorScheme.onPrimary)));
                        }
                        return Column(
                          children: <Widget>[
                            Expanded(
                              child: ListView.separated(
                                itemCount: items.length,
                                separatorBuilder: (_, __) => Divider(height: 1, color: colorScheme.onPrimary.withValues(alpha: 0.5)),
                                itemBuilder: (context, i) {
                                  final t = items[i];
                                  return ListTile(
                                    title: Text(t.description, style: TextStyle(color: colorScheme.onPrimary)),
                                    subtitle: Text(t.date.toIso8601String(), style: TextStyle(color: colorScheme.onPrimary.withValues(alpha: 0.8))),
                                    trailing: Text('${t.type.sign}${t.amount.toStringAsFixed(2)}', style: TextStyle(color: colorScheme.onPrimary, fontWeight: FontWeight.bold)),
                                  );
                                },
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: TextButton(
                                onPressed: () => context.push(AppRoutes.transactions),
                                child: Text(strings.viewAll, style: TextStyle(color: colorScheme.onPrimary, fontWeight: FontWeight.w600)),
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}


