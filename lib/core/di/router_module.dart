import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import 'package:mini_bank_app/core/router/routes.dart';
import 'package:mini_bank_app/features/auth/application/auth_bloc.dart';
import 'package:mini_bank_app/features/auth/presentation/login_page.dart';
import 'package:mini_bank_app/features/home/presentation/home_page.dart';
import 'package:mini_bank_app/features/transactions/presentation/transactions_page.dart';
import 'package:mini_bank_app/features/transfer/presentation/transfer_page.dart';
import 'package:mini_bank_app/features/settings/presentation/settings_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@module
abstract class RouterModule {
  @lazySingleton
  GoRouter router() => GoRouter(
        initialLocation: AppRoutes.login,
        redirect: (context, state) {
          final authState = context.read<AuthBloc>().state;
          final bool isAuthed = authState.maybeWhen(authenticated: (_) => true, orElse: () => false);
          final bool goingToLogin = state.matchedLocation == AppRoutes.login;
          if (!isAuthed && !goingToLogin) return AppRoutes.login;
          if (isAuthed && goingToLogin) return AppRoutes.home;
          return null;
        },
        routes: <RouteBase>[
          GoRoute(path: AppRoutes.login, builder: (_, __) => const LoginPage()),
          GoRoute(path: AppRoutes.home, builder: (_, __) => const HomePage()),
          GoRoute(path: AppRoutes.transactions, builder: (_, __) => const TransactionsPage()),
          GoRoute(path: AppRoutes.transfer, builder: (_, __) => const TransferPage()),
          GoRoute(path: AppRoutes.settings, builder: (_, __) => const SettingsPage()),
        ],
      );
}


