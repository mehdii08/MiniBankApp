// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ui_action.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UiAction {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String location, Object? extra, bool replace)
        navigate,
    required TResult Function(String message) showSnackbar,
    required TResult Function(String title, String message, Object? payload)
        showDialog,
    required TResult Function(String title, String? message, Object? payload)
        showBottomSheet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String location, Object? extra, bool replace)? navigate,
    TResult? Function(String message)? showSnackbar,
    TResult? Function(String title, String message, Object? payload)?
        showDialog,
    TResult? Function(String title, String? message, Object? payload)?
        showBottomSheet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String location, Object? extra, bool replace)? navigate,
    TResult Function(String message)? showSnackbar,
    TResult Function(String title, String message, Object? payload)? showDialog,
    TResult Function(String title, String? message, Object? payload)?
        showBottomSheet,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Navigate value) navigate,
    required TResult Function(_ShowSnackbar value) showSnackbar,
    required TResult Function(_ShowDialog value) showDialog,
    required TResult Function(_ShowBottomSheet value) showBottomSheet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Navigate value)? navigate,
    TResult? Function(_ShowSnackbar value)? showSnackbar,
    TResult? Function(_ShowDialog value)? showDialog,
    TResult? Function(_ShowBottomSheet value)? showBottomSheet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Navigate value)? navigate,
    TResult Function(_ShowSnackbar value)? showSnackbar,
    TResult Function(_ShowDialog value)? showDialog,
    TResult Function(_ShowBottomSheet value)? showBottomSheet,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UiActionCopyWith<$Res> {
  factory $UiActionCopyWith(UiAction value, $Res Function(UiAction) then) =
      _$UiActionCopyWithImpl<$Res, UiAction>;
}

/// @nodoc
class _$UiActionCopyWithImpl<$Res, $Val extends UiAction>
    implements $UiActionCopyWith<$Res> {
  _$UiActionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$NavigateImplCopyWith<$Res> {
  factory _$$NavigateImplCopyWith(
          _$NavigateImpl value, $Res Function(_$NavigateImpl) then) =
      __$$NavigateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String location, Object? extra, bool replace});
}

/// @nodoc
class __$$NavigateImplCopyWithImpl<$Res>
    extends _$UiActionCopyWithImpl<$Res, _$NavigateImpl>
    implements _$$NavigateImplCopyWith<$Res> {
  __$$NavigateImplCopyWithImpl(
      _$NavigateImpl _value, $Res Function(_$NavigateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = null,
    Object? extra = freezed,
    Object? replace = null,
  }) {
    return _then(_$NavigateImpl(
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      extra: freezed == extra ? _value.extra : extra,
      replace: null == replace
          ? _value.replace
          : replace // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$NavigateImpl implements _Navigate {
  const _$NavigateImpl(
      {required this.location, this.extra, this.replace = false});

  @override
  final String location;
  @override
  final Object? extra;
  @override
  @JsonKey()
  final bool replace;

  @override
  String toString() {
    return 'UiAction.navigate(location: $location, extra: $extra, replace: $replace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NavigateImpl &&
            (identical(other.location, location) ||
                other.location == location) &&
            const DeepCollectionEquality().equals(other.extra, extra) &&
            (identical(other.replace, replace) || other.replace == replace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, location,
      const DeepCollectionEquality().hash(extra), replace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NavigateImplCopyWith<_$NavigateImpl> get copyWith =>
      __$$NavigateImplCopyWithImpl<_$NavigateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String location, Object? extra, bool replace)
        navigate,
    required TResult Function(String message) showSnackbar,
    required TResult Function(String title, String message, Object? payload)
        showDialog,
    required TResult Function(String title, String? message, Object? payload)
        showBottomSheet,
  }) {
    return navigate(location, extra, replace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String location, Object? extra, bool replace)? navigate,
    TResult? Function(String message)? showSnackbar,
    TResult? Function(String title, String message, Object? payload)?
        showDialog,
    TResult? Function(String title, String? message, Object? payload)?
        showBottomSheet,
  }) {
    return navigate?.call(location, extra, replace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String location, Object? extra, bool replace)? navigate,
    TResult Function(String message)? showSnackbar,
    TResult Function(String title, String message, Object? payload)? showDialog,
    TResult Function(String title, String? message, Object? payload)?
        showBottomSheet,
    required TResult orElse(),
  }) {
    if (navigate != null) {
      return navigate(location, extra, replace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Navigate value) navigate,
    required TResult Function(_ShowSnackbar value) showSnackbar,
    required TResult Function(_ShowDialog value) showDialog,
    required TResult Function(_ShowBottomSheet value) showBottomSheet,
  }) {
    return navigate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Navigate value)? navigate,
    TResult? Function(_ShowSnackbar value)? showSnackbar,
    TResult? Function(_ShowDialog value)? showDialog,
    TResult? Function(_ShowBottomSheet value)? showBottomSheet,
  }) {
    return navigate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Navigate value)? navigate,
    TResult Function(_ShowSnackbar value)? showSnackbar,
    TResult Function(_ShowDialog value)? showDialog,
    TResult Function(_ShowBottomSheet value)? showBottomSheet,
    required TResult orElse(),
  }) {
    if (navigate != null) {
      return navigate(this);
    }
    return orElse();
  }
}

