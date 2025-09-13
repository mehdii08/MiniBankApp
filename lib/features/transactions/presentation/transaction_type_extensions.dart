import 'package:mini_bank_app/features/transactions/domain/entities/transaction.dart' as domain;

extension TransactionTypeSign on domain.TransactionType {
  String get sign => this == domain.TransactionType.credit ? '+' : '-';
}


