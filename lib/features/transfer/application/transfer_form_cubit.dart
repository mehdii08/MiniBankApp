import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:formz/formz.dart';
import 'package:injectable/injectable.dart';
import 'package:mini_bank_app/features/transfer/domain/entities/transfer_request.dart';
import 'package:mini_bank_app/features/transfer/domain/usecases/submit_transfer.dart';

part 'transfer_form_cubit.freezed.dart';

class BeneficiaryNameInput extends FormzInput<String, String> {
  const BeneficiaryNameInput.pure() : super.pure('');
  const BeneficiaryNameInput.dirty([String value = '']) : super.dirty(value);
  @override
  String? validator(String value) => value.trim().isEmpty ? 'Required' : null;
}

class AccountNumberInput extends FormzInput<String, String> {
  const AccountNumberInput.pure() : super.pure('');
  const AccountNumberInput.dirty([String value = '']) : super.dirty(value);
  @override
  String? validator(String value) => value.trim().length < 6 ? 'Invalid' : null;
}

class AmountInput extends FormzInput<String, String> {
  const AmountInput.pure() : super.pure('');
  const AmountInput.dirty([String value = '']) : super.dirty(value);
  @override
  String? validator(String value) {
    final double? v = double.tryParse(value);
    if (v == null || v <= 0) return 'Invalid';
    return null;
  }
}

@freezed
class TransferFormState with _$TransferFormState {
  const factory TransferFormState({
    @Default(BeneficiaryNameInput.pure()) BeneficiaryNameInput beneficiary,
    @Default(AccountNumberInput.pure()) AccountNumberInput accountNumber,
    @Default(AmountInput.pure()) AmountInput amount,
    @Default(false) bool isValid,
    @Default(SubmissionStatus.pure) SubmissionStatus submissionStatus,
    String? error,
  }) = _TransferFormState;
}

@injectable
class TransferFormCubit extends Cubit<TransferFormState> {
  TransferFormCubit(this._submit) : super(const TransferFormState());

  final SubmitTransfer _submit;

  void beneficiaryChanged(String v) {
    final next = state.copyWith(beneficiary: BeneficiaryNameInput.dirty(v));
    emit(next.copyWith(isValid: _validate(next)));
  }

  void accountNumberChanged(String v) {
    final next = state.copyWith(accountNumber: AccountNumberInput.dirty(v));
    emit(next.copyWith(isValid: _validate(next)));
  }

  void amountChanged(String v) {
    final next = state.copyWith(amount: AmountInput.dirty(v));
    emit(next.copyWith(isValid: _validate(next)));
  }

  Future<void> submit({required String accountId, required double currentBalance}) async {
    final bool valid = _validate(state);
    emit(state.copyWith(isValid: valid));
    if (!valid) return;
    final double amount = double.parse(state.amount.value);
    final newBalance = currentBalance - amount;
    if (newBalance < 0) {
      emit(state.copyWith(submissionStatus: SubmissionStatus.failure, error: 'Insufficient balance'));
      return;
    }
    final req = TransferRequest(
      beneficiaryName: state.beneficiary.value.trim(),
      accountNumber: state.accountNumber.value.trim(),
      amount: amount,
    );
    emit(state.copyWith(submissionStatus: SubmissionStatus.inProgress));
    await _submit(SubmitTransferParams(
      id: 'tx_${DateTime.now().microsecondsSinceEpoch}',
      accountId: accountId,
      newBalance: newBalance,
      request: req,
    ));
    emit(state.copyWith(submissionStatus: SubmissionStatus.success));
  }

  bool _validate(TransferFormState s) =>
      Formz.validate([s.beneficiary, s.accountNumber, s.amount]);
}

enum SubmissionStatus { pure, inProgress, success, failure }


