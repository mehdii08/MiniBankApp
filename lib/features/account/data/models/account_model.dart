import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'account_model.freezed.dart';
part 'account_model.g.dart';

@freezed
@HiveType(typeId: 2)
class AccountModel with _$AccountModel {
  const factory AccountModel({
    @HiveField(0) required String id,
    @HiveField(1) required String userId,
    @HiveField(2) required double balance,
  }) = _AccountModel;
}


