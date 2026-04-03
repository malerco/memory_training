// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chimp_test_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ChimpTestEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int gridSize) start,
    required TResult Function(int index) tapCell,
    required TResult Function() nextRound,
    required TResult Function() restart,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int gridSize)? start,
    TResult? Function(int index)? tapCell,
    TResult? Function()? nextRound,
    TResult? Function()? restart,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int gridSize)? start,
    TResult Function(int index)? tapCell,
    TResult Function()? nextRound,
    TResult Function()? restart,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Start value) start,
    required TResult Function(_TapCell value) tapCell,
    required TResult Function(_NextRound value) nextRound,
    required TResult Function(_Restart value) restart,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Start value)? start,
    TResult? Function(_TapCell value)? tapCell,
    TResult? Function(_NextRound value)? nextRound,
    TResult? Function(_Restart value)? restart,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_TapCell value)? tapCell,
    TResult Function(_NextRound value)? nextRound,
    TResult Function(_Restart value)? restart,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChimpTestEventCopyWith<$Res> {
  factory $ChimpTestEventCopyWith(
    ChimpTestEvent value,
    $Res Function(ChimpTestEvent) then,
  ) = _$ChimpTestEventCopyWithImpl<$Res, ChimpTestEvent>;
}

/// @nodoc
class _$ChimpTestEventCopyWithImpl<$Res, $Val extends ChimpTestEvent>
    implements $ChimpTestEventCopyWith<$Res> {
  _$ChimpTestEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChimpTestEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartImplCopyWith<$Res> {
  factory _$$StartImplCopyWith(
    _$StartImpl value,
    $Res Function(_$StartImpl) then,
  ) = __$$StartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int gridSize});
}

/// @nodoc
class __$$StartImplCopyWithImpl<$Res>
    extends _$ChimpTestEventCopyWithImpl<$Res, _$StartImpl>
    implements _$$StartImplCopyWith<$Res> {
  __$$StartImplCopyWithImpl(
    _$StartImpl _value,
    $Res Function(_$StartImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChimpTestEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? gridSize = null}) {
    return _then(
      _$StartImpl(
        gridSize: null == gridSize
            ? _value.gridSize
            : gridSize // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$StartImpl implements _Start {
  const _$StartImpl({required this.gridSize});

  @override
  final int gridSize;

  @override
  String toString() {
    return 'ChimpTestEvent.start(gridSize: $gridSize)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartImpl &&
            (identical(other.gridSize, gridSize) ||
                other.gridSize == gridSize));
  }

  @override
  int get hashCode => Object.hash(runtimeType, gridSize);

  /// Create a copy of ChimpTestEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StartImplCopyWith<_$StartImpl> get copyWith =>
      __$$StartImplCopyWithImpl<_$StartImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int gridSize) start,
    required TResult Function(int index) tapCell,
    required TResult Function() nextRound,
    required TResult Function() restart,
  }) {
    return start(gridSize);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int gridSize)? start,
    TResult? Function(int index)? tapCell,
    TResult? Function()? nextRound,
    TResult? Function()? restart,
  }) {
    return start?.call(gridSize);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int gridSize)? start,
    TResult Function(int index)? tapCell,
    TResult Function()? nextRound,
    TResult Function()? restart,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(gridSize);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Start value) start,
    required TResult Function(_TapCell value) tapCell,
    required TResult Function(_NextRound value) nextRound,
    required TResult Function(_Restart value) restart,
  }) {
    return start(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Start value)? start,
    TResult? Function(_TapCell value)? tapCell,
    TResult? Function(_NextRound value)? nextRound,
    TResult? Function(_Restart value)? restart,
  }) {
    return start?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_TapCell value)? tapCell,
    TResult Function(_NextRound value)? nextRound,
    TResult Function(_Restart value)? restart,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(this);
    }
    return orElse();
  }
}

abstract class _Start implements ChimpTestEvent {
  const factory _Start({required final int gridSize}) = _$StartImpl;

  int get gridSize;

