// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'repeat_pattern_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$RepeatPatternEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int rows, int cols) start,
    required TResult Function(Connection connection) toggleConnection,
    required TResult Function() timerTick,
    required TResult Function() submit,
    required TResult Function() restart,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int rows, int cols)? start,
    TResult? Function(Connection connection)? toggleConnection,
    TResult? Function()? timerTick,
    TResult? Function()? submit,
    TResult? Function()? restart,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int rows, int cols)? start,
    TResult Function(Connection connection)? toggleConnection,
    TResult Function()? timerTick,
    TResult Function()? submit,
    TResult Function()? restart,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Start value) start,
    required TResult Function(_ToggleConnection value) toggleConnection,
    required TResult Function(_TimerTick value) timerTick,
    required TResult Function(_Submit value) submit,
    required TResult Function(_Restart value) restart,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Start value)? start,
    TResult? Function(_ToggleConnection value)? toggleConnection,
    TResult? Function(_TimerTick value)? timerTick,
    TResult? Function(_Submit value)? submit,
    TResult? Function(_Restart value)? restart,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_ToggleConnection value)? toggleConnection,
    TResult Function(_TimerTick value)? timerTick,
    TResult Function(_Submit value)? submit,
    TResult Function(_Restart value)? restart,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepeatPatternEventCopyWith<$Res> {
  factory $RepeatPatternEventCopyWith(
    RepeatPatternEvent value,
    $Res Function(RepeatPatternEvent) then,
  ) = _$RepeatPatternEventCopyWithImpl<$Res, RepeatPatternEvent>;
}

/// @nodoc
class _$RepeatPatternEventCopyWithImpl<$Res, $Val extends RepeatPatternEvent>
    implements $RepeatPatternEventCopyWith<$Res> {
  _$RepeatPatternEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RepeatPatternEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartImplCopyWith<$Res> {
  factory _$$StartImplCopyWith(
    _$StartImpl value,
    $Res Function(_$StartImpl) then,
  ) = __$$StartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int rows, int cols});
}

/// @nodoc
class __$$StartImplCopyWithImpl<$Res>
    extends _$RepeatPatternEventCopyWithImpl<$Res, _$StartImpl>
    implements _$$StartImplCopyWith<$Res> {
  __$$StartImplCopyWithImpl(
    _$StartImpl _value,
    $Res Function(_$StartImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RepeatPatternEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? rows = null, Object? cols = null}) {
    return _then(
      _$StartImpl(
        rows: null == rows
            ? _value.rows
            : rows // ignore: cast_nullable_to_non_nullable
                  as int,
        cols: null == cols
            ? _value.cols
            : cols // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$StartImpl implements _Start {
  const _$StartImpl({required this.rows, required this.cols});

  @override
  final int rows;
  @override
  final int cols;

  @override
  String toString() {
    return 'RepeatPatternEvent.start(rows: $rows, cols: $cols)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartImpl &&
            (identical(other.rows, rows) || other.rows == rows) &&
            (identical(other.cols, cols) || other.cols == cols));
  }

  @override
  int get hashCode => Object.hash(runtimeType, rows, cols);

  /// Create a copy of RepeatPatternEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StartImplCopyWith<_$StartImpl> get copyWith =>
      __$$StartImplCopyWithImpl<_$StartImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int rows, int cols) start,
    required TResult Function(Connection connection) toggleConnection,
    required TResult Function() timerTick,
    required TResult Function() submit,
    required TResult Function() restart,
  }) {
    return start(rows, cols);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int rows, int cols)? start,
    TResult? Function(Connection connection)? toggleConnection,
    TResult? Function()? timerTick,
    TResult? Function()? submit,
    TResult? Function()? restart,
  }) {
    return start?.call(rows, cols);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int rows, int cols)? start,
    TResult Function(Connection connection)? toggleConnection,
    TResult Function()? timerTick,
    TResult Function()? submit,
    TResult Function()? restart,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(rows, cols);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Start value) start,
    required TResult Function(_ToggleConnection value) toggleConnection,
    required TResult Function(_TimerTick value) timerTick,
    required TResult Function(_Submit value) submit,
    required TResult Function(_Restart value) restart,
  }) {
    return start(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Start value)? start,
    TResult? Function(_ToggleConnection value)? toggleConnection,
    TResult? Function(_TimerTick value)? timerTick,
    TResult? Function(_Submit value)? submit,
    TResult? Function(_Restart value)? restart,
  }) {
    return start?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_ToggleConnection value)? toggleConnection,
    TResult Function(_TimerTick value)? timerTick,
    TResult Function(_Submit value)? submit,
    TResult Function(_Restart value)? restart,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(this);
    }
    return orElse();
  }
}

