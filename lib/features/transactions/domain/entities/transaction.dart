import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction.freezed.dart';

enum TransactionType { credit, debit }

@freezed
class Transaction with _$Transaction {
  const factory Transaction({
    required String id,
    required DateTime date,
    required String description,
    required double amount, // positive magnitude
    required TransactionType type,
  }) = _Transaction;
}


