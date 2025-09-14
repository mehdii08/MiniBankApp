abstract interface class SettingsRepository {
  Future<bool> isDarkMode();
  Future<void> setDarkMode(bool value);
  Future<bool> isBiometricEnabled();
  Future<void> setBiometricEnabled(bool value);
}


