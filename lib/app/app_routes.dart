import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:ostad_expense_tracker_project/app/splash_screen/presentation/pages/splash_screen.dart';

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
      ),
    ],
  );
}
