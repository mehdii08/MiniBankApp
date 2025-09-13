import 'package:injectable/injectable.dart';
import 'package:mini_bank_app/core/usecase/use_case.dart';
import 'package:mini_bank_app/features/account/domain/repositories/account_repository.dart';
import 'package:mini_bank_app/features/transactions/domain/entities/transaction.dart';
import 'package:mini_bank_app/features/transactions/domain/repositories/transaction_repository.dart';
import 'package:mini_bank_app/features/transfer/domain/entities/transfer_request.dart';
import 'package:mini_bank_app/core/utils/either.dart';
import 'package:mini_bank_app/core/errors/failure.dart';

@injectable
class SubmitTransfer implements UseCase<Either<Failure, bool>, SubmitTransferParams> {
  SubmitTransfer(this._transactions, this._accounts);
  final TransactionRepository _transactions;
  final AccountRepository _accounts;

  @override
  Future<Either<Failure, bool>> call(SubmitTransferParams params) async {
    // Add a debit transaction and update account balance
    final Transaction tx = Transaction(
      id: params.id,
      date: DateTime.now(),
      description: 'Transfer to ${params.request.beneficiaryName}',
      amount: params.request.amount,
      type: TransactionType.debit,
    );
    final r1 = await _transactions.add(tx);
    final r2 = await _accounts.updateBalance(params.newBalance);
    if (r1.isLeft) return Either.left(r1.left);
    if (r2.isLeft) return Either.left(r2.left);
    return const Either.right(true);
  }
}

class SubmitTransferParams {
  SubmitTransferParams({
    required this.id,
    required this.newBalance,
    required this.request,
  });
  final String id;
  final double newBalance;
  final TransferRequest request;
}