abstract class _Start implements RepeatPatternEvent {
  const factory _Start({required final int rows, required final int cols}) =
      _$StartImpl;

  int get rows;
  int get cols;

  /// Create a copy of RepeatPatternEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StartImplCopyWith<_$StartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ToggleConnectionImplCopyWith<$Res> {
  factory _$$ToggleConnectionImplCopyWith(
    _$ToggleConnectionImpl value,
    $Res Function(_$ToggleConnectionImpl) then,
  ) = __$$ToggleConnectionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Connection connection});

  $ConnectionCopyWith<$Res> get connection;
}

/// @nodoc
class __$$ToggleConnectionImplCopyWithImpl<$Res>
    extends _$RepeatPatternEventCopyWithImpl<$Res, _$ToggleConnectionImpl>
    implements _$$ToggleConnectionImplCopyWith<$Res> {
  __$$ToggleConnectionImplCopyWithImpl(
    _$ToggleConnectionImpl _value,
    $Res Function(_$ToggleConnectionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RepeatPatternEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? connection = null}) {
    return _then(
      _$ToggleConnectionImpl(
        null == connection
            ? _value.connection
            : connection // ignore: cast_nullable_to_non_nullable
                  as Connection,
      ),
    );
  }

  /// Create a copy of RepeatPatternEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ConnectionCopyWith<$Res> get connection {
    return $ConnectionCopyWith<$Res>(_value.connection, (value) {
      return _then(_value.copyWith(connection: value));
    });
  }
}

/// @nodoc

class _$ToggleConnectionImpl implements _ToggleConnection {
  const _$ToggleConnectionImpl(this.connection);

  @override
  final Connection connection;

  @override
  String toString() {
    return 'RepeatPatternEvent.toggleConnection(connection: $connection)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToggleConnectionImpl &&
            (identical(other.connection, connection) ||
                other.connection == connection));
  }

  @override
  int get hashCode => Object.hash(runtimeType, connection);

  /// Create a copy of RepeatPatternEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ToggleConnectionImplCopyWith<_$ToggleConnectionImpl> get copyWith =>
      __$$ToggleConnectionImplCopyWithImpl<_$ToggleConnectionImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int rows, int cols) start,
    required TResult Function(Connection connection) toggleConnection,
    required TResult Function() timerTick,
    required TResult Function() submit,
    required TResult Function() restart,
  }) {
    return toggleConnection(connection);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int rows, int cols)? start,
    TResult? Function(Connection connection)? toggleConnection,
    TResult? Function()? timerTick,
    TResult? Function()? submit,
    TResult? Function()? restart,
  }) {
    return toggleConnection?.call(connection);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int rows, int cols)? start,
    TResult Function(Connection connection)? toggleConnection,
    TResult Function()? timerTick,
    TResult Function()? submit,
    TResult Function()? restart,
    required TResult orElse(),
  }) {
    if (toggleConnection != null) {
      return toggleConnection(connection);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Start value) start,
    required TResult Function(_ToggleConnection value) toggleConnection,
    required TResult Function(_TimerTick value) timerTick,
    required TResult Function(_Submit value) submit,
    required TResult Function(_Restart value) restart,
  }) {
    return toggleConnection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Start value)? start,
    TResult? Function(_ToggleConnection value)? toggleConnection,
    TResult? Function(_TimerTick value)? timerTick,
    TResult? Function(_Submit value)? submit,
    TResult? Function(_Restart value)? restart,
  }) {
    return toggleConnection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_ToggleConnection value)? toggleConnection,
    TResult Function(_TimerTick value)? timerTick,
    TResult Function(_Submit value)? submit,
    TResult Function(_Restart value)? restart,
    required TResult orElse(),
  }) {
    if (toggleConnection != null) {
      return toggleConnection(this);
    }
    return orElse();
  }
}

