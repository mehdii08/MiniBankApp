import 'package:injectable/injectable.dart';
import 'package:mini_bank_app/core/usecase/use_case.dart';
import 'package:mini_bank_app/features/transactions/domain/entities/transaction.dart';
import 'package:mini_bank_app/features/transactions/domain/repositories/remote_transactions_repository.dart';
import 'package:mini_bank_app/core/utils/either.dart';
import 'package:mini_bank_app/core/errors/failure.dart';

@injectable
class GetRemoteTransactions implements NoParamsUseCase<Either<Failure, List<Transaction>>> {
  GetRemoteTransactions(this._repo);
  final RemoteTransactionsRepository _repo;

  @override
  Future<Either<Failure, List<Transaction>>> call() => _repo.getAll();
}




