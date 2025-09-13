import 'package:injectable/injectable.dart';
import 'package:mini_bank_app/core/usecase/use_case.dart';
import 'package:mini_bank_app/features/account/domain/entities/account.dart';
import 'package:mini_bank_app/features/account/domain/repositories/account_repository.dart';

@injectable
class GetBalance implements NoParamsUseCase<double?> {
  GetBalance(this._repo);
  final AccountRepository _repo;

  @override
  Future<double?> call() async {
    final Account? acc = await _repo.getCurrentUserAccount();
    return acc?.balance;
  }
}


