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
    return this;
  }
}

class _$L10nModule extends _i8.L10nModule {}

class _$HiveModule extends _i89.HiveModule {}

class _$RouterModule extends _i953.RouterModule {}
