import 'package:mini_bank_app/features/auth/domain/entities/user.dart';
import 'package:mini_bank_app/core/utils/either.dart';
import 'package:mini_bank_app/core/errors/failure.dart';

abstract interface class AuthRepository {
  Future<Either<Failure, bool>> login(String email, String password);
  Future<Either<Failure, bool>> logout();
  Future<Either<Failure, User>> currentUser();
}


