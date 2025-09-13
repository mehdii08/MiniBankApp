import 'package:hive/hive.dart';
import 'package:mini_bank_app/features/auth/data/models/user_model.dart';
import 'package:mini_bank_app/features/account/data/models/account_model.dart';
import 'package:mini_bank_app/features/transactions/data/models/transaction_model.dart';
import 'package:mini_bank_app/features/settings/data/models/settings_model.dart';

Future<void> registerHiveAdapters(HiveInterface hive) async {
  if (!hive.isAdapterRegistered(1)) {
    hive.registerAdapter(UserModelAdapter());
  }
  if (!hive.isAdapterRegistered(2)) {
    hive.registerAdapter(AccountModelAdapter());
  }
  if (!hive.isAdapterRegistered(3)) {
    hive.registerAdapter(TransactionModelAdapter());
  }
  if (!hive.isAdapterRegistered(5)) {
    hive.registerAdapter(TransactionTypeAdapter());
  }
  if (!hive.isAdapterRegistered(4)) {
    hive.registerAdapter(SettingsModelAdapter());
  }
}


