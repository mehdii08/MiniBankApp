import 'package:injectable/injectable.dart';
import 'package:mini_bank_app/core/bloc/base_bloc.dart';
import 'package:mini_bank_app/core/utils/local_auth_util.dart';
import 'package:mini_bank_app/features/settings/domain/repositories/settings_repository.dart';
import 'package:mini_bank_app/i18n/strings.g.dart';

class BiometricState {
  const BiometricState({
    this.isSupported = false,
    this.isEnabled = false,
    this.isLoading = false,
  });

  final bool isSupported;
  final bool isEnabled;
  final bool isLoading;

  BiometricState copyWith({bool? isSupported, bool? isEnabled, bool? isLoading}) => BiometricState(
        isSupported: isSupported ?? this.isSupported,
        isEnabled: isEnabled ?? this.isEnabled,
        isLoading: isLoading ?? this.isLoading,
      );
}

@singleton
class BiometricCubit extends BaseCubit<BiometricState> {
  BiometricCubit(this._localAuth, this._settings) : super(const BiometricState());
  final LocalAuthUtil _localAuth;
  final SettingsRepository _settings;

  Future<void> init() async {
    emit(state.copyWith(isLoading: true));
    final bool supported = (await _localAuth.isDeviceSupported()) && (await _localAuth.canCheckBiometrics());
    final bool enabled = await _settings.isBiometricEnabled();
    emit(state.copyWith(isSupported: supported, isEnabled: enabled, isLoading: false));
  }

  Future<void> setEnabled(bool value) async {
    if (!state.isSupported) return;
    if (value) {
      final bool ok = await _localAuth.authenticate(reason: t.biometricAuth);
      if (!ok) return;
    }
    await _settings.setBiometricEnabled(value);
    emit(state.copyWith(isEnabled: value));
  }
}