abstract class _Navigate implements UiAction {
  const factory _Navigate(
      {required final String location,
      final Object? extra,
      final bool replace}) = _$NavigateImpl;

  String get location;
  Object? get extra;
  bool get replace;
  @JsonKey(ignore: true)
  _$$NavigateImplCopyWith<_$NavigateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShowSnackbarImplCopyWith<$Res> {
  factory _$$ShowSnackbarImplCopyWith(
          _$ShowSnackbarImpl value, $Res Function(_$ShowSnackbarImpl) then) =
      __$$ShowSnackbarImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ShowSnackbarImplCopyWithImpl<$Res>
    extends _$UiActionCopyWithImpl<$Res, _$ShowSnackbarImpl>
    implements _$$ShowSnackbarImplCopyWith<$Res> {
  __$$ShowSnackbarImplCopyWithImpl(
      _$ShowSnackbarImpl _value, $Res Function(_$ShowSnackbarImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ShowSnackbarImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ShowSnackbarImpl implements _ShowSnackbar {
  const _$ShowSnackbarImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'UiAction.showSnackbar(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowSnackbarImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowSnackbarImplCopyWith<_$ShowSnackbarImpl> get copyWith =>
      __$$ShowSnackbarImplCopyWithImpl<_$ShowSnackbarImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String location, Object? extra, bool replace)
        navigate,
    required TResult Function(String message) showSnackbar,
    required TResult Function(String title, String message, Object? payload)
        showDialog,
    required TResult Function(String title, String? message, Object? payload)
        showBottomSheet,
  }) {
    return showSnackbar(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String location, Object? extra, bool replace)? navigate,
    TResult? Function(String message)? showSnackbar,
    TResult? Function(String title, String message, Object? payload)?
        showDialog,
    TResult? Function(String title, String? message, Object? payload)?
        showBottomSheet,
  }) {
    return showSnackbar?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String location, Object? extra, bool replace)? navigate,
    TResult Function(String message)? showSnackbar,
    TResult Function(String title, String message, Object? payload)? showDialog,
    TResult Function(String title, String? message, Object? payload)?
        showBottomSheet,
    required TResult orElse(),
  }) {
    if (showSnackbar != null) {
      return showSnackbar(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Navigate value) navigate,
    required TResult Function(_ShowSnackbar value) showSnackbar,
    required TResult Function(_ShowDialog value) showDialog,
    required TResult Function(_ShowBottomSheet value) showBottomSheet,
  }) {
    return showSnackbar(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Navigate value)? navigate,
    TResult? Function(_ShowSnackbar value)? showSnackbar,
    TResult? Function(_ShowDialog value)? showDialog,
    TResult? Function(_ShowBottomSheet value)? showBottomSheet,
  }) {
    return showSnackbar?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Navigate value)? navigate,
    TResult Function(_ShowSnackbar value)? showSnackbar,
    TResult Function(_ShowDialog value)? showDialog,
    TResult Function(_ShowBottomSheet value)? showBottomSheet,
    required TResult orElse(),
  }) {
    if (showSnackbar != null) {
      return showSnackbar(this);
    }
    return orElse();
  }
}

