import 'package:injectable/injectable.dart';
import 'package:mini_bank_app/core/errors/failure.dart';
import 'package:mini_bank_app/core/errors/network_exceptions.dart';
import 'package:mini_bank_app/core/utils/api_helper.dart';
import 'package:mini_bank_app/core/utils/either.dart';
import 'package:mini_bank_app/core/constants/api.dart';
import 'package:mini_bank_app/features/transactions/domain/entities/transaction.dart' as domain;
import 'package:mini_bank_app/features/transactions/domain/repositories/remote_transactions_repository.dart';
import 'package:mini_bank_app/i18n/strings.g.dart';

@LazySingleton(as: RemoteTransactionsRepository)
class RemoteTransactionsRepositoryImpl implements RemoteTransactionsRepository {
  RemoteTransactionsRepositoryImpl(this._api);
  final ApiHelper _api;

  @override
  Future<Either<Failure, List<domain.Transaction>>> getAll() async {
    try {
      final res = await _api.get(ApiConstants.transactions);
      final int? status = res.statusCode;
      if (status == 200) {
        final data = res.data as List<dynamic>;
        final List<domain.Transaction> items = data.map((e) => _mapJsonToTransaction(e as Map<String, dynamic>)).toList();
        return Either<Failure, List<domain.Transaction>>.right(items);
      }
      return Either<Failure, List<domain.Transaction>>.left(Failure(t.unexpectedStatusCode + ': ' + (status?.toString() ?? 'null')));
    } on ClientErrorException catch (e) {
      return Either<Failure, List<domain.Transaction>>.left(Failure(e.message, cause: e));
    } on ServerErrorException catch (e) {
      return Either<Failure, List<domain.Transaction>>.left(Failure(e.message, cause: e));
    } on ConnectivityException catch (e) {
      return Either<Failure, List<domain.Transaction>>.left(Failure(e.message, cause: e));
    } on NetworkException catch (e) {
      return Either<Failure, List<domain.Transaction>>.left(Failure(e.message, cause: e));
    } catch (e) {
      return Either<Failure, List<domain.Transaction>>.left(Failure(t.unexpectedError, cause: e));
    }
  }

  domain.Transaction _mapJsonToTransaction(Map<String, dynamic> json) {
    return domain.Transaction(
      id: json['id']?.toString() ?? '',
      date: DateTime.parse(json['date'].toString()),
      description: json['description'] as String? ?? '',
      amount: (json['amount'] as num?)?.toDouble() ?? 0.0,
      type: ((json['type'] as String?) ?? 'debit').toLowerCase() == 'credit' ? domain.TransactionType.credit : domain.TransactionType.debit,
    );
  }
}




