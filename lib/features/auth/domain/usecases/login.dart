import 'package:injectable/injectable.dart';
import 'package:mini_bank_app/core/usecase/use_case.dart';
import 'package:mini_bank_app/features/auth/domain/repositories/auth_repository.dart';
import 'package:mini_bank_app/core/utils/either.dart';
import 'package:mini_bank_app/core/errors/failure.dart';

@injectable
class Login implements UseCase<Either<Failure, bool>, LoginParams> {
  Login(this._repo);
  final AuthRepository _repo;

  @override
  Future<Either<Failure, bool>> call(LoginParams params) => _repo.login(params.email, params.password);
}

class LoginParams {
  LoginParams({required this.email, required this.password});
  final String email;
  final String password;
}


