import 'dart:async';
import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'schulte_bloc.freezed.dart';
part 'schulte_event.dart';
part 'schulte_state.dart';

@injectable
class SchulteBloc extends Bloc<SchulteEvent, SchulteState> {
  Timer? _timer;
  final Random _random = Random();

  SchulteBloc() : super(const SchulteState()) {
    on<_Start>(_onStart);
    on<_SelectNumber>(_onSelectNumber);
    on<_TimerTick>(_onTimerTick);
    on<_Restart>(_onRestart);
  }

  void _onStart(_Start event, Emitter<SchulteState> emit) {
    _timer?.cancel();
    
    final totalNumbers = event.gridRows * event.gridCols;
    final numbers = List.generate(totalNumbers, (i) => i + 1);
    numbers.shuffle(_random);

    emit(SchulteState(
      gridRows: event.gridRows,
      gridCols: event.gridCols,
      numbers: numbers,
      currentNumber: 1,
      mistakes: 0,
      time: 0,
      isCompleted: false,
      foundNumbers: {},
    ));

    _timer = Timer.periodic(const Duration(seconds: 1), (_) {
      add(const SchulteEvent.timerTick());
    });
  }

  void _onSelectNumber(_SelectNumber event, Emitter<SchulteState> emit) {
    if (state.isCompleted) return;

    if (event.number == state.currentNumber) {
      final newFoundNumbers = {...state.foundNumbers, event.number};
      final totalNumbers = state.gridRows * state.gridCols;
      final isCompleted = newFoundNumbers.length == totalNumbers;

      if (isCompleted) {
        _timer?.cancel();
      }

      emit(state.copyWith(
        currentNumber: state.currentNumber + 1,
        foundNumbers: newFoundNumbers,
        isCompleted: isCompleted,
      ));
    } else {
      emit(state.copyWith(mistakes: state.mistakes + 1));
    }
  }

  void _onTimerTick(_TimerTick event, Emitter<SchulteState> emit) {
    if (!state.isCompleted) {
      emit(state.copyWith(time: state.time + 1));
    }
  }

  void _onRestart(_Restart event, Emitter<SchulteState> emit) {
    add(SchulteEvent.start(state.gridRows, state.gridCols));
  }

  @override
  Future<void> close() {
    _timer?.cancel();
    return super.close();
  }
}
