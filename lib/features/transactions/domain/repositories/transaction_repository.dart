import 'package:mini_bank_app/features/transactions/domain/entities/transaction.dart';
import 'package:mini_bank_app/core/constants/pagination.dart';

abstract interface class TransactionRepository {
  Future<List<Transaction>> getRecent({int count = 5});
  Future<List<Transaction>> getPage({required int page, int pageSize = kTransactionsPageSize});
  Future<void> add(Transaction tx);
  Future<int> count();
}


