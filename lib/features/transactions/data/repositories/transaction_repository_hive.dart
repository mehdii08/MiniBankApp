import 'package:injectable/injectable.dart';
import 'package:hive/hive.dart';
import 'package:mini_bank_app/core/constants/hive_boxes.dart';
import 'package:mini_bank_app/core/constants/pagination.dart';
import 'package:mini_bank_app/features/transactions/data/mappers/transaction_mapper.dart';
import 'package:mini_bank_app/features/transactions/data/models/transaction_model.dart' as dto;
import 'package:mini_bank_app/features/transactions/domain/entities/transaction.dart';
import 'package:mini_bank_app/features/transactions/domain/repositories/transaction_repository.dart';
import 'package:mini_bank_app/core/utils/either.dart';
import 'package:mini_bank_app/core/errors/failure.dart';

@LazySingleton(as: TransactionRepository)
class TransactionRepositoryHive implements TransactionRepository {
  TransactionRepositoryHive(this._hive);
  final HiveInterface _hive;

  List<dto.TransactionModel> _sortedAll() {
    final List<dto.TransactionModel> all = _hive.box(kTransactionsBox).values.cast<dto.TransactionModel>().toList();
    all.sort((a, b) => b.date.compareTo(a.date));
    return all;
  }

  @override
  Future<Either<Failure, List<Transaction>>> getRecent({int count = 5}) async {
    return Either<Failure, List<Transaction>>.right(
      _sortedAll().take(count).map((e) => e.toDomain()).toList(),
    );
  }

  @override
  Future<Either<Failure, List<Transaction>>> getPage({required int page, int pageSize = kTransactionsPageSize, String query = '', TransactionType? type}) async {
    List<dto.TransactionModel> all = _sortedAll();
    final String q = query.trim().toLowerCase();
    if (q.isNotEmpty) {
      all = all.where((m) => m.description.toLowerCase().contains(q)).toList();
    }
    if (type != null) {
      all = all.where((m) => m.type == (type == TransactionType.credit ? dto.TransactionType.credit : dto.TransactionType.debit)).toList();
    }
    final int start = (page - 1) * pageSize;
    if (start >= all.length) return const Either.left(Failure('No more items'));
    final int end = (start + pageSize).clamp(0, all.length);
    return Either<Failure, List<Transaction>>.right(
      all.sublist(start, end).map((e) => e.toDomain()).toList(),
    );
  }

  @override
  Future<Either<Failure, bool>> add(Transaction tx) async {
    await _hive.box(kTransactionsBox).put(tx.id, tx.toDto());
    return const Either.right(true);
  }

  @override
  Future<Either<Failure, int>> count() async {
    return Either<Failure, int>.right(_hive.box(kTransactionsBox).length);
  }

  @override
  Stream<void> watch() {
    return _hive.box(kTransactionsBox).watch().map((_) => null);
  }
}


