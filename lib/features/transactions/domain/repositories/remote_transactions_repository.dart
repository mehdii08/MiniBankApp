import 'package:mini_bank_app/core/errors/failure.dart';
import 'package:mini_bank_app/core/utils/either.dart';
import 'package:mini_bank_app/features/transactions/domain/entities/transaction.dart';

abstract interface class RemoteTransactionsRepository {
  Future<Either<Failure, List<Transaction>>> getAll();
}




