import 'package:injectable/injectable.dart';
import 'package:hive/hive.dart';
import 'package:mini_bank_app/core/constants/hive_boxes.dart';
import 'package:mini_bank_app/features/account/data/mappers/account_mapper.dart';
import 'package:mini_bank_app/features/account/data/models/account_model.dart';
import 'package:mini_bank_app/features/account/domain/entities/account.dart';
import 'package:mini_bank_app/features/account/domain/repositories/account_repository.dart';
import 'package:mini_bank_app/core/utils/either.dart';
import 'package:mini_bank_app/core/errors/failure.dart';

@LazySingleton(as: AccountRepository)
class AccountRepositoryHive implements AccountRepository {
  AccountRepositoryHive(this._hive);
  final HiveInterface _hive;

  @override
  Future<Either<Failure, Account>> getCurrentUserAccount() async {
    final Box<dynamic> box = _hive.box(kAccountBox);
    if (box.isEmpty) return const Either.left(Failure('Account not found'));
    final AccountModel acc = box.values.first as AccountModel;
    return Either<Failure, Account>.right(acc.toDomain());
  }

  @override
  Future<Either<Failure, bool>> updateBalance(double newBalance) async {
    final Box<dynamic> box = _hive.box(kAccountBox);
    if (box.isEmpty) return const Either.left(Failure('Account not found'));
    final AccountModel acc = box.values.first as AccountModel;
    await box.put(acc.id, acc.copyWith(balance: newBalance));
    return const Either.right(true);
  }

  @override
  Stream<double> watch() {
    // return current balance when it changes; pick the first account for simplicity
    final Box<dynamic> box = _hive.box(kAccountBox);
    return box.watch().map((_) {
      if (box.isEmpty) return 0.0;
      final AccountModel acc = box.values.first as AccountModel;
      return acc.balance;
    });
  }
}


