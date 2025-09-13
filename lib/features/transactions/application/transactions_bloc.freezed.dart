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
mixin _$TransactionsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadRecent,
    required TResult Function(int page) loadPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadRecent,
    TResult? Function(int page)? loadPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadRecent,
    TResult Function(int page)? loadPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadRecent value) loadRecent,
    required TResult Function(_LoadPage value) loadPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadRecent value)? loadRecent,
    TResult? Function(_LoadPage value)? loadPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadRecent value)? loadRecent,
    TResult Function(_LoadPage value)? loadPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionsEventCopyWith<$Res> {
  factory $TransactionsEventCopyWith(
          TransactionsEvent value, $Res Function(TransactionsEvent) then) =
      _$TransactionsEventCopyWithImpl<$Res, TransactionsEvent>;
}

/// @nodoc
class _$TransactionsEventCopyWithImpl<$Res, $Val extends TransactionsEvent>
    implements $TransactionsEventCopyWith<$Res> {
  _$TransactionsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadRecentImplCopyWith<$Res> {
  factory _$$LoadRecentImplCopyWith(
          _$LoadRecentImpl value, $Res Function(_$LoadRecentImpl) then) =
      __$$LoadRecentImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadRecentImplCopyWithImpl<$Res>
    extends _$TransactionsEventCopyWithImpl<$Res, _$LoadRecentImpl>
    implements _$$LoadRecentImplCopyWith<$Res> {
  __$$LoadRecentImplCopyWithImpl(
      _$LoadRecentImpl _value, $Res Function(_$LoadRecentImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadRecentImpl implements _LoadRecent {
  const _$LoadRecentImpl();

  @override
  String toString() {
    return 'TransactionsEvent.loadRecent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadRecentImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadRecent,
    required TResult Function(int page) loadPage,
  }) {
    return loadRecent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadRecent,
    TResult? Function(int page)? loadPage,
  }) {
    return loadRecent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadRecent,
    TResult Function(int page)? loadPage,
    required TResult orElse(),
  }) {
    if (loadRecent != null) {
      return loadRecent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadRecent value) loadRecent,
    required TResult Function(_LoadPage value) loadPage,
  }) {
    return loadRecent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadRecent value)? loadRecent,
    TResult? Function(_LoadPage value)? loadPage,
  }) {
    return loadRecent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadRecent value)? loadRecent,
    TResult Function(_LoadPage value)? loadPage,
    required TResult orElse(),
  }) {
    if (loadRecent != null) {
      return loadRecent(this);
    }
    return orElse();
  }
}

abstract class _LoadRecent implements TransactionsEvent {
  const factory _LoadRecent() = _$LoadRecentImpl;
}

/// @nodoc
abstract class _$$LoadPageImplCopyWith<$Res> {
  factory _$$LoadPageImplCopyWith(
          _$LoadPageImpl value, $Res Function(_$LoadPageImpl) then) =
      __$$LoadPageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int page});
}

/// @nodoc
class __$$LoadPageImplCopyWithImpl<$Res>
    extends _$TransactionsEventCopyWithImpl<$Res, _$LoadPageImpl>
    implements _$$LoadPageImplCopyWith<$Res> {
  __$$LoadPageImplCopyWithImpl(
      _$LoadPageImpl _value, $Res Function(_$LoadPageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
  }) {
    return _then(_$LoadPageImpl(
      null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$LoadPageImpl implements _LoadPage {
  const _$LoadPageImpl(this.page);

  @override
  final int page;

  @override
  String toString() {
    return 'TransactionsEvent.loadPage(page: $page)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadPageImpl &&
            (identical(other.page, page) || other.page == page));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadPageImplCopyWith<_$LoadPageImpl> get copyWith =>
      __$$LoadPageImplCopyWithImpl<_$LoadPageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadRecent,
    required TResult Function(int page) loadPage,
  }) {
    return loadPage(page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadRecent,
    TResult? Function(int page)? loadPage,
  }) {
    return loadPage?.call(page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadRecent,
    TResult Function(int page)? loadPage,
    required TResult orElse(),
  }) {
    if (loadPage != null) {
      return loadPage(page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadRecent value) loadRecent,
    required TResult Function(_LoadPage value) loadPage,
  }) {
    return loadPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadRecent value)? loadRecent,
    TResult? Function(_LoadPage value)? loadPage,
  }) {
    return loadPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadRecent value)? loadRecent,
    TResult Function(_LoadPage value)? loadPage,
    required TResult orElse(),
  }) {
    if (loadPage != null) {
      return loadPage(this);
    }
    return orElse();
  }
}

abstract class _LoadPage implements TransactionsEvent {
  const factory _LoadPage(final int page) = _$LoadPageImpl;

