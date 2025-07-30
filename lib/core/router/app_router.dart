import 'package:go_router/go_router.dart';

import 'package:flutter/material.dart';
import 'package:rallytics/core/router/router_refresh_stream.dart';
import 'package:rallytics/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:rallytics/features/auth/presentation/pages/login_screen.dart';
import 'package:rallytics/features/auth/presentation/pages/register_screen.dart';
import 'package:rallytics/features/live_score/presentation/pages/live_score_screen.dart';

GoRouter configureRouter(AuthBloc authBloc) {
  return GoRouter(
    refreshListenable: RouterRefreshStream(authBloc.stream),

    redirect: (BuildContext context, GoRouterState state) {
      final authState = authBloc.state;

      final publicRoutes = ['/login', '/login/register'];

      final bool loggedIn = authState.map(
        initial: (_) => false,
        loading: (_) => false,
        authenticated: (_) => true,
        unauthenticated: (_) => false,
        error: (_) => false,
      );

      final bool isGoingToPublicRoute = publicRoutes.contains(
        state.matchedLocation,
      );

      if (!loggedIn && !isGoingToPublicRoute) {
        return '/login';
      }

      if (loggedIn && isGoingToPublicRoute) {
        return '/';
      }

      return null;
    },

    routes: [
      GoRoute(
        path: '/login',
        name: 'login',
        builder: (context, state) => const LoginScreen(),
        routes: [
          GoRoute(
            path: '/register',
            name: 'register',
            builder: (context, state) => const RegisterScreen(),
          ),
        ],
      ),

      GoRoute(
        path: '/',
        name: 'live_score',
        builder: (context, state) => const LiveScoreScreen(),
      ),
    ],
  );
}
