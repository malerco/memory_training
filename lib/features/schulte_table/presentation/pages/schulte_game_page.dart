import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/extensions/context_extensions.dart';

import '../../../../core/utils/orientation_helper.dart';
import '../../../../core/widgets/game_app_bar.dart';
import '../../../../core/widgets/game_result_dialog.dart';
import '../../../../core/widgets/game_stats_display.dart';
import '../bloc/schulte_bloc.dart';

class SchulteGamePage extends StatefulWidget {
  final int gridRows;
  final int gridCols;

  const SchulteGamePage({super.key, required this.gridRows, required this.gridCols});

  @override
  State<SchulteGamePage> createState() => _SchulteGamePageState();
}

class _SchulteGamePageState extends State<SchulteGamePage> with LandscapeModeMixin {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SchulteBloc()..add(SchulteEvent.start(widget.gridRows, widget.gridCols)),
      child: const _GameView(),
    );
  }
}

class _GameView extends StatelessWidget {
  const _GameView();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SchulteBloc, SchulteState>(
      listenWhen: (prev, curr) => !prev.isCompleted && curr.isCompleted,
      listener: (context, state) {
        GameResultDialog.show(
          context,
          isSuccess: true,
          time: state.time,
          mistakes: state.mistakes,
          onRestart: () {
            context.read<SchulteBloc>().add(const SchulteEvent.restart());
          },
          gameType: 'schulte',
          rows: state.gridRows,
          cols: state.gridCols,
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
                      context.read<SchulteBloc>().add(const SchulteEvent.restart());
                    },
                  ),
                  const SizedBox(height: 16),
                  Expanded(
                    child: Row(
                      children: [
                        SizedBox(
                          width: 120,
                          child: GameStatsDisplay(
                            mistakes: state.mistakes,
                            time: state.time,
                            currentNumber: state.currentNumber,
                          ),
                        ),
                        Expanded(
                          child: Center(
                            child: AspectRatio(
                              aspectRatio: (state.gridCols / state.gridRows) ,
                              child: GridView.builder(
                                physics: const NeverScrollableScrollPhysics(),
                                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: state.gridCols,
                                  crossAxisSpacing: 2,
                                  mainAxisSpacing: 2,
                                ),
                                itemCount: state.numbers.length,
                                itemBuilder: (context, index) {
                                  final number = state.numbers[index];
                                  final isFound = state.foundNumbers.contains(number);

                                  return _NumberCell(
                                    currentNumber: state.currentNumber,
                                    number: number,
                                    isFound: isFound,
                                    onTap: isFound
                                        ? null
                                        : () {
                                            context.read<SchulteBloc>().add(
                                              SchulteEvent.selectNumber(number),
                                            );
                                          },
                                  );
                                },
                              ),
                            ).animate().fadeIn().scale(
                              begin: const Offset(0.95, 0.95),
                              curve: Curves.easeOut,
                            ),
                          ),
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

class _NumberCell extends StatefulWidget {
  final int number;
  final bool isFound;
  final int currentNumber;
  final VoidCallback? onTap;

  const _NumberCell({
    required this.currentNumber,
    required this.number,
    required this.isFound,
    this.onTap,
  });

  @override
  State<_NumberCell> createState() => _NumberCellState();
}

class _NumberCellState extends State<_NumberCell> {

  Color? _color;

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    _color ??= context.colors.cardFront;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        if (widget.currentNumber == widget.number) {
          setState(() {
            _color = context.colors.success;
          });
        }else{
          setState(() {
            _color = context.colors.error;
          });
        }
        Future.delayed(Duration(milliseconds: 200), (){
          setState(() {
            _color = context.colors.cardFront;
          });
        });
        widget.onTap?.call();
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        curve: Curves.easeInOut,
        decoration: BoxDecoration(
          color: _color ?? context.colors.cardFront,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: context.colors.surfaceLight,
            width: 2,
          ),
        ),
        child: Center(
          child: Text(
            '${widget.number}',
            style: context.textStyles.titleLarge?.copyWith(
              color: context.colors.blackNumber,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
