import 'package:freezed_annotation/freezed_annotation.dart';

part 'ui_action.freezed.dart';

@freezed
class UiAction with _$UiAction {
  const factory UiAction.navigate({
    required String location,
    Object? extra,
    @Default(false) bool replace,
  }) = _Navigate;

  const factory UiAction.showSnackbar({
    required String message,
  }) = _ShowSnackbar;

  const factory UiAction.showDialog({
    required String title,
    required String message,
    Object? payload,
  }) = _ShowDialog;

  const factory UiAction.showBottomSheet({
    required String title,
    String? message,
    Object? payload,
  }) = _ShowBottomSheet;
}


