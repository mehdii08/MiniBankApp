import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'settings_model.freezed.dart';
part 'settings_model.g.dart';

@freezed
@HiveType(typeId: 4)
class SettingsModel with _$SettingsModel {
  const factory SettingsModel({
    @HiveField(0) required bool isDarkMode,
  }) = _SettingsModel;
}


