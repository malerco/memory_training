import 'dart:async';
import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'sequence_memory_bloc.freezed.dart';
part 'sequence_memory_event.dart';
part 'sequence_memory_state.dart';

enum SequencePhase { ready, showing, playing, success, failed, completed }

@injectable
class SequenceMemoryBloc extends Bloc<SequenceMemoryEvent, SequenceMemoryState> {
  Timer? _timer;
  final Random _random = Random();
  static const int showInterval = 600;
  static const int pauseInterval = 200;

  SequenceMemoryBloc() : super(const SequenceMemoryState()) {
    on<_Start>(_onStart);
    on<_ShowSequence>(_onShowSequence);
    on<_ShowNextItem>(_onShowNextItem);
    on<_HideItem>(_onHideItem);
    on<_FinishShowing>(_onFinishShowing);
    on<_UserTap>(_onUserTap);
    on<_NextLevel>(_onNextLevel);
    on<_Restart>(_onRestart);
  }

  void _onStart(_Start event, Emitter<SequenceMemoryState> emit) {
    _timer?.cancel();

    final initialPosition = _random.nextInt(event.gridSize * event.gridSize);
    
    emit(SequenceMemoryState(
      gridSize: event.gridSize,
      sequence: [initialPosition],
      userIndex: 0,
      level: 1,
      score: 0,
      phase: SequencePhase.ready,
    ));

    _timer = Timer(const Duration(milliseconds: 500), () {
      add(const SequenceMemoryEvent.showSequence());
    });
  }

  void _onShowSequence(_ShowSequence event, Emitter<SequenceMemoryState> emit) {
    emit(state.copyWith(
      phase: SequencePhase.showing,
      showingIndex: null,
    ));

    _timer = Timer(const Duration(milliseconds: 300), () {
      add(const SequenceMemoryEvent.showNextItem(0));
    });
  }

  void _onShowNextItem(_ShowNextItem event, Emitter<SequenceMemoryState> emit) {
    _timer?.cancel();
    
    if (event.index >= state.sequence.length) {
      add(const SequenceMemoryEvent.finishShowing());
      return;
    }
    
    emit(state.copyWith(showingIndex: event.index));

    _timer = Timer(const Duration(milliseconds: showInterval), () {
      add(SequenceMemoryEvent.hideItem(event.index + 1));
    });
  }

  void _onHideItem(_HideItem event, Emitter<SequenceMemoryState> emit) {
    _timer?.cancel();
    
    emit(state.copyWith(showingIndex: null));

    _timer = Timer(const Duration(milliseconds: pauseInterval), () {
      add(SequenceMemoryEvent.showNextItem(event.nextIndex));
    });
  }

  void _onFinishShowing(_FinishShowing event, Emitter<SequenceMemoryState> emit) {
    _timer?.cancel();
    
    emit(state.copyWith(
      phase: SequencePhase.playing,
      showingIndex: null,
      userIndex: 0,
    ));
  }

  void _onUserTap(_UserTap event, Emitter<SequenceMemoryState> emit) {
    if (state.phase != SequencePhase.playing) return;
    
    final expectedPosition = state.sequence[state.userIndex];
    final isCorrect = event.position == expectedPosition;
    
    emit(state.copyWith(
      lastTappedPosition: event.position,
      lastTapCorrect: isCorrect,
    ));
    
    if (!isCorrect) {
      emit(state.copyWith(
        phase: SequencePhase.failed,
      ));
      return;
    }

    final newUserIndex = state.userIndex + 1;
    
    if (newUserIndex >= state.sequence.length) {
      emit(state.copyWith(
        userIndex: newUserIndex,
        score: state.score + state.level,
        phase: SequencePhase.success,
      ));

      _timer = Timer(const Duration(milliseconds: 1000), () {
        add(const SequenceMemoryEvent.nextLevel());
      });
    } else {
      emit(state.copyWith(
        userIndex: newUserIndex,
        lastTappedPosition: null,
      ));
    }
  }

  void _onNextLevel(_NextLevel event, Emitter<SequenceMemoryState> emit) {
    _timer?.cancel();

    final newPosition = _random.nextInt(state.gridSize * state.gridSize);
    final newSequence = [...state.sequence, newPosition];
    
    emit(state.copyWith(
      sequence: newSequence,
      level: state.level + 1,
      userIndex: 0,
      phase: SequencePhase.ready,
      lastTappedPosition: null,
    ));

    _timer = Timer(const Duration(milliseconds: 500), () {
      add(const SequenceMemoryEvent.showSequence());
    });
  }

  void _onRestart(_Restart event, Emitter<SequenceMemoryState> emit) {
    _timer?.cancel();
    add(SequenceMemoryEvent.start(state.gridSize));
  }

  @override
  Future<void> close() {
    _timer?.cancel();
    return super.close();
  }
}