abstract class _ShowSnackbar implements UiAction {
  const factory _ShowSnackbar({required final String message}) =
      _$ShowSnackbarImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ShowSnackbarImplCopyWith<_$ShowSnackbarImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShowDialogImplCopyWith<$Res> {
  factory _$$ShowDialogImplCopyWith(
          _$ShowDialogImpl value, $Res Function(_$ShowDialogImpl) then) =
      __$$ShowDialogImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String title, String message, Object? payload});
}

/// @nodoc
class __$$ShowDialogImplCopyWithImpl<$Res>
    extends _$UiActionCopyWithImpl<$Res, _$ShowDialogImpl>
    implements _$$ShowDialogImplCopyWith<$Res> {
  __$$ShowDialogImplCopyWithImpl(
      _$ShowDialogImpl _value, $Res Function(_$ShowDialogImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? message = null,
    Object? payload = freezed,
  }) {
    return _then(_$ShowDialogImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      payload: freezed == payload ? _value.payload : payload,
    ));
  }
}

/// @nodoc

class _$ShowDialogImpl implements _ShowDialog {
  const _$ShowDialogImpl(
      {required this.title, required this.message, this.payload});

  @override
  final String title;
  @override
  final String message;
  @override
  final Object? payload;

  @override
  String toString() {
    return 'UiAction.showDialog(title: $title, message: $message, payload: $payload)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowDialogImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other.payload, payload));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, message,
      const DeepCollectionEquality().hash(payload));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowDialogImplCopyWith<_$ShowDialogImpl> get copyWith =>
      __$$ShowDialogImplCopyWithImpl<_$ShowDialogImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String location, Object? extra, bool replace)
        navigate,
    required TResult Function(String message) showSnackbar,
    required TResult Function(String title, String message, Object? payload)
        showDialog,
    required TResult Function(String title, String? message, Object? payload)
        showBottomSheet,
  }) {
    return showDialog(title, message, payload);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String location, Object? extra, bool replace)? navigate,
    TResult? Function(String message)? showSnackbar,
    TResult? Function(String title, String message, Object? payload)?
        showDialog,
    TResult? Function(String title, String? message, Object? payload)?
        showBottomSheet,
  }) {
    return showDialog?.call(title, message, payload);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String location, Object? extra, bool replace)? navigate,
    TResult Function(String message)? showSnackbar,
    TResult Function(String title, String message, Object? payload)? showDialog,
    TResult Function(String title, String? message, Object? payload)?
        showBottomSheet,
    required TResult orElse(),
  }) {
    if (showDialog != null) {
      return showDialog(title, message, payload);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Navigate value) navigate,
    required TResult Function(_ShowSnackbar value) showSnackbar,
    required TResult Function(_ShowDialog value) showDialog,
    required TResult Function(_ShowBottomSheet value) showBottomSheet,
  }) {
    return showDialog(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Navigate value)? navigate,
    TResult? Function(_ShowSnackbar value)? showSnackbar,
    TResult? Function(_ShowDialog value)? showDialog,
    TResult? Function(_ShowBottomSheet value)? showBottomSheet,
  }) {
    return showDialog?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Navigate value)? navigate,
    TResult Function(_ShowSnackbar value)? showSnackbar,
    TResult Function(_ShowDialog value)? showDialog,
    TResult Function(_ShowBottomSheet value)? showBottomSheet,
    required TResult orElse(),
  }) {
    if (showDialog != null) {
      return showDialog(this);
    }
    return orElse();
  }
}

abstract class _ShowDialog implements UiAction {
  const factory _ShowDialog(
      {required final String title,
      required final String message,
      final Object? payload}) = _$ShowDialogImpl;

