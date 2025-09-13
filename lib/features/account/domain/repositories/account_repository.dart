import 'package:mini_bank_app/features/account/domain/entities/account.dart';
import 'package:mini_bank_app/core/utils/either.dart';
import 'package:mini_bank_app/core/errors/failure.dart';

abstract interface class AccountRepository {
  Future<Either<Failure, Account>> getCurrentUserAccount();
  Future<Either<Failure, bool>> updateBalance(double newBalance);
  Stream<double> watch();
}


