import 'dart:async';
import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'n_back_bloc.freezed.dart';
part 'n_back_event.dart';
part 'n_back_state.dart';

enum NBackPhase { ready, showing, waiting, feedback, completed }

@injectable
class NBackBloc extends Bloc<NBackEvent, NBackState> {
  Timer? _timer;
  final Random _random = Random();
  static const int gridSize = 3;
  static const int showDuration = 500;
  static const int waitDuration = 1000;

  NBackBloc() : super(const NBackState()) {
    on<_Start>(_onStart);
    on<_ShowNext>(_onShowNext);
    on<_SwitchToWaiting>(_onSwitchToWaiting);
    on<_Timeout>(_onTimeout);
    on<_UserResponse>(_onUserResponse);
    on<_ShowFeedback>(_onShowFeedback);
    on<_Restart>(_onRestart);
  }

  void _onStart(_Start event, Emitter<NBackState> emit) {
    _timer?.cancel();

    final sequence = <int>[];
    for (int i = 0; i < event.nLevel; i++) {
      sequence.add(_random.nextInt(gridSize * gridSize));
    }
    
    emit(NBackState(
      nLevel: event.nLevel,
      sequence: sequence,
      currentIndex: 0,
      score: 0,
      mistakes: 0,
      totalTrials: 0,
      maxTrials: 20 + event.nLevel * 5,
      phase: NBackPhase.ready,
      currentPosition: null,
    ));

    _timer = Timer(const Duration(milliseconds: 1000), () {
      add(const NBackEvent.showNext());
    });
  }

  void _onShowNext(_ShowNext event, Emitter<NBackState> emit) {
    _timer?.cancel();
    
    if (state.totalTrials >= state.maxTrials) {
      emit(state.copyWith(phase: NBackPhase.completed));
      return;
    }

    int nextPosition;
    final shouldMatch = _random.nextDouble() < 0.3 && state.sequence.length >= state.nLevel;
    
    if (shouldMatch) {
      nextPosition = state.sequence[state.sequence.length - state.nLevel];
    } else {
      do {
        nextPosition = _random.nextInt(gridSize * gridSize);
      } while (state.sequence.length >= state.nLevel && 
               nextPosition == state.sequence[state.sequence.length - state.nLevel]);
    }
    
    final newSequence = [...state.sequence, nextPosition];

    final isActualMatch = newSequence.length > state.nLevel &&
        newSequence[newSequence.length - 1] == 
        newSequence[newSequence.length - 1 - state.nLevel];
    
    emit(state.copyWith(
      sequence: newSequence,
      currentIndex: newSequence.length - 1,
      currentPosition: nextPosition,
      phase: NBackPhase.showing,
      lastFeedback: null,
      isActualMatch: isActualMatch,
    ));

    _timer = Timer(const Duration(milliseconds: showDuration), () {
      add(const NBackEvent.switchToWaiting());
    });
  }

  void _onSwitchToWaiting(_SwitchToWaiting event, Emitter<NBackState> emit) {
    _timer?.cancel();
    
    if (state.phase != NBackPhase.showing) return;
    
    emit(state.copyWith(phase: NBackPhase.waiting));

    _timer = Timer(const Duration(milliseconds: waitDuration), () {
      add(const NBackEvent.timeout());
    });
  }

  void _onTimeout(_Timeout event, Emitter<NBackState> emit) {
    _timer?.cancel();
    
    if (state.phase != NBackPhase.waiting) return;

    final isCorrect = !state.isActualMatch;
    
    emit(state.copyWith(
      score: isCorrect ? state.score + 1 : state.score,
      mistakes: isCorrect ? state.mistakes : state.mistakes + 1,
      totalTrials: state.totalTrials + 1,
      phase: NBackPhase.feedback,
      lastFeedback: isCorrect,
    ));

    _timer = Timer(const Duration(milliseconds: 800), () {
      add(const NBackEvent.showNext());
    });
  }

  void _onUserResponse(_UserResponse event, Emitter<NBackState> emit) {
    _timer?.cancel();
    
    if (state.phase != NBackPhase.waiting && state.phase != NBackPhase.showing) return;
    
    final isCorrect = event.isMatch == state.isActualMatch;
    
    emit(state.copyWith(
      score: isCorrect ? state.score + 1 : state.score,
      mistakes: isCorrect ? state.mistakes : state.mistakes + 1,
      totalTrials: state.totalTrials + 1,
      phase: NBackPhase.feedback,
      lastFeedback: isCorrect,
    ));

    _timer = Timer(const Duration(milliseconds: 800), () {
      add(const NBackEvent.showNext());
    });
  }

  void _onShowFeedback(_ShowFeedback event, Emitter<NBackState> emit) {

  }

  void _onRestart(_Restart event, Emitter<NBackState> emit) {
    _timer?.cancel();
    add(NBackEvent.start(state.nLevel));
  }

  @override
  Future<void> close() {
    _timer?.cancel();
    return super.close();
  }
}
