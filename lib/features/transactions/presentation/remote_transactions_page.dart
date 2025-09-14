import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mini_bank_app/core/di/di.dart';
import 'package:mini_bank_app/features/transactions/application/remote_transactions_bloc.dart';
import 'package:mini_bank_app/features/transactions/presentation/transaction_type_extensions.dart';
import 'package:mini_bank_app/core/utils/date_extensions.dart';
import 'package:mini_bank_app/i18n/strings.g.dart';

class RemoteTransactionsPage extends StatefulWidget {
  const RemoteTransactionsPage({super.key});

  @override
  State<RemoteTransactionsPage> createState() => _RemoteTransactionsPageState();
}

class _RemoteTransactionsPageState extends State<RemoteTransactionsPage> {
  late final RemoteTransactionsBloc _bloc;

  @override
  void initState() {
    super.initState();
    _bloc = getIt<RemoteTransactionsBloc>()..add(const LoadRemote());
  }

  Future<void> _reload() async => _bloc.add(const LoadRemote());

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RemoteTransactionsBloc>.value(
      value: _bloc,
      child: BlocBuilder<RemoteTransactionsBloc, RemoteTransactionsState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: Text(t.transactionsTitle + ' (' + t.remote + ')'),
              actions: <Widget>[
                IconButton(
                  onPressed: state.isLoading ? null : _reload,
                  icon: const Icon(Icons.refresh),
                )
              ],
            ),
            body: Builder(
              builder: (context) {
                if (state.isLoading) {
                  return const Center(child: CircularProgressIndicator());
                }
                if (state.error != null) {
                  return Center(
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          const Icon(Icons.error_outline, color: Colors.red),
                          const SizedBox(height: 8),
                          Text(state.error!, textAlign: TextAlign.center),
                          const SizedBox(height: 12),
                          ElevatedButton(onPressed: _reload, child: Text(t.retry)),
                        ],
                      ),
                    ),
                  );
                }
                if (state.items.isEmpty) {
                  return Center(child: Text(t.noTransactions));
                }
                return ListView.separated(
                  itemCount: state.items.length,
                  separatorBuilder: (_, __) => const Divider(height: 1),
                  itemBuilder: (context, index) {
                    final t = state.items[index];
                    return ListTile(
                      title: Text(t.description),
                      subtitle: Text(t.date.toFormattedString()),
                      trailing: Text(t.type.sign + t.amount.toStringAsFixed(2)),
                    );
                  },
                );
              },
            ),
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    _bloc.close();
    super.dispose();
  }
}


