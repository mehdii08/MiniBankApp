import 'package:injectable/injectable.dart';
import 'package:hive/hive.dart';
import 'package:mini_bank_app/core/constants/hive_boxes.dart';
import 'package:mini_bank_app/core/constants/keys.dart';
import 'package:mini_bank_app/core/constants/messages.dart';
import 'package:mini_bank_app/core/errors/failure.dart';
import 'package:mini_bank_app/core/utils/either.dart';
import 'package:mini_bank_app/features/auth/data/mappers/user_mapper.dart';
import 'package:mini_bank_app/features/auth/data/models/user_model.dart';
import 'package:mini_bank_app/features/auth/domain/entities/user.dart';
import 'package:mini_bank_app/features/auth/domain/repositories/auth_repository.dart';

@LazySingleton(as: AuthRepository)
class AuthRepositoryHive implements AuthRepository {
  AuthRepositoryHive(this._hive);
  final HiveInterface _hive;

  static const String _hardcodedEmail = 'user@test.com';
  static const String _hardcodedPassword = '123456';

  @override
  Future<Either<Failure, bool>> login(String email, String password) async {
    if (email == _hardcodedEmail && password == _hardcodedPassword) {
      const String userId = 'user_1';
      await _hive.box(kSettingsBox).put(kCurrentUserIdKey, userId);
      return const Either<Failure, bool>.right(true);
    }
    return const Either<Failure, bool>.left(Failure(MessageKeys.invalidCredentials));
  }

  @override
  Future<Either<Failure, bool>> logout() async {
    await _hive.box(kSettingsBox).delete(kCurrentUserIdKey);
    return const Either<Failure, bool>.right(true);
  }

  @override
  Future<Either<Failure, User>> currentUser() async {
    final String? userId = _hive.box(kSettingsBox).get(kCurrentUserIdKey) as String?;
    if (userId == null) {
      return const Either<Failure, User>.left(Failure(MessageKeys.userNotFound));
    }
    final UserModel? dto = _hive.box(kUsersBox).get(userId) as UserModel?;
    if (dto == null) {
      return const Either<Failure, User>.left(Failure(MessageKeys.userNotFound));
    }
    return Either<Failure, User>.right(dto.toDomain());
  }
}


