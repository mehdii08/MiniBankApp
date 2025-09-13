// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:ui' as _i264;

import 'package:get_it/get_it.dart' as _i174;
import 'package:go_router/go_router.dart' as _i583;
import 'package:hive/hive.dart' as _i979;
import 'package:injectable/injectable.dart' as _i526;
import 'package:mini_bank_app/core/di/hive_module.dart' as _i89;
import 'package:mini_bank_app/core/di/l10n_module.dart' as _i8;
import 'package:mini_bank_app/core/di/router_module.dart' as _i953;
import 'package:mini_bank_app/features/account/data/repositories/account_repository_hive.dart'
    as _i252;
import 'package:mini_bank_app/features/account/domain/repositories/account_repository.dart'
    as _i261;
import 'package:mini_bank_app/features/account/domain/usecases/get_balance.dart'
    as _i765;
import 'package:mini_bank_app/features/auth/data/repositories/auth_repository_hive.dart'
    as _i534;
import 'package:mini_bank_app/features/auth/domain/repositories/auth_repository.dart'
    as _i582;
import 'package:mini_bank_app/features/auth/domain/usecases/login.dart'
    as _i334;
import 'package:mini_bank_app/features/auth/domain/usecases/logout.dart'
    as _i985;
import 'package:mini_bank_app/features/settings/data/repositories/settings_repository_hive.dart'
    as _i496;
import 'package:mini_bank_app/features/settings/domain/repositories/settings_repository.dart'
    as _i808;
import 'package:mini_bank_app/features/settings/domain/usecases/theme_usecases.dart'
    as _i374;
import 'package:mini_bank_app/features/transactions/data/repositories/transaction_repository_hive.dart'
    as _i751;
import 'package:mini_bank_app/features/transactions/domain/repositories/transaction_repository.dart'
    as _i267;
import 'package:mini_bank_app/features/transactions/domain/usecases/get_recent_transactions.dart'
    as _i20;
import 'package:mini_bank_app/features/transactions/domain/usecases/get_transactions_page.dart'
    as _i394;
import 'package:mini_bank_app/features/transfer/domain/usecases/submit_transfer.dart'
    as _i601;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final l10nModule = _$L10nModule();
    final hiveModule = _$HiveModule();
    final routerModule = _$RouterModule();
    gh.lazySingleton<List<_i264.Locale>>(() => l10nModule.supportedLocales());
    gh.lazySingleton<_i979.HiveInterface>(() => hiveModule.hive);
    gh.lazySingleton<_i583.GoRouter>(() => routerModule.router());
    gh.lazySingleton<_i261.AccountRepository>(
        () => _i252.AccountRepositoryHive(gh<_i979.HiveInterface>()));
    gh.lazySingleton<_i267.TransactionRepository>(
        () => _i751.TransactionRepositoryHive(gh<_i979.HiveInterface>()));
    gh.lazySingleton<_i582.AuthRepository>(
        () => _i534.AuthRepositoryHive(gh<_i979.HiveInterface>()));
    gh.factory<_i20.GetRecentTransactions>(
        () => _i20.GetRecentTransactions(gh<_i267.TransactionRepository>()));
    gh.factory<_i394.GetTransactionsPage>(
        () => _i394.GetTransactionsPage(gh<_i267.TransactionRepository>()));
    gh.factory<_i601.SubmitTransfer>(() => _i601.SubmitTransfer(
          gh<_i267.TransactionRepository>(),
          gh<_i261.AccountRepository>(),
        ));
    gh.lazySingleton<_i808.SettingsRepository>(
        () => _i496.SettingsRepositoryHive(gh<_i979.HiveInterface>()));
    gh.factory<_i765.GetBalance>(
        () => _i765.GetBalance(gh<_i261.AccountRepository>()));
    gh.factory<_i334.Login>(() => _i334.Login(gh<_i582.AuthRepository>()));
    gh.factory<_i985.Logout>(() => _i985.Logout(gh<_i582.AuthRepository>()));
    gh.factory<_i374.LoadTheme>(
        () => _i374.LoadTheme(gh<_i808.SettingsRepository>()));
    gh.factory<_i374.ToggleTheme>(
        () => _i374.ToggleTheme(gh<_i808.SettingsRepository>()));
    return this;
  }
}

class _$L10nModule extends _i8.L10nModule {}

class _$HiveModule extends _i89.HiveModule {}

class _$RouterModule extends _i953.RouterModule {}
