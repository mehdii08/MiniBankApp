import 'package:injectable/injectable.dart';
import 'package:hive/hive.dart';
import 'package:mini_bank_app/core/constants/hive_boxes.dart';
import 'package:mini_bank_app/features/account/data/mappers/account_mapper.dart';
import 'package:mini_bank_app/features/account/data/models/account_model.dart';
import 'package:mini_bank_app/features/account/domain/entities/account.dart';
import 'package:mini_bank_app/features/account/domain/repositories/account_repository.dart';

@LazySingleton(as: AccountRepository)
class AccountRepositoryHive implements AccountRepository {
  AccountRepositoryHive(this._hive);
  final HiveInterface _hive;

  @override
  Future<Account?> getAccountByUser(String userId) async {
    final Box<dynamic> box = _hive.box(kAccountBox);
    for (final dynamic key in box.keys) {
      final AccountModel acc = box.get(key) as AccountModel;
      if (acc.userId == userId) return acc.toDomain();
    }
    return null;
  }

  @override
  Future<void> updateBalance(String accountId, double newBalance) async {
    final Box<dynamic> box = _hive.box(kAccountBox);
    final AccountModel? acc = box.get(accountId) as AccountModel?;
    if (acc == null) return;
    await box.put(accountId, acc.copyWith(balance: newBalance));
  }

  @override
  Stream<double> watch() {
    return _hive.box(kAccountBox).watch().map((event) => (event.value as AccountModel).balance);
  }
}


