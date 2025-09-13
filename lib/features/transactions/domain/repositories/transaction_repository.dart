import 'package:mini_bank_app/features/transactions/domain/entities/transaction.dart';
import 'package:mini_bank_app/core/constants/pagination.dart';
import 'package:mini_bank_app/core/utils/either.dart';
import 'package:mini_bank_app/core/errors/failure.dart';

abstract interface class TransactionRepository {
  Future<Either<Failure, List<Transaction>>> getRecent({int count = 5});
  Future<Either<Failure, List<Transaction>>> getPage({required int page, int pageSize = kTransactionsPageSize});
  Future<Either<Failure, bool>> add(Transaction tx);
  Future<Either<Failure, int>> count();
  Stream<void> watch();
}


