import 'package:go_router/go_router.dart';

import 'package:flutter/material.dart';
import 'package:rallytics/core/router/router_refresh_stream.dart';
import 'package:rallytics/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:rallytics/features/auth/presentation/pages/login_screen.dart';
import 'package:rallytics/features/live_score/presentation/pages/live_score_screen.dart';

GoRouter configureRouter(AuthBloc authBloc) {
  return GoRouter(
    refreshListenable: RouterRefreshStream(authBloc.stream),

    redirect: (BuildContext context, GoRouterState state) {
      final authState = authBloc.state;

      final bool loggedIn = authState.map(
        initial: (_) => false,
        loading: (_) => false,
        authenticated: (_) => true,
        unauthenticated: (_) => false,
        error: (_) => false,
      );

      final bool loggingIn = state.matchedLocation == '/login';

      if (!loggedIn && !loggingIn) {
        return '/login';
      }

      if (loggedIn && loggingIn) {
        return '/';
      }

      return null;
    },

    routes: [
      GoRoute(
        path: '/login',
        name: 'login',
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: '/',
        name: 'live_score',
        builder: (context, state) => const LiveScoreScreen(),
      ),
    ],
  );
}
