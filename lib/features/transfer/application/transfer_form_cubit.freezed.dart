// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transfer_form_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TransferFormState {
  BeneficiaryNameInput get beneficiary => throw _privateConstructorUsedError;
  AccountNumberInput get accountNumber => throw _privateConstructorUsedError;
  AmountInput get amount => throw _privateConstructorUsedError;
  bool get isValid => throw _privateConstructorUsedError;
  SubmissionStatus get submissionStatus => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TransferFormStateCopyWith<TransferFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransferFormStateCopyWith<$Res> {
  factory $TransferFormStateCopyWith(
          TransferFormState value, $Res Function(TransferFormState) then) =
      _$TransferFormStateCopyWithImpl<$Res, TransferFormState>;
  @useResult
  $Res call(
      {BeneficiaryNameInput beneficiary,
      AccountNumberInput accountNumber,
      AmountInput amount,
      bool isValid,
      SubmissionStatus submissionStatus,
      String? error});
}

/// @nodoc
class _$TransferFormStateCopyWithImpl<$Res, $Val extends TransferFormState>
    implements $TransferFormStateCopyWith<$Res> {
  _$TransferFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? beneficiary = null,
    Object? accountNumber = null,
    Object? amount = null,
    Object? isValid = null,
    Object? submissionStatus = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      beneficiary: null == beneficiary
          ? _value.beneficiary
          : beneficiary // ignore: cast_nullable_to_non_nullable
              as BeneficiaryNameInput,
      accountNumber: null == accountNumber
          ? _value.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as AccountNumberInput,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as AmountInput,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
      submissionStatus: null == submissionStatus
          ? _value.submissionStatus
          : submissionStatus // ignore: cast_nullable_to_non_nullable
              as SubmissionStatus,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TransferFormStateImplCopyWith<$Res>
    implements $TransferFormStateCopyWith<$Res> {
  factory _$$TransferFormStateImplCopyWith(_$TransferFormStateImpl value,
          $Res Function(_$TransferFormStateImpl) then) =
      __$$TransferFormStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BeneficiaryNameInput beneficiary,
      AccountNumberInput accountNumber,
      AmountInput amount,
      bool isValid,
      SubmissionStatus submissionStatus,
      String? error});
}

/// @nodoc
class __$$TransferFormStateImplCopyWithImpl<$Res>
    extends _$TransferFormStateCopyWithImpl<$Res, _$TransferFormStateImpl>
    implements _$$TransferFormStateImplCopyWith<$Res> {
  __$$TransferFormStateImplCopyWithImpl(_$TransferFormStateImpl _value,
      $Res Function(_$TransferFormStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? beneficiary = null,
    Object? accountNumber = null,
    Object? amount = null,
    Object? isValid = null,
    Object? submissionStatus = null,
    Object? error = freezed,
  }) {
    return _then(_$TransferFormStateImpl(
      beneficiary: null == beneficiary
          ? _value.beneficiary
          : beneficiary // ignore: cast_nullable_to_non_nullable
              as BeneficiaryNameInput,
      accountNumber: null == accountNumber
          ? _value.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as AccountNumberInput,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as AmountInput,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
      submissionStatus: null == submissionStatus
          ? _value.submissionStatus
          : submissionStatus // ignore: cast_nullable_to_non_nullable
              as SubmissionStatus,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$TransferFormStateImpl implements _TransferFormState {
  const _$TransferFormStateImpl(
      {this.beneficiary = const BeneficiaryNameInput.pure(),
      this.accountNumber = const AccountNumberInput.pure(),
      this.amount = const AmountInput.pure(),
      this.isValid = false,
      this.submissionStatus = SubmissionStatus.pure,
      this.error});

  @override
  @JsonKey()
  final BeneficiaryNameInput beneficiary;
  @override
  @JsonKey()
  final AccountNumberInput accountNumber;
  @override
  @JsonKey()
  final AmountInput amount;
  @override
  @JsonKey()
  final bool isValid;
  @override
  @JsonKey()
  final SubmissionStatus submissionStatus;
  @override
  final String? error;

  @override
  String toString() {
    return 'TransferFormState(beneficiary: $beneficiary, accountNumber: $accountNumber, amount: $amount, isValid: $isValid, submissionStatus: $submissionStatus, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransferFormStateImpl &&
            (identical(other.beneficiary, beneficiary) ||
                other.beneficiary == beneficiary) &&
            (identical(other.accountNumber, accountNumber) ||
                other.accountNumber == accountNumber) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.isValid, isValid) || other.isValid == isValid) &&
            (identical(other.submissionStatus, submissionStatus) ||
                other.submissionStatus == submissionStatus) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, beneficiary, accountNumber,
      amount, isValid, submissionStatus, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransferFormStateImplCopyWith<_$TransferFormStateImpl> get copyWith =>
      __$$TransferFormStateImplCopyWithImpl<_$TransferFormStateImpl>(
          this, _$identity);
}

abstract class _TransferFormState implements TransferFormState {
  const factory _TransferFormState(
      {final BeneficiaryNameInput beneficiary,
      final AccountNumberInput accountNumber,
      final AmountInput amount,
      final bool isValid,
      final SubmissionStatus submissionStatus,
      final String? error}) = _$TransferFormStateImpl;

  @override
  BeneficiaryNameInput get beneficiary;
  @override
  AccountNumberInput get accountNumber;
  @override
  AmountInput get amount;
  @override
  bool get isValid;
  @override
  SubmissionStatus get submissionStatus;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$TransferFormStateImplCopyWith<_$TransferFormStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
