// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transactions_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TransactionsState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<Transaction> get recentItems => throw _privateConstructorUsedError;
  List<Transaction> get items => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  bool get hasMore => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  String get query => throw _privateConstructorUsedError;
  domain.TransactionType? get selectedType =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TransactionsStateCopyWith<TransactionsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionsStateCopyWith<$Res> {
  factory $TransactionsStateCopyWith(
          TransactionsState value, $Res Function(TransactionsState) then) =
      _$TransactionsStateCopyWithImpl<$Res, TransactionsState>;
  @useResult
  $Res call(
      {bool isLoading,
      List<Transaction> recentItems,
      List<Transaction> items,
      int page,
      bool hasMore,
      String? error,
      String query,
      domain.TransactionType? selectedType});
}

/// @nodoc
class _$TransactionsStateCopyWithImpl<$Res, $Val extends TransactionsState>
    implements $TransactionsStateCopyWith<$Res> {
  _$TransactionsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? recentItems = null,
    Object? items = null,
    Object? page = null,
    Object? hasMore = null,
    Object? error = freezed,
    Object? query = null,
    Object? selectedType = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      recentItems: null == recentItems
          ? _value.recentItems
          : recentItems // ignore: cast_nullable_to_non_nullable
              as List<Transaction>,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Transaction>,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      selectedType: freezed == selectedType
          ? _value.selectedType
          : selectedType // ignore: cast_nullable_to_non_nullable
              as domain.TransactionType?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TransactionsStateImplCopyWith<$Res>
    implements $TransactionsStateCopyWith<$Res> {
  factory _$$TransactionsStateImplCopyWith(_$TransactionsStateImpl value,
          $Res Function(_$TransactionsStateImpl) then) =
      __$$TransactionsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      List<Transaction> recentItems,
      List<Transaction> items,
      int page,
      bool hasMore,
      String? error,
      String query,
      domain.TransactionType? selectedType});
}

/// @nodoc
class __$$TransactionsStateImplCopyWithImpl<$Res>
    extends _$TransactionsStateCopyWithImpl<$Res, _$TransactionsStateImpl>
    implements _$$TransactionsStateImplCopyWith<$Res> {
  __$$TransactionsStateImplCopyWithImpl(_$TransactionsStateImpl _value,
      $Res Function(_$TransactionsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? recentItems = null,
    Object? items = null,
    Object? page = null,
    Object? hasMore = null,
    Object? error = freezed,
    Object? query = null,
    Object? selectedType = freezed,
  }) {
    return _then(_$TransactionsStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      recentItems: null == recentItems
          ? _value._recentItems
          : recentItems // ignore: cast_nullable_to_non_nullable
              as List<Transaction>,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Transaction>,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      selectedType: freezed == selectedType
          ? _value.selectedType
          : selectedType // ignore: cast_nullable_to_non_nullable
              as domain.TransactionType?,
    ));
  }
}

/// @nodoc

class _$TransactionsStateImpl implements _TransactionsState {
  const _$TransactionsStateImpl(
      {this.isLoading = false,
      final List<Transaction> recentItems = const <domain.Transaction>[],
      final List<Transaction> items = const <domain.Transaction>[],
      this.page = 1,
      this.hasMore = true,
      this.error,
      this.query = '',
      this.selectedType})
      : _recentItems = recentItems,
        _items = items;

  @override
  @JsonKey()
  final bool isLoading;
  final List<Transaction> _recentItems;
  @override
  @JsonKey()
  List<Transaction> get recentItems {
    if (_recentItems is EqualUnmodifiableListView) return _recentItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recentItems);
  }

  final List<Transaction> _items;
  @override
  @JsonKey()
  List<Transaction> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  @JsonKey()
  final int page;
  @override
  @JsonKey()
  final bool hasMore;
  @override
  final String? error;
  @override
  @JsonKey()
  final String query;
  @override
  final domain.TransactionType? selectedType;

  @override
  String toString() {
    return 'TransactionsState(isLoading: $isLoading, recentItems: $recentItems, items: $items, page: $page, hasMore: $hasMore, error: $error, query: $query, selectedType: $selectedType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionsStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality()
                .equals(other._recentItems, _recentItems) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.hasMore, hasMore) || other.hasMore == hasMore) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.selectedType, selectedType) ||
                other.selectedType == selectedType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      const DeepCollectionEquality().hash(_recentItems),
      const DeepCollectionEquality().hash(_items),
      page,
      hasMore,
      error,
      query,
      selectedType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionsStateImplCopyWith<_$TransactionsStateImpl> get copyWith =>
      __$$TransactionsStateImplCopyWithImpl<_$TransactionsStateImpl>(
          this, _$identity);
}

abstract class _TransactionsState implements TransactionsState {
  const factory _TransactionsState(
      {final bool isLoading,
      final List<Transaction> recentItems,
      final List<Transaction> items,
      final int page,
      final bool hasMore,
      final String? error,
      final String query,
      final domain.TransactionType? selectedType}) = _$TransactionsStateImpl;

  @override
  bool get isLoading;
  @override
  List<Transaction> get recentItems;
  @override
  List<Transaction> get items;
  @override
  int get page;
  @override
  bool get hasMore;
  @override
  String? get error;
  @override
  String get query;
  @override
  domain.TransactionType? get selectedType;
  @override
  @JsonKey(ignore: true)
  _$$TransactionsStateImplCopyWith<_$TransactionsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
