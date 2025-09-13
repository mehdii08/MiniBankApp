import 'package:mini_bank_app/features/account/domain/entities/account.dart';

abstract interface class AccountRepository {
  Future<Account?> getCurrentUserAccount();
  Future<void> updateBalance(double newBalance);
  Stream<double> watch();
}


