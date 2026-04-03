import 'dart:async';
import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'object_location_bloc.freezed.dart';
part 'object_location_event.dart';
part 'object_location_state.dart';

enum ObjectLocationPhase { memorizing, playing, checking, roundComplete, gameOver }

@injectable
class ObjectLocationBloc extends Bloc<ObjectLocationEvent, ObjectLocationState> {
  final Random _random = Random();
  Timer? _timer;
  static const int totalObjectTypes = 20;

  ObjectLocationBloc() : super(const ObjectLocationState()) {
    on<_Start>(_onStart);
    on<_TapCell>(_onTapCell);
    on<_Submit>(_onSubmit);
    on<_NextRound>(_onNextRound);
    on<_Restart>(_onRestart);
  }

  void _onStart(_Start event, Emitter<ObjectLocationState> emit) {
    _timer?.cancel();
    
    final positions = _generatePositions(event.gridSize, 3);
    
    emit(ObjectLocationState(
      gridSize: event.gridSize,
      objectCount: 3,
      objectPositions: positions,
      userAnswers: {},
      phase: ObjectLocationPhase.memorizing,
      score: 0,
      round: 1,
      memorizeTimeLeft: 3,
    ));

    _startMemorizeTimer();
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

    final objectTypes = <int>[];
    while (objectTypes.length < count) {
      final objType = _random.nextInt(totalObjectTypes);
      if (!objectTypes.contains(objType)) {
        objectTypes.add(objType);
      }
    }

    final result = <int, int>{};
    for (int i = 0; i < count; i++) {
      result[positions[i]] = objectTypes[i];
    }

    return result;
  }

  void _startMemorizeTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (_) {
      if (state.memorizeTimeLeft > 1) {
        emit(state.copyWith(memorizeTimeLeft: state.memorizeTimeLeft - 1));
      } else {
        _timer?.cancel();
        emit(state.copyWith(
          phase: ObjectLocationPhase.playing,
          memorizeTimeLeft: 0,
        ));
      }
    });
  }

  void _onTapCell(_TapCell event, Emitter<ObjectLocationState> emit) {
    if (state.phase != ObjectLocationPhase.playing) return;

    final userAnswers = Map<int, int>.from(state.userAnswers);
    
    if (userAnswers.containsKey(event.index)) {
      userAnswers.remove(event.index);
    } else if (userAnswers.length < state.objectCount) {
      final placedObjects = userAnswers.values.toSet();
      final allObjects = state.objectPositions.values.toSet();
      
      for (final obj in allObjects) {
        if (!placedObjects.contains(obj)) {
          userAnswers[event.index] = obj;
          break;
        }
      }
    }
    
    emit(state.copyWith(userAnswers: userAnswers));
  }

  void _onSubmit(_Submit event, Emitter<ObjectLocationState> emit) {
    if (state.phase != ObjectLocationPhase.playing) return;

    int correctCount = 0;
    for (final entry in state.userAnswers.entries) {
      if (state.objectPositions[entry.key] == entry.value) {
        correctCount++;
      }
    }

    final allCorrect = correctCount == state.objectCount;
    
    emit(state.copyWith(
      phase: allCorrect ? ObjectLocationPhase.roundComplete : ObjectLocationPhase.gameOver,
      correctCount: correctCount,
      score: state.score + correctCount,
    ));
  }

  void _onNextRound(_NextRound event, Emitter<ObjectLocationState> emit) {
    _timer?.cancel();
    
    final newCount = state.objectCount + 1;
    final positions = _generatePositions(state.gridSize, newCount);
    
    emit(state.copyWith(
      objectCount: newCount,
      objectPositions: positions,
      userAnswers: {},
      phase: ObjectLocationPhase.memorizing,
      round: state.round + 1,
      memorizeTimeLeft: 3 + (newCount ~/ 2),
    ));

    _startMemorizeTimer();
  }

  void _onRestart(_Restart event, Emitter<ObjectLocationState> emit) {
    add(ObjectLocationEvent.start(gridSize: state.gridSize));
  }

  @override
  Future<void> close() {
    _timer?.cancel();
    return super.close();
  }
}
