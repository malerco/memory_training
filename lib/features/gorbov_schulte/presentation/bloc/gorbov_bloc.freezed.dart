// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gorbov_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$GorbovEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int rows, int cols) start,
    required TResult Function(GorbovNumber number) selectNumber,
    required TResult Function() timerTick,
    required TResult Function() restart,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int rows, int cols)? start,
    TResult? Function(GorbovNumber number)? selectNumber,
    TResult? Function()? timerTick,
    TResult? Function()? restart,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int rows, int cols)? start,
    TResult Function(GorbovNumber number)? selectNumber,
    TResult Function()? timerTick,
    TResult Function()? restart,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Start value) start,
    required TResult Function(_SelectNumber value) selectNumber,
    required TResult Function(_TimerTick value) timerTick,
    required TResult Function(_Restart value) restart,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Start value)? start,
    TResult? Function(_SelectNumber value)? selectNumber,
    TResult? Function(_TimerTick value)? timerTick,
    TResult? Function(_Restart value)? restart,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_SelectNumber value)? selectNumber,
    TResult Function(_TimerTick value)? timerTick,
    TResult Function(_Restart value)? restart,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GorbovEventCopyWith<$Res> {
  factory $GorbovEventCopyWith(
    GorbovEvent value,
    $Res Function(GorbovEvent) then,
  ) = _$GorbovEventCopyWithImpl<$Res, GorbovEvent>;
}

/// @nodoc
class _$GorbovEventCopyWithImpl<$Res, $Val extends GorbovEvent>
    implements $GorbovEventCopyWith<$Res> {
  _$GorbovEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GorbovEvent
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
    extends _$GorbovEventCopyWithImpl<$Res, _$StartImpl>
    implements _$$StartImplCopyWith<$Res> {
  __$$StartImplCopyWithImpl(
    _$StartImpl _value,
    $Res Function(_$StartImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GorbovEvent
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
    return 'GorbovEvent.start(rows: $rows, cols: $cols)';
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

  /// Create a copy of GorbovEvent
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
    required TResult Function(GorbovNumber number) selectNumber,
    required TResult Function() timerTick,
    required TResult Function() restart,
  }) {
    return start(rows, cols);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int rows, int cols)? start,
    TResult? Function(GorbovNumber number)? selectNumber,
    TResult? Function()? timerTick,
    TResult? Function()? restart,
  }) {
    return start?.call(rows, cols);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int rows, int cols)? start,
    TResult Function(GorbovNumber number)? selectNumber,
    TResult Function()? timerTick,
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
    required TResult Function(_SelectNumber value) selectNumber,
    required TResult Function(_TimerTick value) timerTick,
    required TResult Function(_Restart value) restart,
  }) {
    return start(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Start value)? start,
    TResult? Function(_SelectNumber value)? selectNumber,
    TResult? Function(_TimerTick value)? timerTick,
    TResult? Function(_Restart value)? restart,
  }) {
    return start?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_SelectNumber value)? selectNumber,
    TResult Function(_TimerTick value)? timerTick,
    TResult Function(_Restart value)? restart,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(this);
    }
    return orElse();
  }
}

abstract class _Start implements GorbovEvent {
  const factory _Start({required final int rows, required final int cols}) =
      _$StartImpl;

  int get rows;
  int get cols;

  /// Create a copy of GorbovEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StartImplCopyWith<_$StartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectNumberImplCopyWith<$Res> {
  factory _$$SelectNumberImplCopyWith(
    _$SelectNumberImpl value,
    $Res Function(_$SelectNumberImpl) then,
  ) = __$$SelectNumberImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GorbovNumber number});

  $GorbovNumberCopyWith<$Res> get number;
}

/// @nodoc
class __$$SelectNumberImplCopyWithImpl<$Res>
    extends _$GorbovEventCopyWithImpl<$Res, _$SelectNumberImpl>
    implements _$$SelectNumberImplCopyWith<$Res> {
  __$$SelectNumberImplCopyWithImpl(
    _$SelectNumberImpl _value,
    $Res Function(_$SelectNumberImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GorbovEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? number = null}) {
    return _then(
      _$SelectNumberImpl(
        null == number
            ? _value.number
            : number // ignore: cast_nullable_to_non_nullable
                  as GorbovNumber,
      ),
    );
  }

  /// Create a copy of GorbovEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GorbovNumberCopyWith<$Res> get number {
    return $GorbovNumberCopyWith<$Res>(_value.number, (value) {
      return _then(_value.copyWith(number: value));
    });
  }
}

