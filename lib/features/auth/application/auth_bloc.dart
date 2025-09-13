import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:mini_bank_app/core/bloc/base_bloc.dart';
import 'package:mini_bank_app/core/bloc/ui_action.dart';
import 'package:mini_bank_app/core/router/routes.dart';
import 'package:mini_bank_app/features/auth/domain/entities/user.dart' as domain;
import 'package:mini_bank_app/features/auth/domain/repositories/auth_repository.dart';
import 'package:mini_bank_app/features/auth/domain/usecases/login.dart';
import 'package:mini_bank_app/features/auth/domain/usecases/logout.dart';
import 'package:mini_bank_app/core/utils/string_validators.dart';

import '../../../i18n/strings.g.dart';
import '../domain/entities/user.dart';

part 'auth_bloc.freezed.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.appStarted() = _AppStarted;
  const factory AuthEvent.loginRequested({required String email, required String password}) = _LoginRequested;
  const factory AuthEvent.logoutRequested() = _LogoutRequested;
}

@freezed
class AuthState with _$AuthState {
  const factory AuthState.unauthenticated() = _Unauthenticated;
  const factory AuthState.authenticated(domain.User user) = _Authenticated;
  const factory AuthState.loading() = _Loading;
  const factory AuthState.failure(String message) = _Failure;
}

@lazySingleton
class AuthBloc extends BaseBloc<AuthEvent, AuthState> {
  AuthBloc(this._login, this._logout, this._authRepository) : super(const AuthState.loading()) {
    on<_AppStarted>(_onAppStarted);
    on<_LoginRequested>(_onLoginRequested);
    on<_LogoutRequested>(_onLogoutRequested);
  }

  final Login _login;
  final Logout _logout;
  final AuthRepository _authRepository;

  Future<void> _onAppStarted(_AppStarted event, Emitter<AuthState> emit) async {
    emit(const AuthState.loading());
    final res = await _authRepository.currentUser();
    res.fold((l) {
      emit(const AuthState.unauthenticated());
    }, (r) {
      _userIsAuthenticated(r, emit);
    });
  }

  Future<void> _onLoginRequested(_LoginRequested event, Emitter<AuthState> emit) async {
    final String email = event.email.trim();
    final String password = event.password.trim();

    if (!email.isValidEmail) {
      emit( AuthState.failure(t.invalidEmail));
      emitAction(UiAction.showSnackbar(message: t.invalidEmail));
      emit(const AuthState.unauthenticated());
      return;
    }

    if (!password.isValidPassword) {
      emit(AuthState.failure(t.passwordTooShort));
      emitAction(UiAction.showSnackbar(message: t.passwordTooShort));
      emit(const AuthState.unauthenticated());
      return;
    }

    emit(const AuthState.loading());
    final loginRes = await _login(LoginParams(email: email, password: password));
    if (loginRes.isLeft) {
      emit(AuthState.failure(t.invalidCredentials));
      emitAction( UiAction.showSnackbar(message: t.invalidCredentials));
      emit(const AuthState.unauthenticated());
      return;
    }
    final res = await _authRepository.currentUser();
    res.fold((l) {
      emit(const AuthState.unauthenticated());
      emitAction(UiAction.showSnackbar(message: l.message));
    }, (r) {
      _userIsAuthenticated(r, emit);
    });
  }

  _userIsAuthenticated(domain.User user, Emitter<AuthState> emit) {
    emit(AuthState.authenticated(user));
    emitAction(const UiAction.navigate(location: AppRoutes.home, replace: true));
  }

  Future<void> _onLogoutRequested(_LogoutRequested event, Emitter<AuthState> emit) async {
    emit(const AuthState.loading());
    await _logout();
    emit(const AuthState.unauthenticated());
    emitAction(const UiAction.navigate(location: AppRoutes.login, replace: true));
  }
}


