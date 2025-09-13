import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import 'package:mini_bank_app/core/router/routes.dart';
import 'package:mini_bank_app/features/auth/application/auth_bloc.dart';
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
          GoRoute(
            path: AppRoutes.login,
            builder: (BuildContext context, GoRouterState state) => const Placeholder(key: Key('login')),
          ),
          GoRoute(
            path: AppRoutes.home,
            builder: (BuildContext context, GoRouterState state) => const Placeholder(key: Key('home')),
          ),
          GoRoute(
            path: AppRoutes.transactions,
            builder: (BuildContext context, GoRouterState state) => const Placeholder(key: Key('transactions')),
          ),
          GoRoute(
            path: AppRoutes.transfer,
            builder: (BuildContext context, GoRouterState state) => const Placeholder(key: Key('transfer')),
          ),
          GoRoute(
            path: AppRoutes.settings,
            builder: (BuildContext context, GoRouterState state) => const Placeholder(key: Key('settings')),
          ),
        ],
      );
}


