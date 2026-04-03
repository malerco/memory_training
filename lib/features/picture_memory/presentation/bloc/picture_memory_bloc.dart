import 'dart:async';
import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'picture_memory_bloc.freezed.dart';
part 'picture_memory_event.dart';
part 'picture_memory_state.dart';

enum PictureMemoryPhase { playing, gameOver }

@injectable
class PictureMemoryBloc extends Bloc<PictureMemoryEvent, PictureMemoryState> {
  final Random _random = Random();
  static const int maxLives = 3;
  static const int totalPictures = 50;

  PictureMemoryBloc() : super(const PictureMemoryState()) {
    on<_Start>(_onStart);
    on<_Answer>(_onAnswer);
    on<_Restart>(_onRestart);
  }

  void _onStart(_Start event, Emitter<PictureMemoryState> emit) {
    final firstPicture = _random.nextInt(totalPictures);
    
    emit(PictureMemoryState(
      pictureCount: event.pictureCount,
      seenPictures: [firstPicture],
      currentPicture: firstPicture,
      currentIsNew: true,
      phase: PictureMemoryPhase.playing,
      score: 0,
      lives: maxLives,
      round: 1,
    ));
  }

  void _onAnswer(_Answer event, Emitter<PictureMemoryState> emit) {
    if (state.phase != PictureMemoryPhase.playing) return;

    final wasCorrect = event.sawBefore != state.currentIsNew;
    
    if (wasCorrect) {
      _nextRound(emit, state.score + 1, state.lives);
    } else {
      final newLives = state.lives - 1;
      if (newLives <= 0) {
        emit(state.copyWith(
          phase: PictureMemoryPhase.gameOver,
          lives: 0,
        ));
      } else {
        _nextRound(emit, state.score, newLives);
      }
    }
  }

  void _nextRound(Emitter<PictureMemoryState> emit, int newScore, int newLives) {
    final seenPictures = List<int>.from(state.seenPictures);

    final showNewPicture = seenPictures.length < 3 || _random.nextDouble() > 0.4;
    
    int nextPicture;
    bool isNew;
    
    if (showNewPicture) {
      do {
        nextPicture = _random.nextInt(totalPictures);
      } while (seenPictures.contains(nextPicture));
      seenPictures.add(nextPicture);
      isNew = true;
    } else {
      nextPicture = seenPictures[_random.nextInt(seenPictures.length)];
      isNew = false;
    }
    
    emit(state.copyWith(
      seenPictures: seenPictures,
      currentPicture: nextPicture,
      currentIsNew: isNew,
      score: newScore,
      lives: newLives,
      round: state.round + 1,
    ));
  }

  void _onRestart(_Restart event, Emitter<PictureMemoryState> emit) {
    add(PictureMemoryEvent.start(pictureCount: state.pictureCount));
  }
}