  int get page;
  @JsonKey(ignore: true)
  _$$LoadPageImplCopyWith<_$LoadPageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TransactionsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Transaction> items) recentLoaded,
    required TResult Function(List<Transaction> items, int page, bool hasMore)
        pageLoaded,
    required TResult Function(String message) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Transaction> items)? recentLoaded,
    TResult? Function(List<Transaction> items, int page, bool hasMore)?
        pageLoaded,
    TResult? Function(String message)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Transaction> items)? recentLoaded,
    TResult Function(List<Transaction> items, int page, bool hasMore)?
        pageLoaded,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_RecentLoaded value) recentLoaded,
    required TResult Function(_PageLoaded value) pageLoaded,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_RecentLoaded value)? recentLoaded,
    TResult? Function(_PageLoaded value)? pageLoaded,
    TResult? Function(_Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_RecentLoaded value)? recentLoaded,
    TResult Function(_PageLoaded value)? pageLoaded,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionsStateCopyWith<$Res> {
  factory $TransactionsStateCopyWith(
          TransactionsState value, $Res Function(TransactionsState) then) =
      _$TransactionsStateCopyWithImpl<$Res, TransactionsState>;
}

/// @nodoc
class _$TransactionsStateCopyWithImpl<$Res, $Val extends TransactionsState>
    implements $TransactionsStateCopyWith<$Res> {
  _$TransactionsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$TransactionsStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  bool isLoading () => false;

  @override
  String toString() {
    return 'TransactionsState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Transaction> items) recentLoaded,
    required TResult Function(List<Transaction> items, int page, bool hasMore)
        pageLoaded,
    required TResult Function(String message) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Transaction> items)? recentLoaded,
    TResult? Function(List<Transaction> items, int page, bool hasMore)?
        pageLoaded,
    TResult? Function(String message)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Transaction> items)? recentLoaded,
    TResult Function(List<Transaction> items, int page, bool hasMore)?
        pageLoaded,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_RecentLoaded value) recentLoaded,
    required TResult Function(_PageLoaded value) pageLoaded,
    required TResult Function(_Failure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_RecentLoaded value)? recentLoaded,
    TResult? Function(_PageLoaded value)? pageLoaded,
    TResult? Function(_Failure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_RecentLoaded value)? recentLoaded,
    TResult Function(_PageLoaded value)? pageLoaded,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements TransactionsState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$TransactionsStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  bool isLoading () => true;

  @override
  String toString() {
    return 'TransactionsState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Transaction> items) recentLoaded,
    required TResult Function(List<Transaction> items, int page, bool hasMore)
        pageLoaded,
    required TResult Function(String message) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Transaction> items)? recentLoaded,
    TResult? Function(List<Transaction> items, int page, bool hasMore)?
        pageLoaded,
    TResult? Function(String message)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Transaction> items)? recentLoaded,
    TResult Function(List<Transaction> items, int page, bool hasMore)?
        pageLoaded,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_RecentLoaded value) recentLoaded,
    required TResult Function(_PageLoaded value) pageLoaded,
    required TResult Function(_Failure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_RecentLoaded value)? recentLoaded,
    TResult? Function(_PageLoaded value)? pageLoaded,
    TResult? Function(_Failure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_RecentLoaded value)? recentLoaded,
    TResult Function(_PageLoaded value)? pageLoaded,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements TransactionsState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$RecentLoadedImplCopyWith<$Res> {
  factory _$$RecentLoadedImplCopyWith(
          _$RecentLoadedImpl value, $Res Function(_$RecentLoadedImpl) then) =
      __$$RecentLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Transaction> items});
}

/// @nodoc
class __$$RecentLoadedImplCopyWithImpl<$Res>
    extends _$TransactionsStateCopyWithImpl<$Res, _$RecentLoadedImpl>
    implements _$$RecentLoadedImplCopyWith<$Res> {
  __$$RecentLoadedImplCopyWithImpl(
      _$RecentLoadedImpl _value, $Res Function(_$RecentLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_$RecentLoadedImpl(
      null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Transaction>,
    ));
  }
}

/// @nodoc

class _$RecentLoadedImpl implements _RecentLoaded {
  const _$RecentLoadedImpl(final List<Transaction> items) : _items = items;

  bool isLoading () => false;

  final List<Transaction> _items;
  @override
  List<Transaction> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'TransactionsState.recentLoaded(items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecentLoadedImpl &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecentLoadedImplCopyWith<_$RecentLoadedImpl> get copyWith =>
      __$$RecentLoadedImplCopyWithImpl<_$RecentLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Transaction> items) recentLoaded,
    required TResult Function(List<Transaction> items, int page, bool hasMore)
        pageLoaded,
    required TResult Function(String message) failure,
  }) {
    return recentLoaded(items);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Transaction> items)? recentLoaded,
    TResult? Function(List<Transaction> items, int page, bool hasMore)?
        pageLoaded,
    TResult? Function(String message)? failure,
  }) {
    return recentLoaded?.call(items);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Transaction> items)? recentLoaded,
    TResult Function(List<Transaction> items, int page, bool hasMore)?
        pageLoaded,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (recentLoaded != null) {
      return recentLoaded(items);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_RecentLoaded value) recentLoaded,
    required TResult Function(_PageLoaded value) pageLoaded,
    required TResult Function(_Failure value) failure,
  }) {
    return recentLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_RecentLoaded value)? recentLoaded,
    TResult? Function(_PageLoaded value)? pageLoaded,
    TResult? Function(_Failure value)? failure,
  }) {
    return recentLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_RecentLoaded value)? recentLoaded,
    TResult Function(_PageLoaded value)? pageLoaded,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (recentLoaded != null) {
      return recentLoaded(this);
    }
    return orElse();
  }
}

