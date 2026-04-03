import 'dart:async';
import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/gorbov_number_model.dart';

part 'gorbov_bloc.freezed.dart';
part 'gorbov_event.dart';
part 'gorbov_state.dart';

enum NumberColor { black, red }

@injectable
class GorbovBloc extends Bloc<GorbovEvent, GorbovState> {
  Timer? _timer;
  final Random _random = Random();

  GorbovBloc() : super(const GorbovState()) {
    on<_Start>(_onStart);
    on<_SelectNumber>(_onSelectNumber);
    on<_TimerTick>(_onTimerTick);
    on<_Restart>(_onRestart);
  }

  void _onStart(_Start event, Emitter<GorbovState> emit) {
    _timer?.cancel();
    
    final totalCells = event.rows * event.cols;

    final halfCount = totalCells ~/ 2;
    final blackCount = halfCount;
    final redCount = totalCells - halfCount;

    final numbers = <GorbovNumber>[];

    for (int i = 1; i <= blackCount; i++) {
      numbers.add(GorbovNumber(value: i, color: NumberColor.black));
    }

    for (int i = redCount; i >= 1; i--) {
      numbers.add(GorbovNumber(value: i, color: NumberColor.red));
    }
    
    numbers.shuffle(_random);

    emit(GorbovState(
      rows: event.rows,
      cols: event.cols,
      numbers: numbers,
      currentBlack: 1,
      currentRed: redCount,
      expectingBlack: true,
      mistakes: 0,
      time: 0,
      isCompleted: false,
      foundNumbers: {},
      maxBlack: blackCount,
      maxRed: redCount,
    ));

    _timer = Timer.periodic(const Duration(seconds: 1), (_) {
      add(const GorbovEvent.timerTick());
    });
  }

  void _onSelectNumber(_SelectNumber event, Emitter<GorbovState> emit) {
    if (state.isCompleted) return;

    final number = event.number;
    final isCorrect = (state.expectingBlack &&
            number.color == NumberColor.black &&
            number.value == state.currentBlack) ||
        (!state.expectingBlack &&
            number.color == NumberColor.red &&
            number.value == state.currentRed);

    if (isCorrect) {
      final key = '${number.color.name}-${number.value}';
      final newFoundNumbers = {...state.foundNumbers, key};

      int newBlack = state.currentBlack;
      int newRed = state.currentRed;
      bool newExpecting = !state.expectingBlack;

      if (state.expectingBlack) {
        newBlack = state.currentBlack + 1;
      } else {
        newRed = state.currentRed - 1;
      }

      final isCompleted = newBlack > state.maxBlack && newRed < 1;

      if (isCompleted) {
        _timer?.cancel();
      }

      emit(state.copyWith(
        currentBlack: newBlack,
        currentRed: newRed,
        expectingBlack: newExpecting,
        foundNumbers: newFoundNumbers,
        isCompleted: isCompleted,
      ));
    } else {
      emit(state.copyWith(mistakes: state.mistakes + 1));
    }
  }

  void _onTimerTick(_TimerTick event, Emitter<GorbovState> emit) {
    if (!state.isCompleted) {
      emit(state.copyWith(time: state.time + 1));
    }
  }

  void _onRestart(_Restart event, Emitter<GorbovState> emit) {
    add(GorbovEvent.start(rows: state.rows, cols: state.cols));
  }

  @override
  Future<void> close() {
    _timer?.cancel();
    return super.close();
  }
}