  /// Create a copy of ChimpTestEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StartImplCopyWith<_$StartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TapCellImplCopyWith<$Res> {
  factory _$$TapCellImplCopyWith(
    _$TapCellImpl value,
    $Res Function(_$TapCellImpl) then,
  ) = __$$TapCellImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$TapCellImplCopyWithImpl<$Res>
    extends _$ChimpTestEventCopyWithImpl<$Res, _$TapCellImpl>
    implements _$$TapCellImplCopyWith<$Res> {
  __$$TapCellImplCopyWithImpl(
    _$TapCellImpl _value,
    $Res Function(_$TapCellImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChimpTestEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? index = null}) {
    return _then(
      _$TapCellImpl(
        null == index
            ? _value.index
            : index // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$TapCellImpl implements _TapCell {
  const _$TapCellImpl(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'ChimpTestEvent.tapCell(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TapCellImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  /// Create a copy of ChimpTestEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TapCellImplCopyWith<_$TapCellImpl> get copyWith =>
      __$$TapCellImplCopyWithImpl<_$TapCellImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int gridSize) start,
    required TResult Function(int index) tapCell,
    required TResult Function() nextRound,
    required TResult Function() restart,
  }) {
    return tapCell(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int gridSize)? start,
    TResult? Function(int index)? tapCell,
    TResult? Function()? nextRound,
    TResult? Function()? restart,
  }) {
    return tapCell?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int gridSize)? start,
    TResult Function(int index)? tapCell,
    TResult Function()? nextRound,
    TResult Function()? restart,
    required TResult orElse(),
  }) {
    if (tapCell != null) {
      return tapCell(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Start value) start,
    required TResult Function(_TapCell value) tapCell,
    required TResult Function(_NextRound value) nextRound,
    required TResult Function(_Restart value) restart,
  }) {
    return tapCell(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Start value)? start,
    TResult? Function(_TapCell value)? tapCell,
    TResult? Function(_NextRound value)? nextRound,
    TResult? Function(_Restart value)? restart,
  }) {
    return tapCell?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_TapCell value)? tapCell,
    TResult Function(_NextRound value)? nextRound,
    TResult Function(_Restart value)? restart,
    required TResult orElse(),
  }) {
    if (tapCell != null) {
      return tapCell(this);
    }
    return orElse();
  }
}

abstract class _TapCell implements ChimpTestEvent {
  const factory _TapCell(final int index) = _$TapCellImpl;

  int get index;

  /// Create a copy of ChimpTestEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TapCellImplCopyWith<_$TapCellImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NextRoundImplCopyWith<$Res> {
  factory _$$NextRoundImplCopyWith(
    _$NextRoundImpl value,
    $Res Function(_$NextRoundImpl) then,
  ) = __$$NextRoundImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NextRoundImplCopyWithImpl<$Res>
    extends _$ChimpTestEventCopyWithImpl<$Res, _$NextRoundImpl>
    implements _$$NextRoundImplCopyWith<$Res> {
  __$$NextRoundImplCopyWithImpl(
    _$NextRoundImpl _value,
    $Res Function(_$NextRoundImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChimpTestEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NextRoundImpl implements _NextRound {
  const _$NextRoundImpl();

  @override
  String toString() {
    return 'ChimpTestEvent.nextRound()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NextRoundImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int gridSize) start,
    required TResult Function(int index) tapCell,
    required TResult Function() nextRound,
    required TResult Function() restart,
  }) {
    return nextRound();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int gridSize)? start,
    TResult? Function(int index)? tapCell,
    TResult? Function()? nextRound,
    TResult? Function()? restart,
  }) {
    return nextRound?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int gridSize)? start,
    TResult Function(int index)? tapCell,
    TResult Function()? nextRound,
    TResult Function()? restart,
    required TResult orElse(),
  }) {
    if (nextRound != null) {
      return nextRound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Start value) start,
    required TResult Function(_TapCell value) tapCell,
    required TResult Function(_NextRound value) nextRound,
    required TResult Function(_Restart value) restart,
  }) {
    return nextRound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Start value)? start,
    TResult? Function(_TapCell value)? tapCell,
    TResult? Function(_NextRound value)? nextRound,
    TResult? Function(_Restart value)? restart,
  }) {
    return nextRound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_TapCell value)? tapCell,
    TResult Function(_NextRound value)? nextRound,
    TResult Function(_Restart value)? restart,
    required TResult orElse(),
  }) {
    if (nextRound != null) {
      return nextRound(this);
    }
    return orElse();
  }
}

abstract class _NextRound implements ChimpTestEvent {
  const factory _NextRound() = _$NextRoundImpl;
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
    extends _$ChimpTestEventCopyWithImpl<$Res, _$RestartImpl>
    implements _$$RestartImplCopyWith<$Res> {
  __$$RestartImplCopyWithImpl(
    _$RestartImpl _value,
    $Res Function(_$RestartImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChimpTestEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RestartImpl implements _Restart {
  const _$RestartImpl();

  @override
  String toString() {
    return 'ChimpTestEvent.restart()';
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
    required TResult Function(int gridSize) start,
    required TResult Function(int index) tapCell,
    required TResult Function() nextRound,
    required TResult Function() restart,
  }) {
    return restart();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int gridSize)? start,
    TResult? Function(int index)? tapCell,
    TResult? Function()? nextRound,
    TResult? Function()? restart,
  }) {
    return restart?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int gridSize)? start,
    TResult Function(int index)? tapCell,
    TResult Function()? nextRound,
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
    required TResult Function(_TapCell value) tapCell,
    required TResult Function(_NextRound value) nextRound,
    required TResult Function(_Restart value) restart,
  }) {
    return restart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Start value)? start,
    TResult? Function(_TapCell value)? tapCell,
    TResult? Function(_NextRound value)? nextRound,
    TResult? Function(_Restart value)? restart,
  }) {
    return restart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_TapCell value)? tapCell,
    TResult Function(_NextRound value)? nextRound,
    TResult Function(_Restart value)? restart,
    required TResult orElse(),
  }) {
    if (restart != null) {
      return restart(this);
    }
    return orElse();
  }
}