abstract class _ToggleConnection implements RepeatPatternEvent {
  const factory _ToggleConnection(final Connection connection) =
      _$ToggleConnectionImpl;

  Connection get connection;

  /// Create a copy of RepeatPatternEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ToggleConnectionImplCopyWith<_$ToggleConnectionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TimerTickImplCopyWith<$Res> {
  factory _$$TimerTickImplCopyWith(
    _$TimerTickImpl value,
    $Res Function(_$TimerTickImpl) then,
  ) = __$$TimerTickImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TimerTickImplCopyWithImpl<$Res>
    extends _$RepeatPatternEventCopyWithImpl<$Res, _$TimerTickImpl>
    implements _$$TimerTickImplCopyWith<$Res> {
  __$$TimerTickImplCopyWithImpl(
    _$TimerTickImpl _value,
    $Res Function(_$TimerTickImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RepeatPatternEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$TimerTickImpl implements _TimerTick {
  const _$TimerTickImpl();

  @override
  String toString() {
    return 'RepeatPatternEvent.timerTick()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TimerTickImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int rows, int cols) start,
    required TResult Function(Connection connection) toggleConnection,
    required TResult Function() timerTick,
    required TResult Function() submit,
    required TResult Function() restart,
  }) {
    return timerTick();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int rows, int cols)? start,
    TResult? Function(Connection connection)? toggleConnection,
    TResult? Function()? timerTick,
    TResult? Function()? submit,
    TResult? Function()? restart,
  }) {
    return timerTick?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int rows, int cols)? start,
    TResult Function(Connection connection)? toggleConnection,
    TResult Function()? timerTick,
    TResult Function()? submit,
    TResult Function()? restart,
    required TResult orElse(),
  }) {
    if (timerTick != null) {
      return timerTick();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Start value) start,
    required TResult Function(_ToggleConnection value) toggleConnection,
    required TResult Function(_TimerTick value) timerTick,
    required TResult Function(_Submit value) submit,
    required TResult Function(_Restart value) restart,
  }) {
    return timerTick(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Start value)? start,
    TResult? Function(_ToggleConnection value)? toggleConnection,
    TResult? Function(_TimerTick value)? timerTick,
    TResult? Function(_Submit value)? submit,
    TResult? Function(_Restart value)? restart,
  }) {
    return timerTick?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_ToggleConnection value)? toggleConnection,
    TResult Function(_TimerTick value)? timerTick,
    TResult Function(_Submit value)? submit,
    TResult Function(_Restart value)? restart,
    required TResult orElse(),
  }) {
    if (timerTick != null) {
      return timerTick(this);
    }
    return orElse();
  }
}

abstract class _TimerTick implements RepeatPatternEvent {
  const factory _TimerTick() = _$TimerTickImpl;
}

/// @nodoc
abstract class _$$SubmitImplCopyWith<$Res> {
  factory _$$SubmitImplCopyWith(
    _$SubmitImpl value,
    $Res Function(_$SubmitImpl) then,
  ) = __$$SubmitImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SubmitImplCopyWithImpl<$Res>
    extends _$RepeatPatternEventCopyWithImpl<$Res, _$SubmitImpl>
    implements _$$SubmitImplCopyWith<$Res> {
  __$$SubmitImplCopyWithImpl(
    _$SubmitImpl _value,
    $Res Function(_$SubmitImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RepeatPatternEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SubmitImpl implements _Submit {
  const _$SubmitImpl();

  @override
  String toString() {
    return 'RepeatPatternEvent.submit()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SubmitImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int rows, int cols) start,
    required TResult Function(Connection connection) toggleConnection,
    required TResult Function() timerTick,
    required TResult Function() submit,
    required TResult Function() restart,
  }) {
    return submit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int rows, int cols)? start,
    TResult? Function(Connection connection)? toggleConnection,
    TResult? Function()? timerTick,
    TResult? Function()? submit,
    TResult? Function()? restart,
  }) {
    return submit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int rows, int cols)? start,
    TResult Function(Connection connection)? toggleConnection,
    TResult Function()? timerTick,
    TResult Function()? submit,
    TResult Function()? restart,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Start value) start,
    required TResult Function(_ToggleConnection value) toggleConnection,
    required TResult Function(_TimerTick value) timerTick,
    required TResult Function(_Submit value) submit,
    required TResult Function(_Restart value) restart,
  }) {
    return submit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Start value)? start,
    TResult? Function(_ToggleConnection value)? toggleConnection,
    TResult? Function(_TimerTick value)? timerTick,
    TResult? Function(_Submit value)? submit,
    TResult? Function(_Restart value)? restart,
  }) {
    return submit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_ToggleConnection value)? toggleConnection,
    TResult Function(_TimerTick value)? timerTick,
    TResult Function(_Submit value)? submit,
    TResult Function(_Restart value)? restart,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit(this);
    }
    return orElse();
  }
}

