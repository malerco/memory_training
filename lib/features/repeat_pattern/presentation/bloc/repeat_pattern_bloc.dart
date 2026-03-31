import 'dart:async';
import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/connection_model.dart';

part 'repeat_pattern_bloc.freezed.dart';
part 'repeat_pattern_event.dart';
part 'repeat_pattern_state.dart';

enum ConnectionDirection { horizontal, vertical }

enum GamePhase { memorizing, playing, completed }

@injectable
class RepeatPatternBloc extends Bloc<RepeatPatternEvent, RepeatPatternState> {
  Timer? _timer;
  final Random _random = Random();

  RepeatPatternBloc() : super(const RepeatPatternState()) {
    on<_Start>(_onStart);
    on<_ToggleConnection>(_onToggleConnection);
    on<_TimerTick>(_onTimerTick);
    on<_Submit>(_onSubmit);
    on<_Restart>(_onRestart);
  }

  List<Connection> _generatePattern(int rows, int cols) {
    final used = List.generate(rows, (_) => List.filled(cols, false));
    final connections = <Connection>[];

    if (_backtrack(rows, cols, used, connections, 0)) {
      connections.shuffle(_random);
      return connections;
    }

    return connections;
  }

  bool _backtrack(int rows, int cols, List<List<bool>> used, List<Connection> connections, int startIdx) {
    int startRow = startIdx ~/ cols;
    int startCol = startIdx % cols;

    int unusedRow = -1;
    int unusedCol = -1;

    for (int r = startRow; r < rows; r++) {
      for (int c = (r == startRow ? startCol : 0); c < cols; c++) {
        if (!used[r][c]) {
          unusedRow = r;
          unusedCol = c;
          break;
        }
      }
      if (unusedRow != -1) break;
    }

    if (unusedRow == -1) return true;

    final neighbors = <List<int>>[];

    if (unusedCol < cols - 1 && !used[unusedRow][unusedCol + 1]) {
      neighbors.add([unusedRow, unusedCol + 1, 0]);
    }

    if (unusedRow < rows - 1 && !used[unusedRow + 1][unusedCol]) {
      neighbors.add([unusedRow + 1, unusedCol, 1]);
    }

    if (unusedCol > 0 && !used[unusedRow][unusedCol - 1]) {
      neighbors.add([unusedRow, unusedCol - 1, 2]);
    }

    if (unusedRow > 0 && !used[unusedRow - 1][unusedCol]) {
      neighbors.add([unusedRow - 1, unusedCol, 3]);
    }

    neighbors.shuffle(_random);

    for (final neighbor in neighbors) {
      final nr = neighbor[0];
      final nc = neighbor[1];
      final dir = neighbor[2];

      used[unusedRow][unusedCol] = true;
      used[nr][nc] = true;

      Connection connection;
      if (dir == 0) {
        connection = Connection(row: unusedRow, col: unusedCol, direction: ConnectionDirection.horizontal);
      } else if (dir == 1) {
        connection = Connection(row: unusedRow, col: unusedCol, direction: ConnectionDirection.vertical);
      } else if (dir == 2) {
        connection = Connection(row: unusedRow, col: nc, direction: ConnectionDirection.horizontal);
      } else {
        connection = Connection(row: nr, col: unusedCol, direction: ConnectionDirection.vertical);
      }

      connections.add(connection);

      final nextIdx = unusedRow * cols + unusedCol + 1;

      if (_backtrack(rows, cols, used, connections, nextIdx)) {
        return true;
      }

      connections.removeLast();
      used[unusedRow][unusedCol] = false;
      used[nr][nc] = false;
    }

    return false;
  }

  void _onStart(_Start event, Emitter<RepeatPatternState> emit) {
    _timer?.cancel();

    final pattern = _generatePattern(event.rows, event.cols);

    emit(RepeatPatternState(
      rows: event.rows,
      cols: event.cols,
      targetPattern: pattern,
      userPattern: [],
      phase: GamePhase.memorizing,
      memorizeTimeLeft: 10,
      playTime: 0,
    ));

    _startMemorizeTimer();
  }

  void _startMemorizeTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (_) {
      add(const RepeatPatternEvent.timerTick());
    });
  }

  void _startPlayTimer() {
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 1), (_) {
      add(const RepeatPatternEvent.timerTick());
    });
  }

  void _onTimerTick(_TimerTick event, Emitter<RepeatPatternState> emit) {
    if (state.phase == GamePhase.memorizing) {
      if (state.memorizeTimeLeft > 1) {
        emit(state.copyWith(memorizeTimeLeft: state.memorizeTimeLeft - 1));
      } else {
        _timer?.cancel();
        emit(state.copyWith(
          phase: GamePhase.playing,
          memorizeTimeLeft: 0,
        ));
        _startPlayTimer();
      }
    } else if (state.phase == GamePhase.playing) {
      emit(state.copyWith(playTime: state.playTime + 1));
    }
  }

  bool _isDotUsed(List<Connection> connections, int row, int col) {
    for (final c in connections) {
      if (c.row == row && c.col == col) return true;

      if (c.direction == ConnectionDirection.horizontal) {
        if (c.row == row && c.col + 1 == col) return true;
      } else {
        if (c.row + 1 == row && c.col == col) return true;
      }
    }
    return false;
  }

  void _removeConnectionsUsingDot(List<Connection> connections, int row, int col) {
    connections.removeWhere((c) {
      if (c.row == row && c.col == col) return true;

      if (c.direction == ConnectionDirection.horizontal) {
        if (c.row == row && c.col + 1 == col) return true;
      } else {
        if (c.row + 1 == row && c.col == col) return true;
      }
      return false;
    });
  }

  void _onToggleConnection(_ToggleConnection event, Emitter<RepeatPatternState> emit) {
    if (state.phase != GamePhase.playing) return;

    final userPattern = List<Connection>.from(state.userPattern);
    final conn = event.connection;

    final dot1Row = conn.row;
    final dot1Col = conn.col;
    final dot2Row = conn.direction == ConnectionDirection.horizontal ? conn.row : conn.row + 1;
    final dot2Col = conn.direction == ConnectionDirection.horizontal ? conn.col + 1 : conn.col;

    final existingIndex = userPattern.indexWhere((c) =>
    c.row == conn.row &&
        c.col == conn.col &&
        c.direction == conn.direction);

    if (existingIndex != -1) {
      userPattern.removeAt(existingIndex);
    } else {
      _removeConnectionsUsingDot(userPattern, dot1Row, dot1Col);
      _removeConnectionsUsingDot(userPattern, dot2Row, dot2Col);

      userPattern.add(conn);
    }

    emit(state.copyWith(userPattern: userPattern));
  }

  void _onSubmit(_Submit event, Emitter<RepeatPatternState> emit) {
    _timer?.cancel();

    final targetSet = state.targetPattern.map((c) => '${c.row}-${c.col}-${c.direction}').toSet();
    final userSet = state.userPattern.map((c) => '${c.row}-${c.col}-${c.direction}').toSet();

    final isCorrect = targetSet.length == userSet.length &&
        targetSet.difference(userSet).isEmpty;

    emit(state.copyWith(
      phase: GamePhase.completed,
      isCorrect: isCorrect,
    ));
  }

  void _onRestart(_Restart event, Emitter<RepeatPatternState> emit) {
    add(RepeatPatternEvent.start(rows: state.rows, cols: state.cols));
  }

  @override
  Future<void> close() {
    _timer?.cancel();
    return super.close();
  }
}
