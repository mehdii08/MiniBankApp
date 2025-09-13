import 'package:injectable/injectable.dart';
import 'package:hive/hive.dart';
import 'package:mini_bank_app/core/constants/hive_boxes.dart';
import 'package:mini_bank_app/core/constants/pagination.dart';
import 'package:mini_bank_app/features/transactions/data/mappers/transaction_mapper.dart';
import 'package:mini_bank_app/features/transactions/data/models/transaction_model.dart';
import 'package:mini_bank_app/features/transactions/domain/entities/transaction.dart';
import 'package:mini_bank_app/features/transactions/domain/repositories/transaction_repository.dart';

@LazySingleton(as: TransactionRepository)
class TransactionRepositoryHive implements TransactionRepository {
  TransactionRepositoryHive(this._hive);
  final HiveInterface _hive;

  List<TransactionModel> _sortedAll() {
    final List<TransactionModel> all = _hive.box(kTransactionsBox).values.cast<TransactionModel>().toList();
    all.sort((a, b) => b.date.compareTo(a.date));
    return all;
  }

  @override
  Future<List<Transaction>> getRecent({int count = 5}) async {
    return _sortedAll().take(count).map((e) => e.toDomain()).toList();
  }

  @override
  Future<List<Transaction>> getPage({required int page, int pageSize = kTransactionsPageSize}) async {
    final List<TransactionModel> all = _sortedAll();
    final int start = (page - 1) * pageSize;
    if (start >= all.length) return <Transaction>[];
    final int end = (start + pageSize).clamp(0, all.length);
    return all.sublist(start, end).map((e) => e.toDomain()).toList();
  }

  @override
  Future<void> add(Transaction tx) async {
    await _hive.box(kTransactionsBox).put(tx.id, tx.toDto());
  }

  @override
  Future<int> count() async {
    return _hive.box(kTransactionsBox).length;
  }

  @override
  Stream<void> watch() {
    return _hive.box(kTransactionsBox).watch().map((_) => null);
  }
}


