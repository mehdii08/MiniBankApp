import 'package:injectable/injectable.dart';
import 'package:mini_bank_app/core/bloc/base_bloc.dart';
import 'package:mini_bank_app/features/settings/domain/usecases/theme_usecases.dart';

@singleton
class ThemeCubit extends BaseCubit<bool> {
  ThemeCubit(this._load, this._toggle) : super(false);
  final LoadTheme _load;
  final ToggleTheme _toggle;

  Future<void> init() async {
    final bool isDark = await _load();
    emit(isDark);
  }

  Future<void> setDark(bool value) async {
    await _toggle(value);
    emit(value);
  }
}


