// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transfer_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TransferRequest {
  String get beneficiaryName => throw _privateConstructorUsedError;
  String get accountNumber => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TransferRequestCopyWith<TransferRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransferRequestCopyWith<$Res> {
  factory $TransferRequestCopyWith(
          TransferRequest value, $Res Function(TransferRequest) then) =
      _$TransferRequestCopyWithImpl<$Res, TransferRequest>;
  @useResult
  $Res call({String beneficiaryName, String accountNumber, double amount});
}

/// @nodoc
class _$TransferRequestCopyWithImpl<$Res, $Val extends TransferRequest>
    implements $TransferRequestCopyWith<$Res> {
  _$TransferRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? beneficiaryName = null,
    Object? accountNumber = null,
    Object? amount = null,
  }) {
    return _then(_value.copyWith(
      beneficiaryName: null == beneficiaryName
          ? _value.beneficiaryName
          : beneficiaryName // ignore: cast_nullable_to_non_nullable
              as String,
      accountNumber: null == accountNumber
          ? _value.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TransferRequestImplCopyWith<$Res>
    implements $TransferRequestCopyWith<$Res> {
  factory _$$TransferRequestImplCopyWith(_$TransferRequestImpl value,
          $Res Function(_$TransferRequestImpl) then) =
      __$$TransferRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String beneficiaryName, String accountNumber, double amount});
}

/// @nodoc
class __$$TransferRequestImplCopyWithImpl<$Res>
    extends _$TransferRequestCopyWithImpl<$Res, _$TransferRequestImpl>
    implements _$$TransferRequestImplCopyWith<$Res> {
  __$$TransferRequestImplCopyWithImpl(
      _$TransferRequestImpl _value, $Res Function(_$TransferRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? beneficiaryName = null,
    Object? accountNumber = null,
    Object? amount = null,
  }) {
    return _then(_$TransferRequestImpl(
      beneficiaryName: null == beneficiaryName
          ? _value.beneficiaryName
          : beneficiaryName // ignore: cast_nullable_to_non_nullable
              as String,
      accountNumber: null == accountNumber
          ? _value.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$TransferRequestImpl implements _TransferRequest {
  const _$TransferRequestImpl(
      {required this.beneficiaryName,
      required this.accountNumber,
      required this.amount});

  @override
  final String beneficiaryName;
  @override
  final String accountNumber;
  @override
  final double amount;

  @override
  String toString() {
    return 'TransferRequest(beneficiaryName: $beneficiaryName, accountNumber: $accountNumber, amount: $amount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransferRequestImpl &&
            (identical(other.beneficiaryName, beneficiaryName) ||
                other.beneficiaryName == beneficiaryName) &&
            (identical(other.accountNumber, accountNumber) ||
                other.accountNumber == accountNumber) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, beneficiaryName, accountNumber, amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransferRequestImplCopyWith<_$TransferRequestImpl> get copyWith =>
      __$$TransferRequestImplCopyWithImpl<_$TransferRequestImpl>(
          this, _$identity);
}

abstract class _TransferRequest implements TransferRequest {
  const factory _TransferRequest(
      {required final String beneficiaryName,
      required final String accountNumber,
      required final double amount}) = _$TransferRequestImpl;

  @override
  String get beneficiaryName;
  @override
  String get accountNumber;
  @override
  double get amount;
  @override
  @JsonKey(ignore: true)
  _$$TransferRequestImplCopyWith<_$TransferRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
