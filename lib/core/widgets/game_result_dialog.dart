import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:memory_training/core/router/app_router.dart';

import '../../features/leaderboard/presentation/bloc/leaderboard_bloc.dart';
import '../di/injection.dart';
import '../extensions/context_extensions.dart';

class GameResultDialog extends StatelessWidget {
  final bool isSuccess;
  final int value;
  final int? mistakes;
  final VoidCallback onRestart;
  final bool isScoreBased;
  final bool isPercentBased;

  const GameResultDialog({
    super.key,
    required this.isSuccess,
    required this.value,
    this.mistakes,
    required this.onRestart,
    this.isScoreBased = false,
    this.isPercentBased = false,
  });

  static Future<void> show(
    BuildContext context, {
    required bool isSuccess,
    required int time,
    int? mistakes,
    required VoidCallback onRestart,
    String? gameType,
    int? rows,
    int? cols,
    int? gridSize,
    int? level,
    bool higherIsBetter = false,
    bool alwaysSaveRecord = false,
        bool isPercentBased = false,
  }) {
    if ((isSuccess || alwaysSaveRecord) && gameType != null) {
      getIt<LeaderboardBloc>().add(LeaderboardEvent.saveRecord(
        gameType: gameType,
        value: time,
        rows: rows,
        cols: cols,
        gridSize: gridSize,
        level: level,
        higherIsBetter: higherIsBetter,
      ));
    }
    
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (_) => GameResultDialog(
        isSuccess: isSuccess,
        value: time,
        mistakes: mistakes,
        onRestart: onRestart,
        isPercentBased: isPercentBased,
        isScoreBased: higherIsBetter,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      child: Container(
        padding: const EdgeInsets.all(32),
        decoration: BoxDecoration(
          gradient: context.colors.cardGradient,
          borderRadius: BorderRadius.circular(24),
          border: Border.all(
            color: isSuccess
                ? context.colors.success.withOpacity(0.5)
                : context.colors.error.withOpacity(0.5),
            width: 2,
          ),
        ),
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Icon(
                        isSuccess ? Icons.emoji_events_rounded : Icons.refresh_rounded,
                        size: 64,
                        color: isSuccess ? context.colors.warning : context.colors.error,
                      )
                          .animate()
                          .scale(
                        begin: const Offset(0, 0),
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.elasticOut,
                      )
                          .shimmer(
                        delay: const Duration(milliseconds: 500),
                        duration: const Duration(milliseconds: 1000),
                      ),
                      const SizedBox(height: 16),
                      Text(
                        isSuccess ? context.appLocale.congratulations : context.appLocale.gameOver,
                        style: context.textStyles.headlineMedium?.copyWith(
                          color: isSuccess ? context.colors.success : context.colors.error,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _ResultStat(
                        icon: isPercentBased ? Icons.percent_rounded : (isScoreBased ? Icons.star_rounded : Icons.timer_outlined),
                        label: isPercentBased ? context.appLocale.accuracy : (isScoreBased ? context.appLocale.score : context.appLocale.time),
                        value: isPercentBased ? '$value%' : (isScoreBased ? '$value' : '$value${context.appLocale.seconds}'),
                      ),
                      if (mistakes != null) ...[
                        const SizedBox(width: 32),
                        _ResultStat(
                          icon: Icons.close_rounded,
                          label: context.appLocale.mistakes,
                          value: mistakes.toString(),
                          color: context.colors.error,
                        ),
                      ],
                    ],
                  ),


                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OutlinedButton.icon(
                    onPressed: () {
                      Navigator.of(context).pop();
                      context.go(AppRouter.home);
                    },
                    icon: const Icon(Icons.home_rounded),
                    label: Text(context.appLocale.backToMenu),
                  ),
                  const SizedBox(width: 16),
                  ElevatedButton.icon(
                    onPressed: () {
                      Navigator.of(context).pop();
                      onRestart();
                    },
                    icon: const Icon(Icons.refresh_rounded),
                    label: Text(context.appLocale.tryAgain, textAlign: TextAlign.center,),
                  ),
                ],
              ),
            )
          ],
        ),
      ).animate().fadeIn().scale(
            begin: const Offset(0.8, 0.8),
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeOut,
          ),
    );
  }
}

class _ResultStat extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;
  final Color? color;

  const _ResultStat({
    required this.icon,
    required this.label,
    required this.value,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: color ?? context.colors.textSecondary, size: 20),
        const SizedBox(height: 4),
        Text(
          label,
          style: context.textStyles.bodySmall,
        ),
        Text(
          value,
          style: context.textStyles.titleLarge?.copyWith(
            color: color ?? context.colors.primary,
          ),
        ),
      ],
    );
  }
}
