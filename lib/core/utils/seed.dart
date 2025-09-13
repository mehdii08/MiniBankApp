import 'dart:math';

import 'package:hive/hive.dart';
import 'package:mini_bank_app/core/constants/hive_boxes.dart';
import 'package:mini_bank_app/core/constants/keys.dart';
import 'package:mini_bank_app/core/constants/pagination.dart';
import 'package:mini_bank_app/features/account/data/models/account_model.dart';
import 'package:mini_bank_app/features/auth/data/models/user_model.dart';
import 'package:mini_bank_app/features/transactions/data/models/transaction_model.dart';

Future<void> seedInitialData(HiveInterface hive) async {
  final Box<dynamic> settingsBox = hive.box(kSettingsBox);
  final bool seeded = settingsBox.get(kSeededKey, defaultValue: false) as bool;
  if (seeded) return;

  // Create a mock user
  const String userId = 'user_1';
  const String email = 'user@test.com';
  const String name = 'Mahdi Mansournia';
  final user = UserModel(id: userId, email: email, name: name);
  await hive.box(kUsersBox).put(userId, user);

  // Create an account with a starting balance
  final account = AccountModel(id: 'acc_1', userId: userId, balance: 1250.0);
  await hive.box(kAccountBox).put(account.id, account);

  // Seed 10 transactions
  final Box<dynamic> txBox = hive.box(kTransactionsBox);
  final Random rng = Random(42);
  final DateTime now = DateTime.now();
  for (int i = 0; i < kInitialTransactionsCount; i++) {
    final bool isCredit = i % 2 == 0;
    final double amount = (rng.nextDouble() * 200).clamp(10, 200);
    final tx = TransactionModel(
      id: 'tx_${i + 1}',
      date: now.subtract(Duration(days: i)),
      description: isCredit ? 'Salary fragment' : 'Grocery purchase',
      amount: double.parse(amount.toStringAsFixed(2)),
      type: isCredit ? TransactionType.credit : TransactionType.debit,
    );
    await txBox.put(tx.id, tx);
  }

  await settingsBox.put(kSeededKey, true);
}