/// @nodoc

class _$SelectNumberImpl implements _SelectNumber {
  const _$SelectNumberImpl(this.number);

  @override
  final GorbovNumber number;

  @override
  String toString() {
    return 'GorbovEvent.selectNumber(number: $number)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectNumberImpl &&
            (identical(other.number, number) || other.number == number));
  }

  @override
  int get hashCode => Object.hash(runtimeType, number);

  /// Create a copy of GorbovEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectNumberImplCopyWith<_$SelectNumberImpl> get copyWith =>
      __$$SelectNumberImplCopyWithImpl<_$SelectNumberImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int rows, int cols) start,
    required TResult Function(GorbovNumber number) selectNumber,
    required TResult Function() timerTick,
    required TResult Function() restart,
  }) {
    return selectNumber(number);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int rows, int cols)? start,
    TResult? Function(GorbovNumber number)? selectNumber,
    TResult? Function()? timerTick,
    TResult? Function()? restart,
  }) {
    return selectNumber?.call(number);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int rows, int cols)? start,
    TResult Function(GorbovNumber number)? selectNumber,
    TResult Function()? timerTick,
    TResult Function()? restart,
    required TResult orElse(),
  }) {
    if (selectNumber != null) {
      return selectNumber(number);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Start value) start,
    required TResult Function(_SelectNumber value) selectNumber,
    required TResult Function(_TimerTick value) timerTick,
    required TResult Function(_Restart value) restart,
  }) {
    return selectNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Start value)? start,
    TResult? Function(_SelectNumber value)? selectNumber,
    TResult? Function(_TimerTick value)? timerTick,
    TResult? Function(_Restart value)? restart,
  }) {
    return selectNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_SelectNumber value)? selectNumber,
    TResult Function(_TimerTick value)? timerTick,
    TResult Function(_Restart value)? restart,
    required TResult orElse(),
  }) {
    if (selectNumber != null) {
      return selectNumber(this);
    }
    return orElse();
  }
}

abstract class _SelectNumber implements GorbovEvent {
  const factory _SelectNumber(final GorbovNumber number) = _$SelectNumberImpl;

  GorbovNumber get number;

  /// Create a copy of GorbovEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectNumberImplCopyWith<_$SelectNumberImpl> get copyWith =>
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
    extends _$GorbovEventCopyWithImpl<$Res, _$TimerTickImpl>
    implements _$$TimerTickImplCopyWith<$Res> {
  __$$TimerTickImplCopyWithImpl(
    _$TimerTickImpl _value,
    $Res Function(_$TimerTickImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GorbovEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$TimerTickImpl implements _TimerTick {
  const _$TimerTickImpl();

  @override
  String toString() {
    return 'GorbovEvent.timerTick()';
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
    required TResult Function(GorbovNumber number) selectNumber,
    required TResult Function() timerTick,
    required TResult Function() restart,
  }) {
    return timerTick();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int rows, int cols)? start,
    TResult? Function(GorbovNumber number)? selectNumber,
    TResult? Function()? timerTick,
    TResult? Function()? restart,
  }) {
    return timerTick?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int rows, int cols)? start,
    TResult Function(GorbovNumber number)? selectNumber,
    TResult Function()? timerTick,
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
    required TResult Function(_SelectNumber value) selectNumber,
    required TResult Function(_TimerTick value) timerTick,
    required TResult Function(_Restart value) restart,
  }) {
    return timerTick(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Start value)? start,
    TResult? Function(_SelectNumber value)? selectNumber,
    TResult? Function(_TimerTick value)? timerTick,
    TResult? Function(_Restart value)? restart,
  }) {
    return timerTick?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_SelectNumber value)? selectNumber,
    TResult Function(_TimerTick value)? timerTick,
    TResult Function(_Restart value)? restart,
    required TResult orElse(),
  }) {
    if (timerTick != null) {
      return timerTick(this);
    }
    return orElse();
  }
}

