import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'transaction_model.freezed.dart';
part 'transaction_model.g.dart';

@HiveType(typeId: 5)
enum TransactionType {
  @HiveField(0)
  credit,
  @HiveField(1)
  debit,
}

@freezed
@HiveType(typeId: 3)
class TransactionModel with _$TransactionModel {
  const factory TransactionModel({
    @HiveField(0) required String id,
    @HiveField(1) required DateTime date,
    @HiveField(2) required String description,
    // Amount as positive magnitude, direction is defined by [type]
    @HiveField(3) required double amount,
    @HiveField(4) required TransactionType type,
  }) = _TransactionModel;
}


