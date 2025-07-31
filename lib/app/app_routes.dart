import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:ostad_expense_tracker_project/features/auth/presentation/pages/sign_in_screen.dart';
import 'package:ostad_expense_tracker_project/features/auth/presentation/pages/sign_up_screen.dart';
import 'package:ostad_expense_tracker_project/features/common/presentation/pages/bottom_nav_bar_screen.dart';
import 'package:ostad_expense_tracker_project/features/home/data/data_source/local/home_local_data_source.dart';
import 'package:ostad_expense_tracker_project/features/home/presentation/pages/homepage_screen.dart';
import 'package:ostad_expense_tracker_project/features/profile/presentation/pages/profile_screen.dart';
import 'package:ostad_expense_tracker_project/features/statistics/presentation/pages/statistics_screen.dart';
import 'package:ostad_expense_tracker_project/features/wallet/presentation/pages/wallet_dashboard_screen.dart';

import 'auth/splash_screen/presentation/pages/splash_screen.dart';

class AppRoutes {
  static final GoRouter router = GoRouter(
    initialLocation: '/splash',
    routes: <RouteBase>[
      StatefulShellRoute.indexedStack(
        builder:
            (context, state, navigationShell) =>
            BottomNavBarScreen(shell: navigationShell),
        branches: [
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/',
                name: HomepageScreen.name,
                builder: (BuildContext context, GoRouterState state) {
                  return HomepageScreen();
                },
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/statistics',
                name: StatisticsScreen.name,
                builder: (BuildContext context, GoRouterState state) {
                  return StatisticsScreen();
                },
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/wallet-screen',
                name: WalletDashboardScreen.name,
                builder: (BuildContext context, GoRouterState state) {
                  return WalletDashboardScreen();
                },
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/profile-screen',
                name: ProfileScreen.name,
                builder: (BuildContext context, GoRouterState state) {
                  return ProfileScreen();
                },
              ),
            ],
          ),

        ],
      ),
      GoRoute(
        path: '/splash',
        name: SplashScreen.name,
        builder: (BuildContext context, GoRouterState state) {
          return SplashScreen();
        },
        routes: <RouteBase>[
          GoRoute(
            path: 'sign-in',
            name: SignInScreen.name,
            builder: (BuildContext context, GoRouterState state) {
              return SignInScreen();
            },
          ),
          GoRoute(
            path: 'sign-up',
            name: SignUpScreen.name,
            builder: (BuildContext context, GoRouterState state) {
              return SignUpScreen();
            },
          ),


          // GoRoute(
          //   path: '/home',
          //   name: HomepageScreen.name,
          //   builder: (BuildContext context, GoRouterState state) {
          //     return HomepageScreen();
          //   },
          // ),
        ],
      ),
    ],
  );
}
