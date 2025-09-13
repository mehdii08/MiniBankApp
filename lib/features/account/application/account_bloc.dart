import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:mini_bank_app/features/account/domain/usecases/get_balance.dart';
import 'package:mini_bank_app/features/account/domain/usecases/watch_balance.dart';
import 'dart:async';

part 'account_bloc.freezed.dart';

@freezed
class AccountEvent with _$AccountEvent {
  const factory AccountEvent.load(String userId) = _Load;
  const factory AccountEvent.updateBalance(double balance) = _UpdateBalance;
}

@freezed
class AccountState with _$AccountState {
  const factory AccountState.initial() = _Initial;
  const factory AccountState.loading() = _Loading;
  const factory AccountState.loaded(double balance) = _Loaded;
  const factory AccountState.failure(String message) = _Failure;
}

@lazySingleton
class AccountBloc extends Bloc<AccountEvent, AccountState> {
  AccountBloc(this._getBalance, this._watchBalance) : super(const AccountState.initial()) {
    on<_Load>(_onLoad);
    on<_UpdateBalance>(_updateBalance);
    _watchSub ??= _watchBalance().listen((balance) {
      add(AccountEvent.updateBalance(balance));
    });

  }

  final GetBalance _getBalance;
  final WatchBalance _watchBalance;
  StreamSubscription<void>? _watchSub;

  Future<void> _onLoad(_Load event, Emitter<AccountState> emit) async {
    emit(const AccountState.loading());
    final double? balance = await _getBalance(event.userId);
    if (balance == null) {
      emit(const AccountState.failure('Account not found'));
    } else {
      emit(AccountState.loaded(balance));
    }
  }

  Future<void> _updateBalance(_UpdateBalance event, Emitter<AccountState> emit) async {
      emit(AccountState.loaded(event.balance));
  }

  @override
  Future<void> close() async {
    await _watchSub?.cancel();
    return super.close();
  }
}


