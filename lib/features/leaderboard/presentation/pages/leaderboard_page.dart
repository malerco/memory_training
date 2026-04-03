import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/di/injection.dart';
import '../../../../core/extensions/context_extensions.dart';

import '../../../../core/utils/orientation_helper.dart';
import '../bloc/leaderboard_bloc.dart';

class LeaderboardPage extends StatefulWidget {
  const LeaderboardPage({super.key});

  @override
  State<LeaderboardPage> createState() => _LeaderboardPageState();
}

class _LeaderboardPageState extends State<LeaderboardPage> with PortraitModeMixin {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<LeaderboardBloc>()..add(const LeaderboardEvent.load()),
      child: const _LeaderboardView(),
    );
  }
}

class _LeaderboardView extends StatelessWidget {
  const _LeaderboardView();

  String _getTrainerName(BuildContext context, String key) {
    switch (key) {
      case 'repeat_pattern':
        return context.appLocale.repeatPatternTitle;
      case 'schulte':
        return context.appLocale.schulteTitle;
      case 'gorbov_schulte':
        return context.appLocale.gorbovTitle;
      case 'memory_matrix':
        return context.appLocale.memoryMatrixTitle;
      case 'find_pair':
        return context.appLocale.findPairTitle;
      case 'n_back':
        return context.appLocale.nBackTitle;
      case 'sequence_memory':
        return context.appLocale.sequenceMemory;
      case 'chimp_test':
        return context.appLocale.chimpTestTitle;
      case 'picture_memory':
        return context.appLocale.pictureMemoryTitle;
      case 'object_location':
        return context.appLocale.objectLocationTitle;
      default:
        return key;
    }
  }

  IconData _getTrainerIcon(String key) {
    switch (key) {
      case 'repeat_pattern':
        return Icons.grid_on_rounded;
      case 'schulte':
        return Icons.grid_3x3_rounded;
      case 'gorbov_schulte':
        return Icons.palette_rounded;
      case 'memory_matrix':
        return Icons.apps_rounded;
      case 'find_pair':
        return Icons.flip_rounded;
      case 'n_back':
        return Icons.history_rounded;
      case 'sequence_memory':
        return Icons.linear_scale_rounded;
      case 'chimp_test':
        return Icons.pets_rounded;
      case 'picture_memory':
        return Icons.image_rounded;
      case 'object_location':
        return Icons.place_rounded;
      default:
        return Icons.games_rounded;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () => context.go('/home'),
                    icon: const Icon(Icons.arrow_back_rounded),
                    style: IconButton.styleFrom(
                      backgroundColor: context.colors.surface,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Text(
                    context.appLocale.records,
                    style: context.textStyles.headlineMedium,
                  ),
                  const SizedBox(width: 8),
                  Icon(
                    Icons.emoji_events_rounded,
                    color: context.colors.warning,
                    size: 32,
                  ),
                ],
              ).animate().fadeIn().slideX(begin: -0.2),
              const SizedBox(height: 32),
              Expanded(
                child: BlocBuilder<LeaderboardBloc, LeaderboardState>(
                  builder: (context, state) {
                    if (state.isLoading) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }

                    final gameTypes = ['repeat_pattern', 'schulte', 'gorbov_schulte', 'find_pair', 'n_back', 'sequence_memory', 'chimp_test', 'picture_memory', 'object_location'];
                    final groupedRecords = <String, Map<String, int>>{};

                    for (final gameType in gameTypes) {
                      groupedRecords[gameType] = {};
                    }

                    for (final entry in state.records.entries) {
                      for (final gameType in gameTypes) {
                        if (entry.key.startsWith(gameType)) {
                          final size = entry.key.replaceFirst('${gameType}_', '').replaceFirst('${gameType}', '');
                          groupedRecords[gameType]![size] = entry.value;
                        }
                      }
                    }

                    return ListView.builder(
                      itemCount: gameTypes.length,
                      itemBuilder: (context, index) {
                        final gameType = gameTypes[index];
                        final records = groupedRecords[gameType]!;
                        final isScoreBased = ['chimp_test', 'picture_memory', 'object_location', 'n_back', 'sequence_memory'].contains(gameType);
                        final isPercentBased = gameType == 'n_back';

                        return _GameRecordSection(
                          icon: _getTrainerIcon(gameType),
                          title: _getTrainerName(context, gameType),
                          records: records,
                          isScoreBased: isScoreBased,
                          isPercentBased: isPercentBased,
                        ).animate()
                            .fadeIn(delay: Duration(milliseconds: 100 * index))
                            .slideX(begin: 0.2);
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _GameRecordSection extends StatelessWidget {
  final IconData icon;
  final String title;
  final Map<String, int> records;
  final bool isScoreBased;
  final bool isPercentBased;

  const _GameRecordSection({
    required this.icon,
    required this.title,
    required this.records,
    this.isScoreBased = false,
    this.isPercentBased = false,
  });

  @override
  Widget build(BuildContext context) {
    final sortedEntries = records.entries.toList()
      ..sort((a, b) => a.key.compareTo(b.key));

    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        gradient: context.colors.cardGradient,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: context.colors.primary.withOpacity(0.2),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: context.colors.primary.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(
                  icon,
                  color: context.colors.primary,
                  size: 22,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  title,
                  style: context.textStyles.titleMedium,
                ),
              ),
            ],
          ),
          if (sortedEntries.isEmpty)
            Padding(
              padding: const EdgeInsets.only(top: 12),
              child: Text(
                context.appLocale.noRecords,
                style: context.textStyles.bodySmall?.copyWith(
                  color: context.colors.textSecondary,
                ),
              ),
            )
          else
            Padding(
              padding: const EdgeInsets.only(top: 12),
              child: Wrap(
                spacing: 8,
                runSpacing: 8,
                children: sortedEntries.map((entry) {
                  return Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    decoration: BoxDecoration(
                      color: context.colors.surfaceLight.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          entry.key,
                          style: context.textStyles.bodySmall?.copyWith(
                            color: context.colors.textSecondary,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Icon(
                          Icons.emoji_events_rounded,
                          color: context.colors.warning,
                          size: 16,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          isPercentBased ? '${entry.value}%' : (isScoreBased ? '${entry.value}' : '${entry.value}${context.appLocale.seconds}'),
                          style: context.textStyles.bodyMedium?.copyWith(
                            color: context.colors.secondary,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  );
                }).toList(),
              ),
            ),
        ],
      ),
    );
  }
}

class _RecordCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final int? record;

  const _RecordCard({
    required this.icon,
    required this.title,
    required this.record,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: context.colors.cardGradient,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: context.colors.primary.withOpacity(0.2),
        ),
      ),
      child: Row(
        children: [
          Container(
            width: 56,
            height: 56,
            decoration: BoxDecoration(
              color: context.colors.primary.withOpacity(0.2),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(
              icon,
              color: context.colors.primary,
              size: 28,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Text(
              title,
              style: context.textStyles.titleMedium,
            ),
          ),
          if (record != null) ...[
            Icon(
              Icons.emoji_events_rounded,
              color: context.colors.warning,
              size: 24,
            ),
            const SizedBox(width: 8),
            Text(
              '$record${context.appLocale.seconds}',
              style: context.textStyles.headlineSmall?.copyWith(
                color: context.colors.secondary,
              ),
            ),
          ] else
            Text(
              context.appLocale.noRecords,
              style: context.textStyles.bodyMedium?.copyWith(
                color: context.colors.textSecondary,
              ),
            ),
        ],
      ),
    );
  }
}