abstract class _Restart implements ChimpTestEvent {
  const factory _Restart() = _$RestartImpl;
}

/// @nodoc
mixin _$ChimpTestState {
  int get gridSize => throw _privateConstructorUsedError;
  int get numbersCount => throw _privateConstructorUsedError;
  Map<int, int> get numberPositions =>
      throw _privateConstructorUsedError; // position -> number
  int get nextExpectedNumber => throw _privateConstructorUsedError;
  ChimpTestPhase get phase => throw _privateConstructorUsedError;
  int get score => throw _privateConstructorUsedError;
  int get highestLevel => throw _privateConstructorUsedError;
  bool get showNumbers => throw _privateConstructorUsedError;

  /// Create a copy of ChimpTestState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChimpTestStateCopyWith<ChimpTestState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChimpTestStateCopyWith<$Res> {
  factory $ChimpTestStateCopyWith(
    ChimpTestState value,
    $Res Function(ChimpTestState) then,
  ) = _$ChimpTestStateCopyWithImpl<$Res, ChimpTestState>;
  @useResult
  $Res call({
    int gridSize,
    int numbersCount,
    Map<int, int> numberPositions,
    int nextExpectedNumber,
    ChimpTestPhase phase,
    int score,
    int highestLevel,
    bool showNumbers,
  });
}

