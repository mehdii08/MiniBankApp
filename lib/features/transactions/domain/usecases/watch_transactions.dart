import 'package:injectable/injectable.dart';
import 'package:mini_bank_app/features/transactions/domain/repositories/transaction_repository.dart';

@injectable
class WatchTransactions {
  WatchTransactions(this._repo);
  final TransactionRepository _repo;

  Stream<void> call() => _repo.watch();
}