abstract class _TimerTick implements GorbovEvent {
  const factory _TimerTick() = _$TimerTickImpl;
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
    extends _$GorbovEventCopyWithImpl<$Res, _$RestartImpl>
    implements _$$RestartImplCopyWith<$Res> {
  __$$RestartImplCopyWithImpl(
    _$RestartImpl _value,
    $Res Function(_$RestartImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GorbovEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RestartImpl implements _Restart {
  const _$RestartImpl();

  @override
  String toString() {
    return 'GorbovEvent.restart()';
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
    required TResult Function(GorbovNumber number) selectNumber,
    required TResult Function() timerTick,
    required TResult Function() restart,
  }) {
    return restart();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int rows, int cols)? start,
    TResult? Function(GorbovNumber number)? selectNumber,
    TResult? Function()? timerTick,
    TResult? Function()? restart,
  }) {
    return restart?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int rows, int cols)? start,
    TResult Function(GorbovNumber number)? selectNumber,
    TResult Function()? timerTick,
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
    required TResult Function(_SelectNumber value) selectNumber,
    required TResult Function(_TimerTick value) timerTick,
    required TResult Function(_Restart value) restart,
  }) {
    return restart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Start value)? start,
    TResult? Function(_SelectNumber value)? selectNumber,
    TResult? Function(_TimerTick value)? timerTick,
    TResult? Function(_Restart value)? restart,
  }) {
    return restart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_SelectNumber value)? selectNumber,
    TResult Function(_TimerTick value)? timerTick,
    TResult Function(_Restart value)? restart,
    required TResult orElse(),
  }) {
    if (restart != null) {
      return restart(this);
    }
    return orElse();
  }
}

abstract class _Restart implements GorbovEvent {
  const factory _Restart() = _$RestartImpl;
}

/// @nodoc
mixin _$GorbovState {
  int get rows => throw _privateConstructorUsedError;
  int get cols => throw _privateConstructorUsedError;
  List<GorbovNumber> get numbers => throw _privateConstructorUsedError;
  int get currentBlack => throw _privateConstructorUsedError;
  int get currentRed => throw _privateConstructorUsedError;
  bool get expectingBlack => throw _privateConstructorUsedError;
  int get mistakes => throw _privateConstructorUsedError;
  int get time => throw _privateConstructorUsedError;
  bool get isCompleted => throw _privateConstructorUsedError;
  Set<String> get foundNumbers => throw _privateConstructorUsedError;
  int get maxBlack => throw _privateConstructorUsedError;
  int get maxRed => throw _privateConstructorUsedError;

  /// Create a copy of GorbovState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GorbovStateCopyWith<GorbovState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GorbovStateCopyWith<$Res> {
  factory $GorbovStateCopyWith(
    GorbovState value,
    $Res Function(GorbovState) then,
  ) = _$GorbovStateCopyWithImpl<$Res, GorbovState>;
  @useResult
  $Res call({
    int rows,
    int cols,
    List<GorbovNumber> numbers,
    int currentBlack,
    int currentRed,
    bool expectingBlack,
    int mistakes,
    int time,
    bool isCompleted,
    Set<String> foundNumbers,
    int maxBlack,
    int maxRed,
  });
}

