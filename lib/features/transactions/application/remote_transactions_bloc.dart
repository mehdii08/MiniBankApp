import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:mini_bank_app/core/bloc/base_bloc.dart';
import 'package:mini_bank_app/core/errors/failure.dart';
import 'package:mini_bank_app/features/transactions/domain/entities/transaction.dart' as domain;
import 'package:mini_bank_app/features/transactions/domain/usecases/get_remote_transactions.dart';

import '../domain/entities/transaction.dart';

part 'remote_transactions_bloc.freezed.dart';

abstract class RemoteTransactionsEvent {
  const RemoteTransactionsEvent();
}

class LoadRemote extends RemoteTransactionsEvent {
  const LoadRemote();
}

@freezed
class RemoteTransactionsState with _$RemoteTransactionsState {
  const factory RemoteTransactionsState({
    @Default(false) bool isLoading,
    @Default(<domain.Transaction>[]) List<domain.Transaction> items,
    String? error,
  }) = _RemoteTransactionsState;
}

@injectable
class RemoteTransactionsBloc extends BaseBloc<RemoteTransactionsEvent, RemoteTransactionsState> {
  RemoteTransactionsBloc(this._getRemote) : super(const RemoteTransactionsState()) {
    on<LoadRemote>(_onLoad);
  }

  final GetRemoteTransactions _getRemote;

  Future<void> _onLoad(LoadRemote event, Emitter<RemoteTransactionsState> emit) async {
    emit(state.copyWith(isLoading: true, error: null));
    final res = await _getRemote();
    res.fold(
      (Failure l) => emit(state.copyWith(isLoading: false, error: l.message)),
      (List<domain.Transaction> r) => emit(state.copyWith(isLoading: false, items: r)),
    );
  }
}


