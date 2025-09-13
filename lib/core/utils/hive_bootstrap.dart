import 'package:hive/hive.dart';
import 'package:mini_bank_app/core/constants/hive_boxes.dart';

Future<void> openAppBoxes(HiveInterface hive) async {
  await hive.openBox(kUsersBox);
  await hive.openBox(kAccountBox);
  await hive.openBox(kTransactionsBox);
  await hive.openBox(kSettingsBox);
}


