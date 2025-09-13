import 'package:injectable/injectable.dart';
import 'package:mini_bank_app/core/usecase/use_case.dart';
import 'package:mini_bank_app/features/settings/domain/repositories/settings_repository.dart';

@injectable
class LoadTheme implements NoParamsUseCase<bool> {
  LoadTheme(this._repo);
  final SettingsRepository _repo;
  @override
  Future<bool> call() => _repo.isDarkMode();
}

@injectable
class ToggleTheme implements UseCase<void, bool> {
  ToggleTheme(this._repo);
  final SettingsRepository _repo;
  @override
  Future<void> call(bool isDark) => _repo.setDarkMode(isDark);
}


