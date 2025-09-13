import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:mini_bank_app/core/bloc/ui_action.dart';

abstract class BaseBloc<E, S> extends Bloc<E, S> {
  BaseBloc(super.initialState);

  final StreamController<UiAction> _actions = StreamController<UiAction>.broadcast();

  Stream<UiAction> get actions => _actions.stream;

  void emitAction(UiAction action) => _actions.add(action);

  @override
  Future<void> close() async {
    await _actions.close();
    return super.close();
  }
}

abstract class BaseCubit<S> extends Cubit<S> {
  BaseCubit(super.initialState);

  final StreamController<UiAction> _actions = StreamController<UiAction>.broadcast();

  Stream<UiAction> get actions => _actions.stream;

  void emitAction(UiAction action) => _actions.add(action);

  @override
  Future<void> close() async {
    await _actions.close();
    return super.close();
  }
}


