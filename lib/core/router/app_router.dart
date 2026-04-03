import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/chimp_test/presentation/pages/chimp_test_game_page.dart';
import '../../features/chimp_test/presentation/pages/chimp_test_level_page.dart';
import '../../features/find_pair/presentation/pages/find_pair_game_page.dart';
import '../../features/find_pair/presentation/pages/find_pair_size_page.dart';
import '../../features/gorbov_schulte/presentation/pages/gorbov_game_page.dart';
import '../../features/gorbov_schulte/presentation/pages/gorbov_size_page.dart';
import '../../features/leaderboard/presentation/pages/leaderboard_page.dart';
import '../../features/memory_matrix/presentation/pages/memory_matrix_game_page.dart';
import '../../features/n_back/presentation/pages/n_back_game_page.dart';
import '../../features/n_back/presentation/pages/n_back_level_page.dart';
import '../../features/object_location/presentation/pages/object_location_game_page.dart';
import '../../features/object_location/presentation/pages/object_location_level_page.dart';
import '../../features/picture_memory/presentation/pages/picture_memory_game_page.dart';
import '../../features/repeat_pattern/presentation/pages/repeat_pattern_game_page.dart';
import '../../features/repeat_pattern/presentation/pages/repeat_pattern_size_page.dart';
import '../../features/schulte_table/presentation/pages/schulte_game_page.dart';
import '../../features/schulte_table/presentation/pages/schulte_size_page.dart';
import '../../features/sequence_memory/presentation/pages/sequence_memory_game_page.dart';
import '../../features/sequence_memory/presentation/pages/sequence_memory_size_page.dart';
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
  static const String nBackGame = '/n_back/game';
  static const String nBackSize = '/n_back/size';
  static const String sequenceMemorySize = '/sequence_memory/size';
  static const String sequenceMemoryGame = '/sequence_memory/game';
  static const String chimpTestSize = '/chimp_test/size';
  static const String chimpTestGame = '/chimp_test/game';
  static const String pictureMemory = '/picture_memory';
  static const String objectLocationSize = '/object_location/size';
  static const String objectLocationGame = '/object_location/game';

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
      GoRoute(
        path: nBackSize,
        pageBuilder: (context, state) => CustomTransitionPage(
          key: state.pageKey,
          child: const NBackLevelPage(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(opacity: animation, child: child);
          },
        ),
      ),
      GoRoute(
        path: nBackGame,
        pageBuilder: (context, state) {
          final extra = state.extra as Map<String, int>;
          final level = extra['level'] ?? 2;
          return CustomTransitionPage(
            key: state.pageKey,
            child: NBackGamePage(nLevel: level),
            transitionsBuilder: (context, animation, secondaryAnimation, child) {
              return FadeTransition(opacity: animation, child: child);
            },
          );
        },
      ),
      GoRoute(
        path: sequenceMemorySize,
        pageBuilder: (context, state) => CustomTransitionPage(
          key: state.pageKey,
          child: const SequenceMemorySizePage(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(opacity: animation, child: child);
          },
        ),
      ),
      GoRoute(
        path: sequenceMemoryGame,
        pageBuilder: (context, state) {
          final extra = state.extra as Map<String, int>;
          final size = extra['size'] ?? 3;
          return CustomTransitionPage(
            key: state.pageKey,
            child: SequenceMemoryGamePage(gridSize: size),
            transitionsBuilder: (context, animation, secondaryAnimation, child) {
              return FadeTransition(opacity: animation, child: child);
            },
          );
        },
      ),
      GoRoute(
        path: chimpTestSize,
        pageBuilder: (context, state) => CustomTransitionPage(
          key: state.pageKey,
          child: const ChimpTestLevelPage(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(opacity: animation, child: child);
          },
        ),
      ),
      GoRoute(
        path: chimpTestGame,
        pageBuilder: (context, state) {
          final extra = state.extra as Map<String, int>;
          final size = extra['size'] ?? 4;
          return CustomTransitionPage(
            key: state.pageKey,
            child: ChimpTestGamePage(gridSize: size),
            transitionsBuilder: (context, animation, secondaryAnimation, child) {
              return FadeTransition(opacity: animation, child: child);
            },
          );
        },
      ),
      GoRoute(
        path: pictureMemory,
        pageBuilder: (context, state) => CustomTransitionPage(
          key: state.pageKey,
          child: const PictureMemoryGamePage(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(opacity: animation, child: child);
          },
        ),
      ),
      GoRoute(
        path: objectLocationSize,
        pageBuilder: (context, state) => CustomTransitionPage(
          key: state.pageKey,
          child: const ObjectLocationLevelPage(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(opacity: animation, child: child);
          },
        ),
      ),
      GoRoute(
        path: objectLocationGame,
        pageBuilder: (context, state) {
          final extra = state.extra as Map<String, int>;
          final size = extra['size'] ?? 3;
          return CustomTransitionPage(
            key: state.pageKey,
            child: ObjectLocationGamePage(gridSize: size),
            transitionsBuilder: (context, animation, secondaryAnimation, child) {
              return FadeTransition(opacity: animation, child: child);
            },
          );
        },
      ),
    ],
  );
}
