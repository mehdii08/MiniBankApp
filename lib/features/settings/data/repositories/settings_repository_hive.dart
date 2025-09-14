import 'package:injectable/injectable.dart';
import 'package:hive/hive.dart';
import 'package:mini_bank_app/core/constants/hive_boxes.dart';
import 'package:mini_bank_app/core/constants/keys.dart';
import 'package:mini_bank_app/features/settings/domain/repositories/settings_repository.dart';

@LazySingleton(as: SettingsRepository)
class SettingsRepositoryHive implements SettingsRepository {
  SettingsRepositoryHive(this._hive);
  final HiveInterface _hive;

  @override
  Future<bool> isDarkMode() async {
    return _hive.box(kSettingsBox).get(kDarkModeKey, defaultValue: false) as bool;
  }

  @override
  Future<void> setDarkMode(bool value) async {
    await _hive.box(kSettingsBox).put(kDarkModeKey, value);
  }

  @override
  Future<bool> isBiometricEnabled() async {
    return _hive.box(kSettingsBox).get(kBiometricEnabledKey, defaultValue: false) as bool;
  }

  @override
  Future<void> setBiometricEnabled(bool value) async {
    await _hive.box(kSettingsBox).put(kBiometricEnabledKey, value);
  }
}


