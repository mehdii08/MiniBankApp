import 'package:injectable/injectable.dart';
import 'package:mini_bank_app/core/usecase/use_case.dart';
import 'package:mini_bank_app/features/account/domain/entities/account.dart';
import 'package:mini_bank_app/features/account/domain/repositories/account_repository.dart';

@injectable
class GetBalance implements UseCase<double?, String> {
  GetBalance(this._repo);
  final AccountRepository _repo;

  @override
  Future<double?> call(String userId) async {
    final Account? acc = await _repo.getAccountByUser(userId);
    return acc?.balance;
  }
}


