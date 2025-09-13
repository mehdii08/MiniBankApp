import 'package:injectable/injectable.dart';
import 'package:mini_bank_app/core/usecase/use_case.dart';
import 'package:mini_bank_app/features/account/domain/repositories/account_repository.dart';
import 'package:mini_bank_app/core/utils/either.dart';
import 'package:mini_bank_app/core/errors/failure.dart';

@injectable
class GetBalance implements NoParamsUseCase<Either<Failure, double>> {
  GetBalance(this._repo);
  final AccountRepository _repo;

  @override
  Future<Either<Failure, double>> call() async {
    final res = await _repo.getCurrentUserAccount();
    return res.fold(
      (l) => Either.left(l),
      (r) => Either.right(r.balance),
    );
  }
}


