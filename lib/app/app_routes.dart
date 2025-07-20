import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:ostad_expense_tracker_project/features/auth/presentation/pages/sign_in_screen.dart';

import 'auth/splash_screen/presentation/pages/splash_screen.dart';

class AppRoutes {
  static final GoRouter router = GoRouter(
    initialLocation: '/',
    routes: <GoRoute>[
      GoRoute(
        path: '/',
        name: SplashScreen.name,
        builder: (BuildContext context, GoRouterState state) {
          return SplashScreen();
        },
        routes: <GoRoute>[
          GoRoute(
            path: '/sign-in',
            name: SignInScreen.name,
            builder: (BuildContext context, GoRouterState state) {
              return SignInScreen();
            }
          )
        ],
      ),
    ],
  );
}