/// @nodoc
class _$ChimpTestStateCopyWithImpl<$Res, $Val extends ChimpTestState>
    implements $ChimpTestStateCopyWith<$Res> {
  _$ChimpTestStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChimpTestState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gridSize = null,
    Object? numbersCount = null,
    Object? numberPositions = null,
    Object? nextExpectedNumber = null,
    Object? phase = null,
    Object? score = null,
    Object? highestLevel = null,
    Object? showNumbers = null,
  }) {
    return _then(
      _value.copyWith(
            gridSize: null == gridSize
                ? _value.gridSize
                : gridSize // ignore: cast_nullable_to_non_nullable
                      as int,
            numbersCount: null == numbersCount
                ? _value.numbersCount
                : numbersCount // ignore: cast_nullable_to_non_nullable
                      as int,
            numberPositions: null == numberPositions
                ? _value.numberPositions
                : numberPositions // ignore: cast_nullable_to_non_nullable
                      as Map<int, int>,
            nextExpectedNumber: null == nextExpectedNumber
                ? _value.nextExpectedNumber
                : nextExpectedNumber // ignore: cast_nullable_to_non_nullable
                      as int,
            phase: null == phase
                ? _value.phase
                : phase // ignore: cast_nullable_to_non_nullable
                      as ChimpTestPhase,
            score: null == score
                ? _value.score
                : score // ignore: cast_nullable_to_non_nullable
                      as int,
            highestLevel: null == highestLevel
                ? _value.highestLevel
                : highestLevel // ignore: cast_nullable_to_non_nullable
                      as int,
            showNumbers: null == showNumbers
                ? _value.showNumbers
                : showNumbers // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ChimpTestStateImplCopyWith<$Res>
    implements $ChimpTestStateCopyWith<$Res> {
  factory _$$ChimpTestStateImplCopyWith(
    _$ChimpTestStateImpl value,
    $Res Function(_$ChimpTestStateImpl) then,
  ) = __$$ChimpTestStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int gridSize,
    int numbersCount,
    Map<int, int> numberPositions,
    int nextExpectedNumber,
    ChimpTestPhase phase,
    int score,
    int highestLevel,
    bool showNumbers,
  });
}

/// @nodoc
class __$$ChimpTestStateImplCopyWithImpl<$Res>
    extends _$ChimpTestStateCopyWithImpl<$Res, _$ChimpTestStateImpl>
    implements _$$ChimpTestStateImplCopyWith<$Res> {
  __$$ChimpTestStateImplCopyWithImpl(
    _$ChimpTestStateImpl _value,
    $Res Function(_$ChimpTestStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChimpTestState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gridSize = null,
    Object? numbersCount = null,
    Object? numberPositions = null,
    Object? nextExpectedNumber = null,
    Object? phase = null,
    Object? score = null,
    Object? highestLevel = null,
    Object? showNumbers = null,
  }) {
    return _then(
      _$ChimpTestStateImpl(
        gridSize: null == gridSize
            ? _value.gridSize
            : gridSize // ignore: cast_nullable_to_non_nullable
                  as int,
        numbersCount: null == numbersCount
            ? _value.numbersCount
            : numbersCount // ignore: cast_nullable_to_non_nullable
                  as int,
        numberPositions: null == numberPositions
            ? _value._numberPositions
            : numberPositions // ignore: cast_nullable_to_non_nullable
                  as Map<int, int>,
        nextExpectedNumber: null == nextExpectedNumber
            ? _value.nextExpectedNumber
            : nextExpectedNumber // ignore: cast_nullable_to_non_nullable
                  as int,
        phase: null == phase
            ? _value.phase
            : phase // ignore: cast_nullable_to_non_nullable
                  as ChimpTestPhase,
        score: null == score
            ? _value.score
            : score // ignore: cast_nullable_to_non_nullable
                  as int,
        highestLevel: null == highestLevel
            ? _value.highestLevel
            : highestLevel // ignore: cast_nullable_to_non_nullable
                  as int,
        showNumbers: null == showNumbers
            ? _value.showNumbers
            : showNumbers // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc

class _$ChimpTestStateImpl implements _ChimpTestState {
  const _$ChimpTestStateImpl({
    this.gridSize = 4,
    this.numbersCount = 4,
    final Map<int, int> numberPositions = const {},
    this.nextExpectedNumber = 1,
    this.phase = ChimpTestPhase.showing,
    this.score = 0,
    this.highestLevel = 0,
    this.showNumbers = false,
  }) : _numberPositions = numberPositions;

  @override
  @JsonKey()
  final int gridSize;
  @override
  @JsonKey()
  final int numbersCount;
  final Map<int, int> _numberPositions;
  @override
  @JsonKey()
  Map<int, int> get numberPositions {
    if (_numberPositions is EqualUnmodifiableMapView) return _numberPositions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_numberPositions);
  }

  // position -> number
  @override
  @JsonKey()
  final int nextExpectedNumber;
  @override
  @JsonKey()
  final ChimpTestPhase phase;
  @override
  @JsonKey()
  final int score;
  @override
  @JsonKey()
  final int highestLevel;
  @override
  @JsonKey()
  final bool showNumbers;

  @override
  String toString() {
    return 'ChimpTestState(gridSize: $gridSize, numbersCount: $numbersCount, numberPositions: $numberPositions, nextExpectedNumber: $nextExpectedNumber, phase: $phase, score: $score, highestLevel: $highestLevel, showNumbers: $showNumbers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChimpTestStateImpl &&
            (identical(other.gridSize, gridSize) ||
                other.gridSize == gridSize) &&
            (identical(other.numbersCount, numbersCount) ||
                other.numbersCount == numbersCount) &&
            const DeepCollectionEquality().equals(
              other._numberPositions,
              _numberPositions,
            ) &&
            (identical(other.nextExpectedNumber, nextExpectedNumber) ||
                other.nextExpectedNumber == nextExpectedNumber) &&
            (identical(other.phase, phase) || other.phase == phase) &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.highestLevel, highestLevel) ||
                other.highestLevel == highestLevel) &&
            (identical(other.showNumbers, showNumbers) ||
                other.showNumbers == showNumbers));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    gridSize,
    numbersCount,
    const DeepCollectionEquality().hash(_numberPositions),
    nextExpectedNumber,
    phase,
    score,
    highestLevel,
    showNumbers,
  );

  /// Create a copy of ChimpTestState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChimpTestStateImplCopyWith<_$ChimpTestStateImpl> get copyWith =>
      __$$ChimpTestStateImplCopyWithImpl<_$ChimpTestStateImpl>(
        this,
        _$identity,
      );
}

abstract class _ChimpTestState implements ChimpTestState {
  const factory _ChimpTestState({
    final int gridSize,
    final int numbersCount,
    final Map<int, int> numberPositions,
    final int nextExpectedNumber,
    final ChimpTestPhase phase,
    final int score,
    final int highestLevel,
    final bool showNumbers,
  }) = _$ChimpTestStateImpl;

  @override
  int get gridSize;
  @override
  int get numbersCount;
  @override
  Map<int, int> get numberPositions; // position -> number
  @override
  int get nextExpectedNumber;
  @override
  ChimpTestPhase get phase;
  @override
  int get score;
  @override
  int get highestLevel;
  @override
  bool get showNumbers;

  /// Create a copy of ChimpTestState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChimpTestStateImplCopyWith<_$ChimpTestStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
