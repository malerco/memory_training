// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'schulte_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$SchulteEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int gridRows, int gridCols) start,
    required TResult Function(int number) selectNumber,
    required TResult Function() timerTick,
    required TResult Function() restart,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int gridRows, int gridCols)? start,
    TResult? Function(int number)? selectNumber,
    TResult? Function()? timerTick,
    TResult? Function()? restart,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int gridRows, int gridCols)? start,
    TResult Function(int number)? selectNumber,
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
abstract class $SchulteEventCopyWith<$Res> {
  factory $SchulteEventCopyWith(
    SchulteEvent value,
    $Res Function(SchulteEvent) then,
  ) = _$SchulteEventCopyWithImpl<$Res, SchulteEvent>;
}

/// @nodoc
class _$SchulteEventCopyWithImpl<$Res, $Val extends SchulteEvent>
    implements $SchulteEventCopyWith<$Res> {
  _$SchulteEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SchulteEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartImplCopyWith<$Res> {
  factory _$$StartImplCopyWith(
    _$StartImpl value,
    $Res Function(_$StartImpl) then,
  ) = __$$StartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int gridRows, int gridCols});
}

/// @nodoc
class __$$StartImplCopyWithImpl<$Res>
    extends _$SchulteEventCopyWithImpl<$Res, _$StartImpl>
    implements _$$StartImplCopyWith<$Res> {
  __$$StartImplCopyWithImpl(
    _$StartImpl _value,
    $Res Function(_$StartImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SchulteEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? gridRows = null, Object? gridCols = null}) {
    return _then(
      _$StartImpl(
        null == gridRows
            ? _value.gridRows
            : gridRows // ignore: cast_nullable_to_non_nullable
                  as int,
        null == gridCols
            ? _value.gridCols
            : gridCols // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$StartImpl implements _Start {
  const _$StartImpl(this.gridRows, this.gridCols);

  @override
  final int gridRows;
  @override
  final int gridCols;

  @override
  String toString() {
    return 'SchulteEvent.start(gridRows: $gridRows, gridCols: $gridCols)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartImpl &&
            (identical(other.gridRows, gridRows) ||
                other.gridRows == gridRows) &&
            (identical(other.gridCols, gridCols) ||
                other.gridCols == gridCols));
  }

  @override
  int get hashCode => Object.hash(runtimeType, gridRows, gridCols);

  /// Create a copy of SchulteEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StartImplCopyWith<_$StartImpl> get copyWith =>
      __$$StartImplCopyWithImpl<_$StartImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int gridRows, int gridCols) start,
    required TResult Function(int number) selectNumber,
    required TResult Function() timerTick,
    required TResult Function() restart,
  }) {
    return start(gridRows, gridCols);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int gridRows, int gridCols)? start,
    TResult? Function(int number)? selectNumber,
    TResult? Function()? timerTick,
    TResult? Function()? restart,
  }) {
    return start?.call(gridRows, gridCols);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int gridRows, int gridCols)? start,
    TResult Function(int number)? selectNumber,
    TResult Function()? timerTick,
    TResult Function()? restart,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(gridRows, gridCols);
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

abstract class _Start implements SchulteEvent {
  const factory _Start(final int gridRows, final int gridCols) = _$StartImpl;

  int get gridRows;
  int get gridCols;

  /// Create a copy of SchulteEvent
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
  $Res call({int number});
}

/// @nodoc
class __$$SelectNumberImplCopyWithImpl<$Res>
    extends _$SchulteEventCopyWithImpl<$Res, _$SelectNumberImpl>
    implements _$$SelectNumberImplCopyWith<$Res> {
  __$$SelectNumberImplCopyWithImpl(
    _$SelectNumberImpl _value,
    $Res Function(_$SelectNumberImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SchulteEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? number = null}) {
    return _then(
      _$SelectNumberImpl(
        null == number
            ? _value.number
            : number // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$SelectNumberImpl implements _SelectNumber {
  const _$SelectNumberImpl(this.number);

  @override
  final int number;

  @override
  String toString() {
    return 'SchulteEvent.selectNumber(number: $number)';
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

  /// Create a copy of SchulteEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectNumberImplCopyWith<_$SelectNumberImpl> get copyWith =>
      __$$SelectNumberImplCopyWithImpl<_$SelectNumberImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int gridRows, int gridCols) start,
    required TResult Function(int number) selectNumber,
    required TResult Function() timerTick,
    required TResult Function() restart,
  }) {
    return selectNumber(number);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int gridRows, int gridCols)? start,
    TResult? Function(int number)? selectNumber,
    TResult? Function()? timerTick,
    TResult? Function()? restart,
  }) {
    return selectNumber?.call(number);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int gridRows, int gridCols)? start,
    TResult Function(int number)? selectNumber,
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

