// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'remote_transactions_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RemoteTransactionsState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<Transaction> get items => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RemoteTransactionsStateCopyWith<RemoteTransactionsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoteTransactionsStateCopyWith<$Res> {
  factory $RemoteTransactionsStateCopyWith(RemoteTransactionsState value,
          $Res Function(RemoteTransactionsState) then) =
      _$RemoteTransactionsStateCopyWithImpl<$Res, RemoteTransactionsState>;
  @useResult
  $Res call({bool isLoading, List<Transaction> items, String? error});
}

/// @nodoc
class _$RemoteTransactionsStateCopyWithImpl<$Res,
        $Val extends RemoteTransactionsState>
    implements $RemoteTransactionsStateCopyWith<$Res> {
  _$RemoteTransactionsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? items = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Transaction>,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RemoteTransactionsStateImplCopyWith<$Res>
    implements $RemoteTransactionsStateCopyWith<$Res> {
  factory _$$RemoteTransactionsStateImplCopyWith(
          _$RemoteTransactionsStateImpl value,
          $Res Function(_$RemoteTransactionsStateImpl) then) =
      __$$RemoteTransactionsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, List<Transaction> items, String? error});
}

/// @nodoc
class __$$RemoteTransactionsStateImplCopyWithImpl<$Res>
    extends _$RemoteTransactionsStateCopyWithImpl<$Res,
        _$RemoteTransactionsStateImpl>
    implements _$$RemoteTransactionsStateImplCopyWith<$Res> {
  __$$RemoteTransactionsStateImplCopyWithImpl(
      _$RemoteTransactionsStateImpl _value,
      $Res Function(_$RemoteTransactionsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? items = null,
    Object? error = freezed,
  }) {
    return _then(_$RemoteTransactionsStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Transaction>,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$RemoteTransactionsStateImpl implements _RemoteTransactionsState {
  const _$RemoteTransactionsStateImpl(
      {this.isLoading = false,
      final List<Transaction> items = const <domain.Transaction>[],
      this.error})
      : _items = items;

  @override
  @JsonKey()
  final bool isLoading;
  final List<Transaction> _items;
  @override
  @JsonKey()
  List<Transaction> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final String? error;

  @override
  String toString() {
    return 'RemoteTransactionsState(isLoading: $isLoading, items: $items, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoteTransactionsStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading,
      const DeepCollectionEquality().hash(_items), error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoteTransactionsStateImplCopyWith<_$RemoteTransactionsStateImpl>
      get copyWith => __$$RemoteTransactionsStateImplCopyWithImpl<
          _$RemoteTransactionsStateImpl>(this, _$identity);
}

abstract class _RemoteTransactionsState implements RemoteTransactionsState {
  const factory _RemoteTransactionsState(
      {final bool isLoading,
      final List<Transaction> items,
      final String? error}) = _$RemoteTransactionsStateImpl;

  @override
  bool get isLoading;
  @override
  List<Transaction> get items;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$RemoteTransactionsStateImplCopyWith<_$RemoteTransactionsStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
