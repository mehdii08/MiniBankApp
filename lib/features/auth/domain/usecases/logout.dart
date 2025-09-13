import 'package:injectable/injectable.dart';
import 'package:mini_bank_app/core/usecase/use_case.dart';
import 'package:mini_bank_app/features/auth/domain/repositories/auth_repository.dart';

@injectable
class Logout implements NoParamsUseCase<void> {
  Logout(this._repo);
  final AuthRepository _repo;

  @override
  Future<void> call() => _repo.logout();
}