abstract class _SelectNumber implements SchulteEvent {
  const factory _SelectNumber(final int number) = _$SelectNumberImpl;

  int get number;

  /// Create a copy of SchulteEvent
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
    extends _$SchulteEventCopyWithImpl<$Res, _$TimerTickImpl>
    implements _$$TimerTickImplCopyWith<$Res> {
  __$$TimerTickImplCopyWithImpl(
    _$TimerTickImpl _value,
    $Res Function(_$TimerTickImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SchulteEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$TimerTickImpl implements _TimerTick {
  const _$TimerTickImpl();

  @override
  String toString() {
    return 'SchulteEvent.timerTick()';
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
    required TResult Function(int gridRows, int gridCols) start,
    required TResult Function(int number) selectNumber,
    required TResult Function() timerTick,
    required TResult Function() restart,
  }) {
    return timerTick();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int gridRows, int gridCols)? start,
    TResult? Function(int number)? selectNumber,
    TResult? Function()? timerTick,
    TResult? Function()? restart,
  }) {
    return timerTick?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int gridRows, int gridCols)? start,
    TResult Function(int number)? selectNumber,
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

abstract class _TimerTick implements SchulteEvent {
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
    extends _$SchulteEventCopyWithImpl<$Res, _$RestartImpl>
    implements _$$RestartImplCopyWith<$Res> {
  __$$RestartImplCopyWithImpl(
    _$RestartImpl _value,
    $Res Function(_$RestartImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SchulteEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RestartImpl implements _Restart {
  const _$RestartImpl();

  @override
  String toString() {
    return 'SchulteEvent.restart()';
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
    required TResult Function(int gridRows, int gridCols) start,
    required TResult Function(int number) selectNumber,
    required TResult Function() timerTick,
    required TResult Function() restart,
  }) {
    return restart();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int gridRows, int gridCols)? start,
    TResult? Function(int number)? selectNumber,
    TResult? Function()? timerTick,
    TResult? Function()? restart,
  }) {
    return restart?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int gridRows, int gridCols)? start,
    TResult Function(int number)? selectNumber,
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

abstract class _Restart implements SchulteEvent {
  const factory _Restart() = _$RestartImpl;
}

/// @nodoc
mixin _$SchulteState {
  int get gridRows => throw _privateConstructorUsedError;
  int get gridCols => throw _privateConstructorUsedError;
  List<int> get numbers => throw _privateConstructorUsedError;
  int get currentNumber => throw _privateConstructorUsedError;
  int get mistakes => throw _privateConstructorUsedError;
  int get time => throw _privateConstructorUsedError;
  bool get isCompleted => throw _privateConstructorUsedError;
  Set<int> get foundNumbers => throw _privateConstructorUsedError;

  /// Create a copy of SchulteState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SchulteStateCopyWith<SchulteState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SchulteStateCopyWith<$Res> {
  factory $SchulteStateCopyWith(
    SchulteState value,
    $Res Function(SchulteState) then,
  ) = _$SchulteStateCopyWithImpl<$Res, SchulteState>;
  @useResult
  $Res call({
    int gridRows,
    int gridCols,
    List<int> numbers,
    int currentNumber,
    int mistakes,
    int time,
    bool isCompleted,
    Set<int> foundNumbers,
  });
}

/// @nodoc
class _$SchulteStateCopyWithImpl<$Res, $Val extends SchulteState>
    implements $SchulteStateCopyWith<$Res> {
  _$SchulteStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SchulteState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gridRows = null,
    Object? gridCols = null,
    Object? numbers = null,
    Object? currentNumber = null,
    Object? mistakes = null,
    Object? time = null,
    Object? isCompleted = null,
    Object? foundNumbers = null,
  }) {
    return _then(
      _value.copyWith(
            gridRows: null == gridRows
                ? _value.gridRows
                : gridRows // ignore: cast_nullable_to_non_nullable
                      as int,
            gridCols: null == gridCols
                ? _value.gridCols
                : gridCols // ignore: cast_nullable_to_non_nullable
                      as int,
            numbers: null == numbers
                ? _value.numbers
                : numbers // ignore: cast_nullable_to_non_nullable
                      as List<int>,
            currentNumber: null == currentNumber
                ? _value.currentNumber
                : currentNumber // ignore: cast_nullable_to_non_nullable
                      as int,
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
                      as Set<int>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SchulteStateImplCopyWith<$Res>
    implements $SchulteStateCopyWith<$Res> {
  factory _$$SchulteStateImplCopyWith(
    _$SchulteStateImpl value,
    $Res Function(_$SchulteStateImpl) then,
  ) = __$$SchulteStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int gridRows,
    int gridCols,
    List<int> numbers,
    int currentNumber,
    int mistakes,
    int time,
    bool isCompleted,
    Set<int> foundNumbers,
  });
}

/// @nodoc
class __$$SchulteStateImplCopyWithImpl<$Res>
    extends _$SchulteStateCopyWithImpl<$Res, _$SchulteStateImpl>
    implements _$$SchulteStateImplCopyWith<$Res> {
  __$$SchulteStateImplCopyWithImpl(
    _$SchulteStateImpl _value,
    $Res Function(_$SchulteStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SchulteState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gridRows = null,
    Object? gridCols = null,
    Object? numbers = null,
    Object? currentNumber = null,
    Object? mistakes = null,
    Object? time = null,
    Object? isCompleted = null,
    Object? foundNumbers = null,
  }) {
    return _then(
      _$SchulteStateImpl(
        gridRows: null == gridRows
            ? _value.gridRows
            : gridRows // ignore: cast_nullable_to_non_nullable
                  as int,
        gridCols: null == gridCols
            ? _value.gridCols
            : gridCols // ignore: cast_nullable_to_non_nullable
                  as int,
        numbers: null == numbers
            ? _value._numbers
            : numbers // ignore: cast_nullable_to_non_nullable
                  as List<int>,
        currentNumber: null == currentNumber
            ? _value.currentNumber
            : currentNumber // ignore: cast_nullable_to_non_nullable
                  as int,
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
                  as Set<int>,
      ),
    );
  }
}

/// @nodoc

class _$SchulteStateImpl implements _SchulteState {
  const _$SchulteStateImpl({
    this.gridRows = 5,
    this.gridCols = 5,
    final List<int> numbers = const [],
    this.currentNumber = 1,
    this.mistakes = 0,
    this.time = 0,
    this.isCompleted = false,
    final Set<int> foundNumbers = const {},
  }) : _numbers = numbers,
       _foundNumbers = foundNumbers;

  @override
  @JsonKey()
  final int gridRows;
  @override
  @JsonKey()
  final int gridCols;
  final List<int> _numbers;
  @override
  @JsonKey()
  List<int> get numbers {
    if (_numbers is EqualUnmodifiableListView) return _numbers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_numbers);
  }

  @override
  @JsonKey()
  final int currentNumber;
  @override
  @JsonKey()
  final int mistakes;
  @override
  @JsonKey()
  final int time;
  @override
  @JsonKey()
  final bool isCompleted;
  final Set<int> _foundNumbers;
  @override
  @JsonKey()
  Set<int> get foundNumbers {
    if (_foundNumbers is EqualUnmodifiableSetView) return _foundNumbers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_foundNumbers);
  }

  @override
  String toString() {
    return 'SchulteState(gridRows: $gridRows, gridCols: $gridCols, numbers: $numbers, currentNumber: $currentNumber, mistakes: $mistakes, time: $time, isCompleted: $isCompleted, foundNumbers: $foundNumbers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SchulteStateImpl &&
            (identical(other.gridRows, gridRows) ||
                other.gridRows == gridRows) &&
            (identical(other.gridCols, gridCols) ||
                other.gridCols == gridCols) &&
            const DeepCollectionEquality().equals(other._numbers, _numbers) &&
            (identical(other.currentNumber, currentNumber) ||
                other.currentNumber == currentNumber) &&
            (identical(other.mistakes, mistakes) ||
                other.mistakes == mistakes) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted) &&
            const DeepCollectionEquality().equals(
              other._foundNumbers,
              _foundNumbers,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    gridRows,
    gridCols,
    const DeepCollectionEquality().hash(_numbers),
    currentNumber,
    mistakes,
    time,
    isCompleted,
    const DeepCollectionEquality().hash(_foundNumbers),
  );

  /// Create a copy of SchulteState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SchulteStateImplCopyWith<_$SchulteStateImpl> get copyWith =>
      __$$SchulteStateImplCopyWithImpl<_$SchulteStateImpl>(this, _$identity);
}

abstract class _SchulteState implements SchulteState {
  const factory _SchulteState({
    final int gridRows,
    final int gridCols,
    final List<int> numbers,
    final int currentNumber,
    final int mistakes,
    final int time,
    final bool isCompleted,
    final Set<int> foundNumbers,
  }) = _$SchulteStateImpl;

  @override
  int get gridRows;
  @override
  int get gridCols;
  @override
  List<int> get numbers;
  @override
  int get currentNumber;
  @override
  int get mistakes;
  @override
  int get time;
  @override
  bool get isCompleted;
  @override
  Set<int> get foundNumbers;

  /// Create a copy of SchulteState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SchulteStateImplCopyWith<_$SchulteStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
