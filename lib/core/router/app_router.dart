import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/find_pair/presentation/pages/find_pair_game_page.dart';
import '../../features/find_pair/presentation/pages/find_pair_size_page.dart';
import '../../features/gorbov_schulte/presentation/pages/gorbov_game_page.dart';
import '../../features/gorbov_schulte/presentation/pages/gorbov_size_page.dart';
import '../../features/leaderboard/presentation/pages/leaderboard_page.dart';
import '../../features/memory_matrix/presentation/pages/memory_matrix_game_page.dart';
import '../../features/repeat_pattern/presentation/pages/repeat_pattern_game_page.dart';
import '../../features/repeat_pattern/presentation/pages/repeat_pattern_size_page.dart';
import '../../features/schulte_table/presentation/pages/schulte_game_page.dart';
import '../../features/schulte_table/presentation/pages/schulte_size_page.dart';
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

      GoRoute(
        path: leaderboard,
        pageBuilder: (context, state) => CustomTransitionPage(
          key: state.pageKey,
          child: const LeaderboardPage(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            const begin = Offset(1.0, 0.0);
            const end = Offset.zero;
            final tween = Tween(begin: begin, end: end)
                .chain(CurveTween(curve: Curves.easeInOut));
            return SlideTransition(
              position: animation.drive(tween),
              child: child,
            );
          },
        ),
      ),
      GoRoute(
        path: repeatPatternSize,
        pageBuilder: (context, state) => CustomTransitionPage(
          key: state.pageKey,
          child: const RepeatPatternSizePage(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(opacity: animation, child: child);
          },
        ),
      ),
      GoRoute(
        path: repeatPatternGame,
        pageBuilder: (context, state) {
          final extra = state.extra as Map<String, int>;
          return CustomTransitionPage(
            key: state.pageKey,
            child: RepeatPatternGamePage(
              rows: extra['rows']!,
              cols: extra['cols']!,
            ),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              return FadeTransition(opacity: animation, child: child);
            },
          );
        },
      ),
      GoRoute(
        path: schulteSize,
        pageBuilder: (context, state) => CustomTransitionPage(
          key: state.pageKey,
          child: const SchulteSizePage(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(opacity: animation, child: child);
          },
        ),
      ),
      GoRoute(
        path: schulteGame,
        pageBuilder: (context, state) {
          final extra = state.extra as Map<String,dynamic>;
          final rows = extra['rows'] as int;
          final cols = extra['cols'] as int;
          return CustomTransitionPage(
            key: state.pageKey,
            child: SchulteGamePage(gridRows: rows, gridCols: cols,),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              return FadeTransition(opacity: animation, child: child);
            },
          );
        },
      ),
      GoRoute(
        path: gorbovSize,
        pageBuilder: (context, state) => CustomTransitionPage(
          key: state.pageKey,
          child: const GorbovSizePage(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(opacity: animation, child: child);
          },
        ),
      ),
      GoRoute(
        path: gorbovGame,
        pageBuilder: (context, state) {
          final extra = state.extra as Map<String, int>;
          return CustomTransitionPage(
            key: state.pageKey,
            child: GorbovGamePage(
              rows: extra['rows']!,
              cols: extra['cols']!,
            ),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              return FadeTransition(opacity: animation, child: child);
            },
          );
        },
      ),
      GoRoute(
        path: memoryMatrix,
        pageBuilder: (context, state) => CustomTransitionPage(
          key: state.pageKey,
          child: const MemoryMatrixGamePage(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(opacity: animation, child: child);
          },
        ),
      ),
      GoRoute(
        path: findPairSize,
        pageBuilder: (context, state) => CustomTransitionPage(
          key: state.pageKey,
          child: const FindPairSizePage(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(opacity: animation, child: child);
          },
        ),
      ),
      GoRoute(
        path: findPairGame,
        pageBuilder: (context, state) {
          final extra = state.extra as Map<String, int>;
          return CustomTransitionPage(
            key: state.pageKey,
            child: FindPairGamePage(
              rows: extra['rows']!,
              cols: extra['cols']!,
            ),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              return FadeTransition(opacity: animation, child: child);
            },
          );
        },
      ),
    ],
  );
}
