import 'package:injectable/injectable.dart';
import 'package:mini_bank_app/core/usecase/use_case.dart';
import 'package:mini_bank_app/features/account/domain/repositories/account_repository.dart';
import 'package:mini_bank_app/features/transactions/domain/entities/transaction.dart';
import 'package:mini_bank_app/features/transactions/domain/repositories/transaction_repository.dart';
import 'package:mini_bank_app/features/transfer/domain/entities/transfer_request.dart';

@injectable
class SubmitTransfer implements UseCase<void, SubmitTransferParams> {
  SubmitTransfer(this._transactions, this._accounts);
  final TransactionRepository _transactions;
  final AccountRepository _accounts;

  @override
  Future<void> call(SubmitTransferParams params) async {
    // Add a debit transaction and update account balance
    final Transaction tx = Transaction(
      id: params.id,
      date: DateTime.now(),
      description: 'Transfer to ${params.request.beneficiaryName}',
      amount: params.request.amount,
      type: TransactionType.debit,
    );
    await _transactions.add(tx);
    await _accounts.updateBalance(params.accountId, params.newBalance);
  }
}

class SubmitTransferParams {
  SubmitTransferParams({
    required this.id,
    required this.accountId,
    required this.newBalance,
    required this.request,
  });
  final String id;
  final String accountId;
  final double newBalance;
  final TransferRequest request;
}


