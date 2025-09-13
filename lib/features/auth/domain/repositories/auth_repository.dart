import 'package:mini_bank_app/features/auth/domain/entities/user.dart';

abstract interface class AuthRepository {
  Future<bool> login(String email, String password);
  Future<void> logout();
  Future<User?> currentUser();
}