abstract class _Submit implements RepeatPatternEvent {
  const factory _Submit() = _$SubmitImpl;
}

/// @nodoc
abstract class _$$RestartImplCopyWith<$Res> {
  factory _$$RestartImplCopyWith(
    _$RestartImpl value,
    $Res Function(_$RestartImpl) then,
  ) = __$$RestartImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RestartImplCopyWithImpl<$Res>
    extends _$RepeatPatternEventCopyWithImpl<$Res, _$RestartImpl>
    implements _$$RestartImplCopyWith<$Res> {
  __$$RestartImplCopyWithImpl(
    _$RestartImpl _value,
    $Res Function(_$RestartImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RepeatPatternEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RestartImpl implements _Restart {
  const _$RestartImpl();

  @override
  String toString() {
    return 'RepeatPatternEvent.restart()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RestartImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int rows, int cols) start,
    required TResult Function(Connection connection) toggleConnection,
    required TResult Function() timerTick,
    required TResult Function() submit,
    required TResult Function() restart,
  }) {
    return restart();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int rows, int cols)? start,
    TResult? Function(Connection connection)? toggleConnection,
    TResult? Function()? timerTick,
    TResult? Function()? submit,
    TResult? Function()? restart,
  }) {
    return restart?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int rows, int cols)? start,
    TResult Function(Connection connection)? toggleConnection,
    TResult Function()? timerTick,
    TResult Function()? submit,
    TResult Function()? restart,
    required TResult orElse(),
  }) {
    if (restart != null) {
      return restart();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Start value) start,
    required TResult Function(_ToggleConnection value) toggleConnection,
    required TResult Function(_TimerTick value) timerTick,
    required TResult Function(_Submit value) submit,
    required TResult Function(_Restart value) restart,
  }) {
    return restart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Start value)? start,
    TResult? Function(_ToggleConnection value)? toggleConnection,
    TResult? Function(_TimerTick value)? timerTick,
    TResult? Function(_Submit value)? submit,
    TResult? Function(_Restart value)? restart,
  }) {
    return restart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_ToggleConnection value)? toggleConnection,
    TResult Function(_TimerTick value)? timerTick,
    TResult Function(_Submit value)? submit,
    TResult Function(_Restart value)? restart,
    required TResult orElse(),
  }) {
    if (restart != null) {
      return restart(this);
    }
    return orElse();
  }
}

abstract class _Restart implements RepeatPatternEvent {
  const factory _Restart() = _$RestartImpl;
}

/// @nodoc
mixin _$RepeatPatternState {
  int get rows => throw _privateConstructorUsedError;
  int get cols => throw _privateConstructorUsedError;
  List<Connection> get targetPattern => throw _privateConstructorUsedError;
  List<Connection> get userPattern => throw _privateConstructorUsedError;
  GamePhase get phase => throw _privateConstructorUsedError;
  int get memorizeTimeLeft => throw _privateConstructorUsedError;
  int get playTime => throw _privateConstructorUsedError;
  bool get isCorrect => throw _privateConstructorUsedError;

  /// Create a copy of RepeatPatternState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RepeatPatternStateCopyWith<RepeatPatternState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepeatPatternStateCopyWith<$Res> {
  factory $RepeatPatternStateCopyWith(
    RepeatPatternState value,
    $Res Function(RepeatPatternState) then,
  ) = _$RepeatPatternStateCopyWithImpl<$Res, RepeatPatternState>;
  @useResult
  $Res call({
    int rows,
    int cols,
    List<Connection> targetPattern,
    List<Connection> userPattern,
    GamePhase phase,
    int memorizeTimeLeft,
    int playTime,
    bool isCorrect,
  });
}

