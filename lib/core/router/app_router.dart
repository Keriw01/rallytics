import 'package:go_router/go_router.dart';

import 'package:flutter/material.dart';
import 'package:rallytics/core/router/router_refresh_stream.dart';
import 'package:rallytics/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:rallytics/features/auth/presentation/pages/login_screen.dart';
import 'package:rallytics/features/auth/presentation/pages/register_screen.dart';
import 'package:rallytics/features/auth/presentation/pages/reset_password_screen.dart';
import 'package:rallytics/features/auth/presentation/pages/verify_email_screen.dart';
import 'package:rallytics/features/dashboard/presentation/pages/dashboard_screen.dart';
import 'package:rallytics/features/live_score/presentation/pages/live_score_screen.dart';

GoRouter configureRouter(AuthBloc authBloc) {
  return GoRouter(
    refreshListenable: RouterRefreshStream(authBloc.stream),

    redirect: (BuildContext context, GoRouterState state) {
      final authState = authBloc.state;

      final publicRoutes = [
        '/login',
        '/login/register',
        '/login/reset_password',
      ];

      final bool isVerified = authState.maybeWhen(
        authenticated: (user) => user.isEmailVerified,
        orElse: () => false,
      );

      final bool isLoggedIn = authState.map(
        initial: (_) => false,
        loading: (_) => false,
        authenticated: (_) => true,
        unauthenticated: (_) => false,
        passwordResetEmailSent: (_) => false,
        error: (_) => false,
      );

      final currentLocation = state.matchedLocation;
      final isGoingToPublicRoute = publicRoutes.contains(currentLocation);
      final isAtVerifyScreen = currentLocation == '/verify-email';

      if (isAtVerifyScreen) {
        if (isVerified) return '/';

        if (!isLoggedIn) return '/login';

        return null;
      }

      if (isLoggedIn && !isVerified) {
        return '/verify-email';
      }

      if (!isLoggedIn && !isGoingToPublicRoute) {
        return '/login';
      }

      if (isLoggedIn && isVerified && isGoingToPublicRoute) {
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
            path: '/reset_password',
            name: 'reset_password',
            builder: (context, state) => const ResetPasswordScreen(),
          ),
          GoRoute(
            path: '/register',
            name: 'register',
            builder: (context, state) => const RegisterScreen(),
          ),
        ],
      ),

      GoRoute(
        path: '/verify-email',
        name: 'verify_email',
        builder: (context, state) => const VerifyEmailScreen(),
      ),

      GoRoute(
        path: '/',
        name: 'dashboard',
        builder: (context, state) => const DashboardScreen(),
        routes: [
          GoRoute(
            path: '/live_score',
            name: 'live_score',
            builder: (context, state) => const LiveScoreScreen(),
          ),
        ],
      ),
    ],
  );
}
