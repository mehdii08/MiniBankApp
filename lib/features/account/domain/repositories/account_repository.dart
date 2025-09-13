import 'package:mini_bank_app/features/account/domain/entities/account.dart';

abstract interface class AccountRepository {
  Future<Account?> getAccountByUser(String userId);
  Future<void> updateBalance(String accountId, double newBalance);
}