abstract class _RecentLoaded implements TransactionsState {
  const factory _RecentLoaded(final List<Transaction> items) =
      _$RecentLoadedImpl;

  List<Transaction> get items;
  @JsonKey(ignore: true)
  _$$RecentLoadedImplCopyWith<_$RecentLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PageLoadedImplCopyWith<$Res> {
  factory _$$PageLoadedImplCopyWith(
          _$PageLoadedImpl value, $Res Function(_$PageLoadedImpl) then) =
      __$$PageLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Transaction> items, int page, bool hasMore});
}

/// @nodoc
class __$$PageLoadedImplCopyWithImpl<$Res>
    extends _$TransactionsStateCopyWithImpl<$Res, _$PageLoadedImpl>
    implements _$$PageLoadedImplCopyWith<$Res> {
  __$$PageLoadedImplCopyWithImpl(
      _$PageLoadedImpl _value, $Res Function(_$PageLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? page = null,
    Object? hasMore = null,
  }) {
    return _then(_$PageLoadedImpl(
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
    ));
  }
}

/// @nodoc

class _$PageLoadedImpl implements _PageLoaded {
  const _$PageLoadedImpl(
      {required final List<Transaction> items,
      required this.page,
      required this.hasMore})
      : _items = items;

  bool isLoading () => false;

  final List<Transaction> _items;
  @override
  List<Transaction> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final int page;
  @override
  final bool hasMore;

  @override
  String toString() {
    return 'TransactionsState.pageLoaded(items: $items, page: $page, hasMore: $hasMore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PageLoadedImpl &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.hasMore, hasMore) || other.hasMore == hasMore));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_items), page, hasMore);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PageLoadedImplCopyWith<_$PageLoadedImpl> get copyWith =>
      __$$PageLoadedImplCopyWithImpl<_$PageLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Transaction> items) recentLoaded,
    required TResult Function(List<Transaction> items, int page, bool hasMore)
        pageLoaded,
    required TResult Function(String message) failure,
  }) {
    return pageLoaded(items, page, hasMore);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Transaction> items)? recentLoaded,
    TResult? Function(List<Transaction> items, int page, bool hasMore)?
        pageLoaded,
    TResult? Function(String message)? failure,
  }) {
    return pageLoaded?.call(items, page, hasMore);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Transaction> items)? recentLoaded,
    TResult Function(List<Transaction> items, int page, bool hasMore)?
        pageLoaded,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (pageLoaded != null) {
      return pageLoaded(items, page, hasMore);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_RecentLoaded value) recentLoaded,
    required TResult Function(_PageLoaded value) pageLoaded,
    required TResult Function(_Failure value) failure,
  }) {
    return pageLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_RecentLoaded value)? recentLoaded,
    TResult? Function(_PageLoaded value)? pageLoaded,
    TResult? Function(_Failure value)? failure,
  }) {
    return pageLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_RecentLoaded value)? recentLoaded,
    TResult Function(_PageLoaded value)? pageLoaded,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (pageLoaded != null) {
      return pageLoaded(this);
    }
    return orElse();
  }
}

abstract class _PageLoaded implements TransactionsState {
  const factory _PageLoaded(
      {required final List<Transaction> items,
      required final int page,
      required final bool hasMore}) = _$PageLoadedImpl;

  List<Transaction> get items;
  int get page;
  bool get hasMore;
  @JsonKey(ignore: true)
  _$$PageLoadedImplCopyWith<_$PageLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureImplCopyWith<$Res> {
  factory _$$FailureImplCopyWith(
          _$FailureImpl value, $Res Function(_$FailureImpl) then) =
      __$$FailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$FailureImplCopyWithImpl<$Res>
    extends _$TransactionsStateCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl _value, $Res Function(_$FailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$FailureImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailureImpl implements _Failure {
  const _$FailureImpl(this.message);

  @override
  final String message;

  bool isLoading () => false;

  @override
  String toString() {
    return 'TransactionsState.failure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      __$$FailureImplCopyWithImpl<_$FailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Transaction> items) recentLoaded,
    required TResult Function(List<Transaction> items, int page, bool hasMore)
        pageLoaded,
    required TResult Function(String message) failure,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Transaction> items)? recentLoaded,
    TResult? Function(List<Transaction> items, int page, bool hasMore)?
        pageLoaded,
    TResult? Function(String message)? failure,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Transaction> items)? recentLoaded,
    TResult Function(List<Transaction> items, int page, bool hasMore)?
        pageLoaded,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_RecentLoaded value) recentLoaded,
    required TResult Function(_PageLoaded value) pageLoaded,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_RecentLoaded value)? recentLoaded,
    TResult? Function(_PageLoaded value)? pageLoaded,
    TResult? Function(_Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_RecentLoaded value)? recentLoaded,
    TResult Function(_PageLoaded value)? pageLoaded,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements TransactionsState {
  const factory _Failure(final String message) = _$FailureImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