/// @nodoc
class _$RepeatPatternStateCopyWithImpl<$Res, $Val extends RepeatPatternState>
    implements $RepeatPatternStateCopyWith<$Res> {
  _$RepeatPatternStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RepeatPatternState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rows = null,
    Object? cols = null,
    Object? targetPattern = null,
    Object? userPattern = null,
    Object? phase = null,
    Object? memorizeTimeLeft = null,
    Object? playTime = null,
    Object? isCorrect = null,
  }) {
    return _then(
      _value.copyWith(
            rows: null == rows
                ? _value.rows
                : rows // ignore: cast_nullable_to_non_nullable
                      as int,
            cols: null == cols
                ? _value.cols
                : cols // ignore: cast_nullable_to_non_nullable
                      as int,
            targetPattern: null == targetPattern
                ? _value.targetPattern
                : targetPattern // ignore: cast_nullable_to_non_nullable
                      as List<Connection>,
            userPattern: null == userPattern
                ? _value.userPattern
                : userPattern // ignore: cast_nullable_to_non_nullable
                      as List<Connection>,
            phase: null == phase
                ? _value.phase
                : phase // ignore: cast_nullable_to_non_nullable
                      as GamePhase,
            memorizeTimeLeft: null == memorizeTimeLeft
                ? _value.memorizeTimeLeft
                : memorizeTimeLeft // ignore: cast_nullable_to_non_nullable
                      as int,
            playTime: null == playTime
                ? _value.playTime
                : playTime // ignore: cast_nullable_to_non_nullable
                      as int,
            isCorrect: null == isCorrect
                ? _value.isCorrect
                : isCorrect // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$RepeatPatternStateImplCopyWith<$Res>
    implements $RepeatPatternStateCopyWith<$Res> {
  factory _$$RepeatPatternStateImplCopyWith(
    _$RepeatPatternStateImpl value,
    $Res Function(_$RepeatPatternStateImpl) then,
  ) = __$$RepeatPatternStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int rows,
    int cols,
    List<Connection> targetPattern,
    List<Connection> userPattern,
    GamePhase phase,
    int memorizeTimeLeft,
    int playTime,
    bool isCorrect,
  });
}

/// @nodoc
class __$$RepeatPatternStateImplCopyWithImpl<$Res>
    extends _$RepeatPatternStateCopyWithImpl<$Res, _$RepeatPatternStateImpl>
    implements _$$RepeatPatternStateImplCopyWith<$Res> {
  __$$RepeatPatternStateImplCopyWithImpl(
    _$RepeatPatternStateImpl _value,
    $Res Function(_$RepeatPatternStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RepeatPatternState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rows = null,
    Object? cols = null,
    Object? targetPattern = null,
    Object? userPattern = null,
    Object? phase = null,
    Object? memorizeTimeLeft = null,
    Object? playTime = null,
    Object? isCorrect = null,
  }) {
    return _then(
      _$RepeatPatternStateImpl(
        rows: null == rows
            ? _value.rows
            : rows // ignore: cast_nullable_to_non_nullable
                  as int,
        cols: null == cols
            ? _value.cols
            : cols // ignore: cast_nullable_to_non_nullable
                  as int,
        targetPattern: null == targetPattern
            ? _value._targetPattern
            : targetPattern // ignore: cast_nullable_to_non_nullable
                  as List<Connection>,
        userPattern: null == userPattern
            ? _value._userPattern
            : userPattern // ignore: cast_nullable_to_non_nullable
                  as List<Connection>,
        phase: null == phase
            ? _value.phase
            : phase // ignore: cast_nullable_to_non_nullable
                  as GamePhase,
        memorizeTimeLeft: null == memorizeTimeLeft
            ? _value.memorizeTimeLeft
            : memorizeTimeLeft // ignore: cast_nullable_to_non_nullable
                  as int,
        playTime: null == playTime
            ? _value.playTime
            : playTime // ignore: cast_nullable_to_non_nullable
                  as int,
        isCorrect: null == isCorrect
            ? _value.isCorrect
            : isCorrect // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc

class _$RepeatPatternStateImpl implements _RepeatPatternState {
  const _$RepeatPatternStateImpl({
    this.rows = 4,
    this.cols = 4,
    final List<Connection> targetPattern = const [],
    final List<Connection> userPattern = const [],
    this.phase = GamePhase.memorizing,
    this.memorizeTimeLeft = 10,
    this.playTime = 0,
    this.isCorrect = false,
  }) : _targetPattern = targetPattern,
       _userPattern = userPattern;

  @override
  @JsonKey()
  final int rows;
  @override
  @JsonKey()
  final int cols;
  final List<Connection> _targetPattern;
  @override
  @JsonKey()
  List<Connection> get targetPattern {
    if (_targetPattern is EqualUnmodifiableListView) return _targetPattern;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_targetPattern);
  }

  final List<Connection> _userPattern;
  @override
  @JsonKey()
  List<Connection> get userPattern {
    if (_userPattern is EqualUnmodifiableListView) return _userPattern;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_userPattern);
  }

  @override
  @JsonKey()
  final GamePhase phase;
  @override
  @JsonKey()
  final int memorizeTimeLeft;
  @override
  @JsonKey()
  final int playTime;
  @override
  @JsonKey()
  final bool isCorrect;

  @override
  String toString() {
    return 'RepeatPatternState(rows: $rows, cols: $cols, targetPattern: $targetPattern, userPattern: $userPattern, phase: $phase, memorizeTimeLeft: $memorizeTimeLeft, playTime: $playTime, isCorrect: $isCorrect)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RepeatPatternStateImpl &&
            (identical(other.rows, rows) || other.rows == rows) &&
            (identical(other.cols, cols) || other.cols == cols) &&
            const DeepCollectionEquality().equals(
              other._targetPattern,
              _targetPattern,
            ) &&
            const DeepCollectionEquality().equals(
              other._userPattern,
              _userPattern,
            ) &&
            (identical(other.phase, phase) || other.phase == phase) &&
            (identical(other.memorizeTimeLeft, memorizeTimeLeft) ||
                other.memorizeTimeLeft == memorizeTimeLeft) &&
            (identical(other.playTime, playTime) ||
                other.playTime == playTime) &&
            (identical(other.isCorrect, isCorrect) ||
                other.isCorrect == isCorrect));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    rows,
    cols,
    const DeepCollectionEquality().hash(_targetPattern),
    const DeepCollectionEquality().hash(_userPattern),
    phase,
    memorizeTimeLeft,
    playTime,
    isCorrect,
  );

  /// Create a copy of RepeatPatternState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RepeatPatternStateImplCopyWith<_$RepeatPatternStateImpl> get copyWith =>
      __$$RepeatPatternStateImplCopyWithImpl<_$RepeatPatternStateImpl>(
        this,
        _$identity,
      );
}

abstract class _RepeatPatternState implements RepeatPatternState {
  const factory _RepeatPatternState({
    final int rows,
    final int cols,
    final List<Connection> targetPattern,
    final List<Connection> userPattern,
    final GamePhase phase,
    final int memorizeTimeLeft,
    final int playTime,
    final bool isCorrect,
  }) = _$RepeatPatternStateImpl;

  @override
  int get rows;
  @override
  int get cols;
  @override
  List<Connection> get targetPattern;
  @override
  List<Connection> get userPattern;
  @override
  GamePhase get phase;
  @override
  int get memorizeTimeLeft;
  @override
  int get playTime;
  @override
  bool get isCorrect;

  /// Create a copy of RepeatPatternState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RepeatPatternStateImplCopyWith<_$RepeatPatternStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
