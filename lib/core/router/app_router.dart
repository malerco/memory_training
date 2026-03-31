import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/splash/presentation/pages/splash_page.dart';
import '../../features/home/presentation/pages/home_page.dart';


class AppRouter {
  static const String splash = '/';
  static const String home = '/home';
  static const String settings = '/settings';
  static const String leaderboard = '/leaderboard';
  static const String repeatPatternSize = '/repeat-pattern/size';
  static const String repeatPatternGame = '/repeat-pattern/game';
  static const String schulteSize = '/schulte/size';
  static const String schulteGame = '/schulte/game';
  static const String gorbovSize = '/gorbov/size';
  static const String gorbovGame = '/gorbov/game';
  static const String memoryMatrix = '/memory-matrix';
  static const String findPairSize = '/find-pair/size';
  static const String findPairGame = '/find-pair/game';
  static const String nBack = '/n_back';
  static const String sequenceMemory = '/sequence_memory';

  static final GoRouter router = GoRouter(
    initialLocation: splash,
    routes: [
      GoRoute(
        path: splash,
        pageBuilder: (context, state) => CustomTransitionPage(
          key: state.pageKey,
          child: const SplashPage(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(opacity: animation, child: child);
          },
        ),
      ),
      GoRoute(
        path: home,
        pageBuilder: (context, state) => CustomTransitionPage(
          key: state.pageKey,
          child: const HomePage(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(opacity: animation, child: child);
          },
        ),
      ),
    ],
  );
}
