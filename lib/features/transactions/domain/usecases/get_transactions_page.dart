import 'package:injectable/injectable.dart';
import 'package:mini_bank_app/core/usecase/use_case.dart';
import 'package:mini_bank_app/features/transactions/domain/entities/transaction.dart';
import 'package:mini_bank_app/features/transactions/domain/repositories/transaction_repository.dart';
import 'package:mini_bank_app/core/utils/either.dart';
import 'package:mini_bank_app/core/errors/failure.dart';

@injectable
class GetTransactionsPage implements UseCase<Either<Failure, List<Transaction>>, PageParams> {
  GetTransactionsPage(this._repo);
  final TransactionRepository _repo;

  @override
  Future<Either<Failure, List<Transaction>>> call(PageParams params) =>
      _repo.getPage(page: params.page, pageSize: params.pageSize);
}

class PageParams {
  PageParams({required this.page, required this.pageSize});
  final int page;
  final int pageSize;
}


