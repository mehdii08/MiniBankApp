import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:formz/formz.dart';
import 'package:injectable/injectable.dart';
import 'package:mini_bank_app/core/bloc/base_bloc.dart';
import 'package:mini_bank_app/core/bloc/ui_action.dart';
import 'package:mini_bank_app/core/constants/messages.dart';
import 'package:mini_bank_app/core/router/routes.dart';
import 'package:mini_bank_app/core/utils/string_validators.dart';
import 'package:mini_bank_app/features/transfer/domain/entities/transfer_request.dart';
import 'package:mini_bank_app/features/transfer/domain/usecases/submit_transfer.dart';

import '../../account/domain/usecases/get_balance.dart';

part 'transfer_form_cubit.freezed.dart';

@freezed
class TransferFormState with _$TransferFormState {
  const factory TransferFormState({
    @Default('') String beneficiary,
    @Default('') String accountNumber,
    @Default('') String amount,
    @Default(null) String? beneficiaryError,
    @Default(null) String? accountNumberError,
    @Default(null) String? amountError,
    @Default(false) bool isValid,
    @Default(SubmissionStatus.pure) SubmissionStatus submissionStatus,
    String? error,
  }) = _TransferFormState;
}

@injectable
class TransferFormCubit extends BaseCubit<TransferFormState> {
  TransferFormCubit(this._submit, this._getBalance) : super(const TransferFormState());

  final SubmitTransfer _submit;
  final GetBalance _getBalance;

  void beneficiaryChanged(String v) {
    emit(state.copyWith(beneficiary: v));
  }

  void accountNumberChanged(String v) {
    emit(state.copyWith(accountNumber: v));
  }

  void amountChanged(String v) {
    emit(state.copyWith(amount: v));
  }

  void _clearErrors(){
    emit(
      state.copyWith(
        beneficiaryError : null,
        accountNumberError : null,
        amountError : null,
      )
    );
  }

  Future<void> submit() async {
    final balRes = await _getBalance();
    if (balRes.isLeft) {
      emitAction(UiAction.showSnackbar(message: balRes.left.message));
      return;
    }
    final currentBalance = balRes.right;


    if (state.submissionStatus == SubmissionStatus.inProgress) return;
    _clearErrors();
    int errorCount = 0;
    if(state.beneficiary.isEmpty){
      errorCount += 1;
      emit(state.copyWith(beneficiaryError: 'Beneficiary name is required'));
    }
    if(state.accountNumber.isEmpty){
      errorCount += 1;
      emit(state.copyWith(accountNumberError: 'Account Number is required'));
    }
    if(!state.amount.isValidAmount){
      errorCount += 1;
      emit(state.copyWith(amountError: 'Enter a valid amount'));
    }
    if(errorCount > 0) return;

    final double amount = double.parse(state.amount);
    final newBalance = currentBalance - amount;
    if (newBalance < 0) {
      emit(state.copyWith(submissionStatus: SubmissionStatus.failure, error: 'Insufficient balance'));
      emitAction(const UiAction.showSnackbar(message: 'Insufficient balance'));
      return;
    }
    final req = TransferRequest(
      beneficiaryName: state.beneficiary.trim(),
      accountNumber: state.accountNumber.trim(),
      amount: amount,
    );
    emit(state.copyWith(submissionStatus: SubmissionStatus.inProgress));
    final res = await _submit(SubmitTransferParams(
      id: 'tx_${DateTime.now().microsecondsSinceEpoch}',
      newBalance: newBalance,
      request: req,
    ));
    res.fold((l) {
      emit(state.copyWith(submissionStatus: SubmissionStatus.failure, error: l.message));
      emitAction(UiAction.showSnackbar(message: l.message));
    }, (r) {
      emit(state.copyWith(submissionStatus: SubmissionStatus.success));
      emitAction(const UiAction.showSnackbar(message: 'Transfer successful'));
      emitAction(UiAction.pop());
    });
  }

}

enum SubmissionStatus { pure, inProgress, success, failure }


