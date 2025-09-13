import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:mini_bank_app/core/constants/pagination.dart';
import 'package:mini_bank_app/features/transactions/domain/entities/transaction.dart' as domain;
import 'package:mini_bank_app/features/transactions/domain/usecases/get_recent_transactions.dart';
import 'package:mini_bank_app/features/transactions/domain/usecases/get_transactions_page.dart';
import 'package:mini_bank_app/features/transactions/domain/usecases/watch_transactions.dart';

import '../../../core/bloc/base_bloc.dart';

part 'transactions_bloc.freezed.dart';

abstract class TransactionsEvent {
  const TransactionsEvent();
}

class LoadRecent extends TransactionsEvent {
  const LoadRecent();
}

class LoadNext extends TransactionsEvent {
  const LoadNext();
}

class Restart extends TransactionsEvent {
  const Restart();
}

class UpdateQuery extends TransactionsEvent {
  const UpdateQuery(this.query);
  final String query;
}

class UpdateType extends TransactionsEvent {
  const UpdateType(this.type);
  final domain.TransactionType? type; // null = all
}

@freezed
class TransactionsState with _$TransactionsState {
  const factory TransactionsState({
    @Default(false) bool isLoading,
    @Default(<domain.Transaction>[]) List<domain.Transaction> recentItems,
    @Default(<domain.Transaction>[]) List<domain.Transaction> items,
    @Default(1) int page,
    @Default(true) bool hasMore,
    String? error,
    @Default('') String query,
    domain.TransactionType? selectedType,
  }) = _TransactionsState;
}

@injectable
class TransactionsBloc extends BaseBloc<TransactionsEvent, TransactionsState> {
  TransactionsBloc(this._getRecent, this._getPage, this._watchTx) : super(const TransactionsState()) {
    on<LoadRecent>(_onLoadRecent);
    on<LoadNext>(_onLoadNext);
    on<Restart>(_onRestart);
    on<UpdateQuery>(_onUpdateQuery);
    on<UpdateType>(_onUpdateType);

    _watchTx().listen((_) {
      add(const LoadRecent());
    });

    add(LoadNext());

  }

  final GetRecentTransactions _getRecent;
  final GetTransactionsPage _getPage;
  final WatchTransactions _watchTx;

  Future<void> _onLoadRecent(LoadRecent event, Emitter<TransactionsState> emit) async {
    emit(state.copyWith(isLoading: true, error: null));
    final res = await _getRecent();
    res.fold(
      (l) => emit(state.copyWith(isLoading: false, error: l.message)),
      (r) => emit(state.copyWith(isLoading: false, recentItems: r)),
    );
  }

  Future<void> _onRestart(Restart event, Emitter<TransactionsState> emit) async {
    emit(const TransactionsState());
    add(const LoadNext());
  }

  Future<void> _onLoadNext(LoadNext event, Emitter<TransactionsState> emit) async {
    emit(state.copyWith(isLoading: true, error: null));
    final res = await _getPage(PageParams(page: state.page, pageSize: kTransactionsPageSize, query: state.query, type: state.selectedType));
    res.fold(
      (l) => emit(state.copyWith(isLoading: false, error: l.message)),
      (r) {
        final bool nextHasMore = r.length == kTransactionsPageSize;
        final bool isFirstPage = state.page == 1;
        final List<domain.Transaction> nextItems = isFirstPage
            ? r
            : <domain.Transaction>[...state.items, ...r];
        emit(state.copyWith(
          isLoading: false,
          items: nextItems,
          page: state.page + 1,
          hasMore: nextHasMore,
        ));
      },
    );
  }

  Future<void> _onUpdateQuery(UpdateQuery event, Emitter<TransactionsState> emit) async {
    final String q = event.query;
    emit(state.copyWith(query: q, page: 1, items: const <domain.Transaction>[], hasMore: true, error: null));
    add(const LoadNext());
  }

  Future<void> _onUpdateType(UpdateType event, Emitter<TransactionsState> emit) async {
    final domain.TransactionType? t = event.type;
    emit(state.copyWith(selectedType: t, page: 1, items: const <domain.Transaction>[], hasMore: true, error: null));
    add(const LoadNext());
  }
}