/// @nodoc
class _$GorbovStateCopyWithImpl<$Res, $Val extends GorbovState>
    implements $GorbovStateCopyWith<$Res> {
  _$GorbovStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GorbovState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rows = null,
    Object? cols = null,
    Object? numbers = null,
    Object? currentBlack = null,
    Object? currentRed = null,
    Object? expectingBlack = null,
    Object? mistakes = null,
    Object? time = null,
    Object? isCompleted = null,
    Object? foundNumbers = null,
    Object? maxBlack = null,
    Object? maxRed = null,
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
            numbers: null == numbers
                ? _value.numbers
                : numbers // ignore: cast_nullable_to_non_nullable
                      as List<GorbovNumber>,
            currentBlack: null == currentBlack
                ? _value.currentBlack
                : currentBlack // ignore: cast_nullable_to_non_nullable
                      as int,
            currentRed: null == currentRed
                ? _value.currentRed
                : currentRed // ignore: cast_nullable_to_non_nullable
                      as int,
            expectingBlack: null == expectingBlack
                ? _value.expectingBlack
                : expectingBlack // ignore: cast_nullable_to_non_nullable
                      as bool,
            mistakes: null == mistakes
                ? _value.mistakes
                : mistakes // ignore: cast_nullable_to_non_nullable
                      as int,
            time: null == time
                ? _value.time
                : time // ignore: cast_nullable_to_non_nullable
                      as int,
            isCompleted: null == isCompleted
                ? _value.isCompleted
                : isCompleted // ignore: cast_nullable_to_non_nullable
                      as bool,
            foundNumbers: null == foundNumbers
                ? _value.foundNumbers
                : foundNumbers // ignore: cast_nullable_to_non_nullable
                      as Set<String>,
            maxBlack: null == maxBlack
                ? _value.maxBlack
                : maxBlack // ignore: cast_nullable_to_non_nullable
                      as int,
            maxRed: null == maxRed
                ? _value.maxRed
                : maxRed // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$GorbovStateImplCopyWith<$Res>
    implements $GorbovStateCopyWith<$Res> {
  factory _$$GorbovStateImplCopyWith(
    _$GorbovStateImpl value,
    $Res Function(_$GorbovStateImpl) then,
  ) = __$$GorbovStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int rows,
    int cols,
    List<GorbovNumber> numbers,
    int currentBlack,
    int currentRed,
    bool expectingBlack,
    int mistakes,
    int time,
    bool isCompleted,
    Set<String> foundNumbers,
    int maxBlack,
    int maxRed,
  });
}

