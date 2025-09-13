import 'package:mini_bank_app/features/transactions/data/models/transaction_model.dart' as dto;
import 'package:mini_bank_app/features/transactions/domain/entities/transaction.dart' as domain;

extension TransactionMapper on dto.TransactionModel {
  domain.Transaction toDomain() => domain.Transaction(
        id: id,
        date: date,
        description: description,
        amount: amount,
        type: type == dto.TransactionType.credit
            ? domain.TransactionType.credit
            : domain.TransactionType.debit,
      );
}

extension TransactionDtoMapper on domain.Transaction {
  dto.TransactionModel toDto() => dto.TransactionModel(
        id: id,
        date: date,
        description: description,
        amount: amount,
        type: type == domain.TransactionType.credit
            ? dto.TransactionType.credit
            : dto.TransactionType.debit,
      );
}


