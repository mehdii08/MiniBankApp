import 'package:mini_bank_app/features/auth/data/models/user_model.dart' as dto;
import 'package:mini_bank_app/features/auth/domain/entities/user.dart' as domain;

extension UserMapper on dto.UserModel {
  domain.User toDomain() => domain.User(id: id, email: email, name: name);
}

extension UserDtoMapper on domain.User {
  dto.UserModel toDto() => dto.UserModel(id: id, email: email, name: name);
}