  String get title;
  String get message;
  Object? get payload;
  @JsonKey(ignore: true)
  _$$ShowDialogImplCopyWith<_$ShowDialogImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShowBottomSheetImplCopyWith<$Res> {
  factory _$$ShowBottomSheetImplCopyWith(_$ShowBottomSheetImpl value,
          $Res Function(_$ShowBottomSheetImpl) then) =
      __$$ShowBottomSheetImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String title, String? message, Object? payload});
}

/// @nodoc
class __$$ShowBottomSheetImplCopyWithImpl<$Res>
    extends _$UiActionCopyWithImpl<$Res, _$ShowBottomSheetImpl>
    implements _$$ShowBottomSheetImplCopyWith<$Res> {
  __$$ShowBottomSheetImplCopyWithImpl(
      _$ShowBottomSheetImpl _value, $Res Function(_$ShowBottomSheetImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? message = freezed,
    Object? payload = freezed,
  }) {
    return _then(_$ShowBottomSheetImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      payload: freezed == payload ? _value.payload : payload,
    ));
  }
}

/// @nodoc

class _$ShowBottomSheetImpl implements _ShowBottomSheet {
  const _$ShowBottomSheetImpl(
      {required this.title, this.message, this.payload});

  @override
  final String title;
  @override
  final String? message;
  @override
  final Object? payload;

  @override
  String toString() {
    return 'UiAction.showBottomSheet(title: $title, message: $message, payload: $payload)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowBottomSheetImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other.payload, payload));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, message,
      const DeepCollectionEquality().hash(payload));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowBottomSheetImplCopyWith<_$ShowBottomSheetImpl> get copyWith =>
      __$$ShowBottomSheetImplCopyWithImpl<_$ShowBottomSheetImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String location, Object? extra, bool replace)
        navigate,
    required TResult Function(String message) showSnackbar,
    required TResult Function(String title, String message, Object? payload)
        showDialog,
    required TResult Function(String title, String? message, Object? payload)
        showBottomSheet,
  }) {
    return showBottomSheet(title, message, payload);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String location, Object? extra, bool replace)? navigate,
    TResult? Function(String message)? showSnackbar,
    TResult? Function(String title, String message, Object? payload)?
        showDialog,
    TResult? Function(String title, String? message, Object? payload)?
        showBottomSheet,
  }) {
    return showBottomSheet?.call(title, message, payload);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String location, Object? extra, bool replace)? navigate,
    TResult Function(String message)? showSnackbar,
    TResult Function(String title, String message, Object? payload)? showDialog,
    TResult Function(String title, String? message, Object? payload)?
        showBottomSheet,
    required TResult orElse(),
  }) {
    if (showBottomSheet != null) {
      return showBottomSheet(title, message, payload);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Navigate value) navigate,
    required TResult Function(_ShowSnackbar value) showSnackbar,
    required TResult Function(_ShowDialog value) showDialog,
    required TResult Function(_ShowBottomSheet value) showBottomSheet,
  }) {
    return showBottomSheet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Navigate value)? navigate,
    TResult? Function(_ShowSnackbar value)? showSnackbar,
    TResult? Function(_ShowDialog value)? showDialog,
    TResult? Function(_ShowBottomSheet value)? showBottomSheet,
  }) {
    return showBottomSheet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Navigate value)? navigate,
    TResult Function(_ShowSnackbar value)? showSnackbar,
    TResult Function(_ShowDialog value)? showDialog,
    TResult Function(_ShowBottomSheet value)? showBottomSheet,
    required TResult orElse(),
  }) {
    if (showBottomSheet != null) {
      return showBottomSheet(this);
    }
    return orElse();
  }
}

abstract class _ShowBottomSheet implements UiAction {
  const factory _ShowBottomSheet(
      {required final String title,
      final String? message,
      final Object? payload}) = _$ShowBottomSheetImpl;

  String get title;
  String? get message;
  Object? get payload;
  @JsonKey(ignore: true)
  _$$ShowBottomSheetImplCopyWith<_$ShowBottomSheetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
