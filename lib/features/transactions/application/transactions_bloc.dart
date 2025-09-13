import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:mini_bank_app/core/constants/pagination.dart';
import 'package:mini_bank_app/features/transactions/domain/entities/transaction.dart' as domain;
import 'package:mini_bank_app/features/transactions/domain/usecases/get_recent_transactions.dart';
import 'package:mini_bank_app/features/transactions/domain/usecases/get_transactions_page.dart';
import 'package:mini_bank_app/features/transactions/domain/usecases/watch_transactions.dart';

import '../../../core/bloc/base_bloc.dart';
import '../domain/entities/transaction.dart';

part 'transactions_bloc.freezed.dart';

@freezed
class TransactionsEvent with _$TransactionsEvent {
  const factory TransactionsEvent.loadRecent() = _LoadRecent;
  const factory TransactionsEvent.loadPage(int page) = _LoadPage;
}

@freezed
class TransactionsState with _$TransactionsState {
  const factory TransactionsState.initial() = _Initial;
  const factory TransactionsState.loading() = _Loading;
  const factory TransactionsState.recentLoaded(List<domain.Transaction> items) = _RecentLoaded;
  const factory TransactionsState.pageLoaded({required List<domain.Transaction> items, required int page, required bool hasMore}) = _PageLoaded;
  const factory TransactionsState.failure(String message) = _Failure;

  bool isLoading () => this is _Loading;
}

@injectable
class TransactionsBloc extends BaseBloc<TransactionsEvent, TransactionsState> {
  TransactionsBloc(this._getRecent, this._getPage, this._watchTx) : super(const TransactionsState.initial()) {
    on<_LoadRecent>(_onLoadRecent);
    on<_LoadPage>(_onLoadPage);

    _watchTx().listen((_) {
      add(const TransactionsEvent.loadRecent());
    });
  }

  final GetRecentTransactions _getRecent;
  final GetTransactionsPage _getPage;
  final WatchTransactions _watchTx;

  Future<void> _onLoadRecent(_LoadRecent event, Emitter<TransactionsState> emit) async {
    emit(const TransactionsState.loading());
    final items = await _getRecent();
    emit(TransactionsState.recentLoaded(items));
  }

  Future<void> _onLoadPage(_LoadPage event, Emitter<TransactionsState> emit) async {
    emit(const TransactionsState.loading());
    final items = await _getPage(PageParams(page: event.page, pageSize: kTransactionsPageSize));
    final bool hasMore = items.length == kTransactionsPageSize;
    emit(TransactionsState.pageLoaded(items: items, page: event.page, hasMore: hasMore));
  }
}