/// @nodoc
class __$$GorbovStateImplCopyWithImpl<$Res>
    extends _$GorbovStateCopyWithImpl<$Res, _$GorbovStateImpl>
    implements _$$GorbovStateImplCopyWith<$Res> {
  __$$GorbovStateImplCopyWithImpl(
    _$GorbovStateImpl _value,
    $Res Function(_$GorbovStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GorbovState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rows = null,
    Object? cols = null,
    Object? numbers = null,
    Object? currentBlack = null,
    Object? currentRed = null,
    Object? expectingBlack = null,
    Object? mistakes = null,
    Object? time = null,
    Object? isCompleted = null,
    Object? foundNumbers = null,
    Object? maxBlack = null,
    Object? maxRed = null,
  }) {
    return _then(
      _$GorbovStateImpl(
        rows: null == rows
            ? _value.rows
            : rows // ignore: cast_nullable_to_non_nullable
                  as int,
        cols: null == cols
            ? _value.cols
            : cols // ignore: cast_nullable_to_non_nullable
                  as int,
        numbers: null == numbers
            ? _value._numbers
            : numbers // ignore: cast_nullable_to_non_nullable
                  as List<GorbovNumber>,
        currentBlack: null == currentBlack
            ? _value.currentBlack
            : currentBlack // ignore: cast_nullable_to_non_nullable
                  as int,
        currentRed: null == currentRed
            ? _value.currentRed
            : currentRed // ignore: cast_nullable_to_non_nullable
                  as int,
        expectingBlack: null == expectingBlack
            ? _value.expectingBlack
            : expectingBlack // ignore: cast_nullable_to_non_nullable
                  as bool,
        mistakes: null == mistakes
            ? _value.mistakes
            : mistakes // ignore: cast_nullable_to_non_nullable
                  as int,
        time: null == time
            ? _value.time
            : time // ignore: cast_nullable_to_non_nullable
                  as int,
        isCompleted: null == isCompleted
            ? _value.isCompleted
            : isCompleted // ignore: cast_nullable_to_non_nullable
                  as bool,
        foundNumbers: null == foundNumbers
            ? _value._foundNumbers
            : foundNumbers // ignore: cast_nullable_to_non_nullable
                  as Set<String>,
        maxBlack: null == maxBlack
            ? _value.maxBlack
            : maxBlack // ignore: cast_nullable_to_non_nullable
                  as int,
        maxRed: null == maxRed
            ? _value.maxRed
            : maxRed // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$GorbovStateImpl implements _GorbovState {
  const _$GorbovStateImpl({
    this.rows = 5,
    this.cols = 5,
    final List<GorbovNumber> numbers = const [],
    this.currentBlack = 1,
    this.currentRed = 0,
    this.expectingBlack = true,
    this.mistakes = 0,
    this.time = 0,
    this.isCompleted = false,
    final Set<String> foundNumbers = const {},
    this.maxBlack = 12,
    this.maxRed = 13,
  }) : _numbers = numbers,
       _foundNumbers = foundNumbers;

  @override
  @JsonKey()
  final int rows;
  @override
  @JsonKey()
  final int cols;
  final List<GorbovNumber> _numbers;
  @override
  @JsonKey()
  List<GorbovNumber> get numbers {
    if (_numbers is EqualUnmodifiableListView) return _numbers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_numbers);
  }

  @override
  @JsonKey()
  final int currentBlack;
  @override
  @JsonKey()
  final int currentRed;
  @override
  @JsonKey()
  final bool expectingBlack;
  @override
  @JsonKey()
  final int mistakes;
  @override
  @JsonKey()
  final int time;
  @override
  @JsonKey()
  final bool isCompleted;
  final Set<String> _foundNumbers;
  @override
  @JsonKey()
  Set<String> get foundNumbers {
    if (_foundNumbers is EqualUnmodifiableSetView) return _foundNumbers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_foundNumbers);
  }

  @override
  @JsonKey()
  final int maxBlack;
  @override
  @JsonKey()
  final int maxRed;

  @override
  String toString() {
    return 'GorbovState(rows: $rows, cols: $cols, numbers: $numbers, currentBlack: $currentBlack, currentRed: $currentRed, expectingBlack: $expectingBlack, mistakes: $mistakes, time: $time, isCompleted: $isCompleted, foundNumbers: $foundNumbers, maxBlack: $maxBlack, maxRed: $maxRed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GorbovStateImpl &&
            (identical(other.rows, rows) || other.rows == rows) &&
            (identical(other.cols, cols) || other.cols == cols) &&
            const DeepCollectionEquality().equals(other._numbers, _numbers) &&
            (identical(other.currentBlack, currentBlack) ||
                other.currentBlack == currentBlack) &&
            (identical(other.currentRed, currentRed) ||
                other.currentRed == currentRed) &&
            (identical(other.expectingBlack, expectingBlack) ||
                other.expectingBlack == expectingBlack) &&
            (identical(other.mistakes, mistakes) ||
                other.mistakes == mistakes) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted) &&
            const DeepCollectionEquality().equals(
              other._foundNumbers,
              _foundNumbers,
            ) &&
            (identical(other.maxBlack, maxBlack) ||
                other.maxBlack == maxBlack) &&
            (identical(other.maxRed, maxRed) || other.maxRed == maxRed));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    rows,
    cols,
    const DeepCollectionEquality().hash(_numbers),
    currentBlack,
    currentRed,
    expectingBlack,
    mistakes,
    time,
    isCompleted,
    const DeepCollectionEquality().hash(_foundNumbers),
    maxBlack,
    maxRed,
  );

  /// Create a copy of GorbovState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GorbovStateImplCopyWith<_$GorbovStateImpl> get copyWith =>
      __$$GorbovStateImplCopyWithImpl<_$GorbovStateImpl>(this, _$identity);
}

abstract class _GorbovState implements GorbovState {
  const factory _GorbovState({
    final int rows,
    final int cols,
    final List<GorbovNumber> numbers,
    final int currentBlack,
    final int currentRed,
    final bool expectingBlack,
    final int mistakes,
    final int time,
    final bool isCompleted,
    final Set<String> foundNumbers,
    final int maxBlack,
    final int maxRed,
  }) = _$GorbovStateImpl;

  @override
  int get rows;
  @override
  int get cols;
  @override
  List<GorbovNumber> get numbers;
  @override
  int get currentBlack;
  @override
  int get currentRed;
  @override
  bool get expectingBlack;
  @override
  int get mistakes;
  @override
  int get time;
  @override
  bool get isCompleted;
  @override
  Set<String> get foundNumbers;
  @override
  int get maxBlack;
  @override
  int get maxRed;

  /// Create a copy of GorbovState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GorbovStateImplCopyWith<_$GorbovStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
