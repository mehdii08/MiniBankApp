import 'package:injectable/injectable.dart';
import 'package:mini_bank_app/core/usecase/use_case.dart';
import 'package:mini_bank_app/features/transactions/domain/entities/transaction.dart';
import 'package:mini_bank_app/features/transactions/domain/repositories/transaction_repository.dart';

@injectable
class GetRecentTransactions implements NoParamsUseCase<List<Transaction>> {
  GetRecentTransactions(this._repo);
  final TransactionRepository _repo;

  @override
  Future<List<Transaction>> call() => _repo.getRecent();
}


