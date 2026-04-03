import 'dart:async';
import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'chimp_test_bloc.freezed.dart';
part 'chimp_test_event.dart';
part 'chimp_test_state.dart';

enum ChimpTestPhase { showing, hiding, playing, roundComplete, gameOver }

@injectable
class ChimpTestBloc extends Bloc<ChimpTestEvent, ChimpTestState> {
  final Random _random = Random();
  Timer? _hideTimer;

  ChimpTestBloc() : super(const ChimpTestState()) {
    on<_Start>(_onStart);
    on<_TapCell>(_onTapCell);
    on<_NextRound>(_onNextRound);
    on<_Restart>(_onRestart);
  }

  void _onStart(_Start event, Emitter<ChimpTestState> emit) {
    _hideTimer?.cancel();
    
    final positions = _generatePositions(event.gridSize, 4);
    
    emit(ChimpTestState(
      gridSize: event.gridSize,
      numbersCount: 4,
      numberPositions: positions,
      nextExpectedNumber: 1,
      phase: ChimpTestPhase.showing,
      score: 0,
      highestLevel: 4,
      showNumbers: true,
    ));

    _startHideTimer(1);
  }

  void _startHideTimer(int numberCount) {
    _hideTimer?.cancel();
    _hideTimer = Timer(Duration(milliseconds: 2000 + (numberCount * 200)), () {
      add(const ChimpTestEvent.tapCell(-1));
    });
  }

  Map<int, int> _generatePositions(int gridSize, int count) {
    final totalCells = gridSize * gridSize;
    final positions = <int>[];
    
    while (positions.length < count) {
      final pos = _random.nextInt(totalCells);
      if (!positions.contains(pos)) {
        positions.add(pos);
      }
    }
    
    final result = <int, int>{};
    for (int i = 0; i < count; i++) {
      result[positions[i]] = i + 1;
    }
    
    return result;
  }

  void _onTapCell(_TapCell event, Emitter<ChimpTestState> emit) {
    if (event.index == -1 && state.phase == ChimpTestPhase.showing) {
      emit(state.copyWith(
        phase: ChimpTestPhase.playing,
        showNumbers: false,
      ));
      return;
    }

    if (state.phase != ChimpTestPhase.playing) return;

    final number = state.numberPositions[event.index];
    if (number == null) return;

    if (number == state.nextExpectedNumber) {
      final newPositions = Map<int, int>.from(state.numberPositions);
      newPositions.remove(event.index);
      
      if (newPositions.isEmpty) {
        emit(state.copyWith(
          numberPositions: newPositions,
          phase: ChimpTestPhase.roundComplete,
          score: state.score + state.numbersCount,
          highestLevel: state.numbersCount,
        ));
      } else {
        emit(state.copyWith(
          numberPositions: newPositions,
          nextExpectedNumber: state.nextExpectedNumber + 1,
        ));
      }
    } else {
      emit(state.copyWith(
        phase: ChimpTestPhase.gameOver,
      ));
    }
  }

  void _onNextRound(_NextRound event, Emitter<ChimpTestState> emit) {
    _hideTimer?.cancel();
    
    final newCount = state.numbersCount + 1;
    final positions = _generatePositions(state.gridSize, newCount);
    
    emit(state.copyWith(
      numbersCount: newCount,
      numberPositions: positions,
      nextExpectedNumber: 1,
      phase: ChimpTestPhase.showing,
      showNumbers: true,
    ));

    _startHideTimer(newCount);
  }

  void _onRestart(_Restart event, Emitter<ChimpTestState> emit) {
    add(ChimpTestEvent.start(gridSize: state.gridSize));
  }

  @override
  Future<void> close() {
    _hideTimer?.cancel();
    return super.close();
  }
}
