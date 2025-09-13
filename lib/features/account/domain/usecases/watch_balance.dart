import 'package:injectable/injectable.dart';
import 'package:mini_bank_app/features/account/domain/repositories/account_repository.dart';

@injectable
class WatchBalance {
  WatchBalance(this._repo);
  final AccountRepository _repo;

  Stream<double> call() => _repo.watch();
}


