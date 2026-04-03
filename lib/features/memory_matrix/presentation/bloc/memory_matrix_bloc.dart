import 'dart:async';
import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'memory_matrix_bloc.freezed.dart';
part 'memory_matrix_event.dart';
part 'memory_matrix_state.dart';


enum MatrixPhase { memorizing, playing, roundResult, completed }

@injectable
class MemoryMatrixBloc extends Bloc<MemoryMatrixEvent, MemoryMatrixState> {
  Timer? _timer;
  final Random _random = Random();

  MemoryMatrixBloc() : super(const MemoryMatrixState()) {
    on<_Start>(_onStart);
    on<_ToggleCell>(_onToggleCell);
    on<_TimerTick>(_onTimerTick);
    on<_Submit>(_onSubmit);
    on<_NextRound>(_onNextRound);
    on<_Restart>(_onRestart);
  }

  int _getGridSize(int round) {
    if (round <= 5) return 3;
    if (round <= 10) return 4;
    if (round <= 15) return 4;
    if (round <= 20) return 5;
    if (round <= 25) return 5;
    return 6;
  }

  int _getHighlightCount(int round) {
    if (round <= 5) return 3 + (round - 1) ~/ 2;
    if (round <= 10) return 4 + (round - 6) ~/ 2;
    if (round <= 15) return 5 + (round - 11) ~/ 2;
    if (round <= 20) return 6 + (round - 16) ~/ 2;
    if (round <= 25) return 7 + (round - 21) ~/ 2;
    return 8 + (round - 26) ~/ 2;
  }

  List<int> _generateTargetCells(int gridSize, int count) {
    final totalCells = gridSize * gridSize;
    final cells = List.generate(totalCells, (i) => i);
    cells.shuffle(_random);
    return cells.take(count).toList()..sort();
  }

  void _onStart(_Start event, Emitter<MemoryMatrixState> emit) {
    _startRound(emit, 1);
  }

  void _startRound(Emitter<MemoryMatrixState> emit, int round) {
    _timer?.cancel();

    final gridSize = _getGridSize(round);
    final highlightCount = _getHighlightCount(round);
    final targetCells = _generateTargetCells(gridSize, highlightCount);

    emit(MemoryMatrixState(
      gridSize: gridSize,
      highlightedCount: highlightCount,
      targetCells: targetCells,
      userCells: [],
      phase: MatrixPhase.memorizing,
      memorizeTimeLeft: 3,
      totalTime: state.totalTime,
      currentRound: round,
      totalRounds: 30,
      mistakes: state.mistakes,
    ));

    _timer = Timer.periodic(const Duration(seconds: 1), (_) {
      add(const MemoryMatrixEvent.timerTick());
    });
  }

  void _onToggleCell(_ToggleCell event, Emitter<MemoryMatrixState> emit) {
    if (state.phase != MatrixPhase.playing) return;

    final userCells = List<int>.from(state.userCells);
    
    if (userCells.contains(event.index)) {
      userCells.remove(event.index);
    } else {
      userCells.add(event.index);
    }

    emit(state.copyWith(userCells: userCells));
  }

  void _onTimerTick(_TimerTick event, Emitter<MemoryMatrixState> emit) {
    if (state.phase == MatrixPhase.memorizing) {
      if (state.memorizeTimeLeft > 1) {
        emit(state.copyWith(memorizeTimeLeft: state.memorizeTimeLeft - 1));
      } else {
        _timer?.cancel();
        emit(state.copyWith(
          phase: MatrixPhase.playing,
          memorizeTimeLeft: 0,
        ));
        _timer = Timer.periodic(const Duration(seconds: 1), (_) {
          add(const MemoryMatrixEvent.timerTick());
        });
      }
    } else if (state.phase == MatrixPhase.playing) {
      emit(state.copyWith(totalTime: state.totalTime + 1));
    }
  }

  void _onSubmit(_Submit event, Emitter<MemoryMatrixState> emit) {
    _timer?.cancel();

    final targetSet = state.targetCells.toSet();
    final userSet = state.userCells.toSet();
    final isCorrect = targetSet.length == userSet.length &&
        targetSet.difference(userSet).isEmpty;

    final newMistakes = isCorrect ? state.mistakes : state.mistakes + 1;
    final isCompleted = state.currentRound >= state.totalRounds;

    emit(state.copyWith(
      phase: isCompleted ? MatrixPhase.completed : MatrixPhase.roundResult,
      roundCorrect: isCorrect,
      mistakes: newMistakes,
    ));
  }

  void _onNextRound(_NextRound event, Emitter<MemoryMatrixState> emit) {
    if (state.currentRound < state.totalRounds) {
      _startRound(emit, state.currentRound + 1);
    }
  }

  void _onRestart(_Restart event, Emitter<MemoryMatrixState> emit) {
    emit(const MemoryMatrixState());
    add(const MemoryMatrixEvent.start());
  }

  @override
  Future<void> close() {
    _timer?.cancel();
    return super.close();
  }
}
