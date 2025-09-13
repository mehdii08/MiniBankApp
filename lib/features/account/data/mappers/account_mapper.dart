import 'package:mini_bank_app/features/account/data/models/account_model.dart' as dto;
import 'package:mini_bank_app/features/account/domain/entities/account.dart' as domain;

extension AccountMapper on dto.AccountModel {
  domain.Account toDomain() => domain.Account(id: id, userId: userId, balance: balance);
}

extension AccountDtoMapper on domain.Account {
  dto.AccountModel toDto() => dto.AccountModel(id: id, userId: userId, balance: balance);
}


