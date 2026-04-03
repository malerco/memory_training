import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/di/injection.dart';
import '../../../../core/extensions/context_extensions.dart';

import '../../../../core/utils/orientation_helper.dart';
import '../../../../core/widgets/game_app_bar.dart';
import '../../../../core/widgets/game_result_dialog.dart';
import '../bloc/n_back_bloc.dart';
import '../widgets/control_panel.dart';
import '../widgets/stats_panel.dart';

class NBackGamePage extends StatefulWidget {
  final int nLevel;

  const NBackGamePage({super.key, required this.nLevel});

  @override
  State<NBackGamePage> createState() => _NBackGamePageState();
}

class _NBackGamePageState extends State<NBackGamePage> with LandscapeModeMixin {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<NBackBloc>()..add(NBackEvent.start(widget.nLevel)),
      child: const _GameView(),
    );
  }
}

class _GameView extends StatelessWidget {
  const _GameView();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NBackBloc, NBackState>(
      listenWhen: (prev, curr) =>
          prev.phase != NBackPhase.completed && curr.phase == NBackPhase.completed,
      listener: (context, state) {
        final accuracy = state.totalTrials > 0 
            ? (state.score / state.totalTrials * 100).round() 
            : 0;
        GameResultDialog.show(
          context,
          isSuccess: accuracy >= 70,
          time: accuracy,
          mistakes: state.mistakes,
          onRestart: () {
            context.read<NBackBloc>().add(const NBackEvent.restart());
          },
          gameType: 'n_back',
          gridSize: state.nLevel,
          higherIsBetter: true,
          alwaysSaveRecord: true,
          isPercentBased: true,
        );
      },
      builder: (context, state) {
        return Scaffold(
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  GameAppBar(
                    onRestart: () {
                      context.read<NBackBloc>().add(const NBackEvent.restart());
                    },
                  ),
                  const SizedBox(height: 16),
                  Expanded(
                    child: Row(
                      children: [
                        SizedBox(
                          width: 140,
                          child: StatsPanel(state: state),
                        ),
                        Expanded(
                          child: Center(
                            child: AspectRatio(
                              aspectRatio: 1,
                              child: _NBackGrid(state: state),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 140,
                          child: ControlPanel(state: state),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class _NBackGrid extends StatelessWidget {
  final NBackState state;
  static const int gridSize = 3;

  const _NBackGrid({required this.state});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: context.colors.surface,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: context.colors.primary.withOpacity(0.3),
          width: 2,
        ),
      ),
      padding: const EdgeInsets.all(16),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: gridSize,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
        ),
        itemCount: gridSize * gridSize,
        itemBuilder: (context, index) {
          final isActive = state.currentPosition == index && 
              (state.phase == NBackPhase.showing || state.phase == NBackPhase.waiting);
          
          return AnimatedContainer(
            duration: const Duration(milliseconds: 150),
            decoration: BoxDecoration(
              color: isActive 
                  ? context.colors.primary 
                  : context.colors.surfaceLight,
              borderRadius: BorderRadius.circular(12),
              boxShadow: isActive
                  ? [
                      BoxShadow(
                        color: context.colors.primary.withOpacity(0.5),
                        blurRadius: 16,
                        spreadRadius: 2,
                      ),
                    ]
                  : null,
            ),
          );
        },
      ),
    );
  }
}


