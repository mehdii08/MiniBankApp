import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:mini_bank_app/features/auth/domain/entities/user.dart' as domain;
import 'package:mini_bank_app/features/auth/domain/repositories/auth_repository.dart';
import 'package:mini_bank_app/features/auth/domain/usecases/login.dart';
import 'package:mini_bank_app/features/auth/domain/usecases/logout.dart';

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

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
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
    final domain.User? user = await _authRepository.currentUser();
    if (user == null) {
      emit(const AuthState.unauthenticated());
    } else {
      emit(AuthState.authenticated(user));
    }
  }

  Future<void> _onLoginRequested(_LoginRequested event, Emitter<AuthState> emit) async {
    emit(const AuthState.loading());
    final bool ok = await _login(LoginParams(email: event.email, password: event.password));
    if (!ok) {
      emit(const AuthState.failure('Invalid credentials'));
      emit(const AuthState.unauthenticated());
      return;
    }
    final domain.User? user = await _authRepository.currentUser();
    if (user == null) {
      emit(const AuthState.failure('User not found'));
      emit(const AuthState.unauthenticated());
    } else {
      emit(AuthState.authenticated(user));
    }
  }

  Future<void> _onLogoutRequested(_LogoutRequested event, Emitter<AuthState> emit) async {
    emit(const AuthState.loading());
    await _logout();
    emit(const AuthState.unauthenticated());
  }
}


