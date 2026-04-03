// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'object_location_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ObjectLocationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int gridSize) start,
    required TResult Function(int index) tapCell,
    required TResult Function() submit,
    required TResult Function() nextRound,
    required TResult Function() restart,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int gridSize)? start,
    TResult? Function(int index)? tapCell,
    TResult? Function()? submit,
    TResult? Function()? nextRound,
    TResult? Function()? restart,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int gridSize)? start,
    TResult Function(int index)? tapCell,
    TResult Function()? submit,
    TResult Function()? nextRound,
    TResult Function()? restart,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Start value) start,
    required TResult Function(_TapCell value) tapCell,
    required TResult Function(_Submit value) submit,
    required TResult Function(_NextRound value) nextRound,
    required TResult Function(_Restart value) restart,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Start value)? start,
    TResult? Function(_TapCell value)? tapCell,
    TResult? Function(_Submit value)? submit,
    TResult? Function(_NextRound value)? nextRound,
    TResult? Function(_Restart value)? restart,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_TapCell value)? tapCell,
    TResult Function(_Submit value)? submit,
    TResult Function(_NextRound value)? nextRound,
    TResult Function(_Restart value)? restart,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ObjectLocationEventCopyWith<$Res> {
  factory $ObjectLocationEventCopyWith(
    ObjectLocationEvent value,
    $Res Function(ObjectLocationEvent) then,
  ) = _$ObjectLocationEventCopyWithImpl<$Res, ObjectLocationEvent>;
}

/// @nodoc
class _$ObjectLocationEventCopyWithImpl<$Res, $Val extends ObjectLocationEvent>
    implements $ObjectLocationEventCopyWith<$Res> {
  _$ObjectLocationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ObjectLocationEvent
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
    extends _$ObjectLocationEventCopyWithImpl<$Res, _$StartImpl>
    implements _$$StartImplCopyWith<$Res> {
  __$$StartImplCopyWithImpl(
    _$StartImpl _value,
    $Res Function(_$StartImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ObjectLocationEvent
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
    return 'ObjectLocationEvent.start(gridSize: $gridSize)';
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

  /// Create a copy of ObjectLocationEvent
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
    required TResult Function() submit,
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
    TResult? Function()? submit,
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
    TResult Function()? submit,
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
    required TResult Function(_Submit value) submit,
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
    TResult? Function(_Submit value)? submit,
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
    TResult Function(_Submit value)? submit,
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

abstract class _Start implements ObjectLocationEvent {
  const factory _Start({required final int gridSize}) = _$StartImpl;

  int get gridSize;

  /// Create a copy of ObjectLocationEvent
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
    extends _$ObjectLocationEventCopyWithImpl<$Res, _$TapCellImpl>
    implements _$$TapCellImplCopyWith<$Res> {
  __$$TapCellImplCopyWithImpl(
    _$TapCellImpl _value,
    $Res Function(_$TapCellImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ObjectLocationEvent
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
    return 'ObjectLocationEvent.tapCell(index: $index)';
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

  /// Create a copy of ObjectLocationEvent
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
    required TResult Function() submit,
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
    TResult? Function()? submit,
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
    TResult Function()? submit,
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
    required TResult Function(_Submit value) submit,
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
    TResult? Function(_Submit value)? submit,
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
    TResult Function(_Submit value)? submit,
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

abstract class _TapCell implements ObjectLocationEvent {
  const factory _TapCell(final int index) = _$TapCellImpl;

  int get index;

  /// Create a copy of ObjectLocationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TapCellImplCopyWith<_$TapCellImpl> get copyWith =>
      throw _privateConstructorUsedError;
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
    extends _$ObjectLocationEventCopyWithImpl<$Res, _$SubmitImpl>
    implements _$$SubmitImplCopyWith<$Res> {
  __$$SubmitImplCopyWithImpl(
    _$SubmitImpl _value,
    $Res Function(_$SubmitImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ObjectLocationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SubmitImpl implements _Submit {
  const _$SubmitImpl();

  @override
  String toString() {
    return 'ObjectLocationEvent.submit()';
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
    required TResult Function(int gridSize) start,
    required TResult Function(int index) tapCell,
    required TResult Function() submit,
    required TResult Function() nextRound,
    required TResult Function() restart,
  }) {
    return submit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int gridSize)? start,
    TResult? Function(int index)? tapCell,
    TResult? Function()? submit,
    TResult? Function()? nextRound,
    TResult? Function()? restart,
  }) {
    return submit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int gridSize)? start,
    TResult Function(int index)? tapCell,
    TResult Function()? submit,
    TResult Function()? nextRound,
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
    required TResult Function(_TapCell value) tapCell,
    required TResult Function(_Submit value) submit,
    required TResult Function(_NextRound value) nextRound,
    required TResult Function(_Restart value) restart,
  }) {
    return submit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Start value)? start,
    TResult? Function(_TapCell value)? tapCell,
    TResult? Function(_Submit value)? submit,
    TResult? Function(_NextRound value)? nextRound,
    TResult? Function(_Restart value)? restart,
  }) {
    return submit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_TapCell value)? tapCell,
    TResult Function(_Submit value)? submit,
    TResult Function(_NextRound value)? nextRound,
    TResult Function(_Restart value)? restart,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit(this);
    }
    return orElse();
  }
}

abstract class _Submit implements ObjectLocationEvent {
  const factory _Submit() = _$SubmitImpl;
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
    extends _$ObjectLocationEventCopyWithImpl<$Res, _$NextRoundImpl>
    implements _$$NextRoundImplCopyWith<$Res> {
  __$$NextRoundImplCopyWithImpl(
    _$NextRoundImpl _value,
    $Res Function(_$NextRoundImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ObjectLocationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NextRoundImpl implements _NextRound {
  const _$NextRoundImpl();

  @override
  String toString() {
    return 'ObjectLocationEvent.nextRound()';
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
    required TResult Function() submit,
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
    TResult? Function()? submit,
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
    TResult Function()? submit,
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
    required TResult Function(_Submit value) submit,
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
    TResult? Function(_Submit value)? submit,
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
    TResult Function(_Submit value)? submit,
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

abstract class _NextRound implements ObjectLocationEvent {
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
    extends _$ObjectLocationEventCopyWithImpl<$Res, _$RestartImpl>
    implements _$$RestartImplCopyWith<$Res> {
  __$$RestartImplCopyWithImpl(
    _$RestartImpl _value,
    $Res Function(_$RestartImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ObjectLocationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RestartImpl implements _Restart {
  const _$RestartImpl();

  @override
  String toString() {
    return 'ObjectLocationEvent.restart()';
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
    required TResult Function() submit,
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
    TResult? Function()? submit,
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
    TResult Function()? submit,
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
    required TResult Function(_Submit value) submit,
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
    TResult? Function(_Submit value)? submit,
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
    TResult Function(_Submit value)? submit,
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

abstract class _Restart implements ObjectLocationEvent {
  const factory _Restart() = _$RestartImpl;
}

/// @nodoc
mixin _$ObjectLocationState {
  int get gridSize => throw _privateConstructorUsedError;
  int get objectCount => throw _privateConstructorUsedError;
  Map<int, int> get objectPositions =>
      throw _privateConstructorUsedError; // position -> objectType (icon index)
  Map<int, int> get userAnswers =>
      throw _privateConstructorUsedError; // position -> objectType
  ObjectLocationPhase get phase => throw _privateConstructorUsedError;
  int get score => throw _privateConstructorUsedError;
  int get round => throw _privateConstructorUsedError;
  int get memorizeTimeLeft => throw _privateConstructorUsedError;
  int get correctCount => throw _privateConstructorUsedError;

  /// Create a copy of ObjectLocationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ObjectLocationStateCopyWith<ObjectLocationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ObjectLocationStateCopyWith<$Res> {
  factory $ObjectLocationStateCopyWith(
    ObjectLocationState value,
    $Res Function(ObjectLocationState) then,
  ) = _$ObjectLocationStateCopyWithImpl<$Res, ObjectLocationState>;
  @useResult
  $Res call({
    int gridSize,
    int objectCount,
    Map<int, int> objectPositions,
    Map<int, int> userAnswers,
    ObjectLocationPhase phase,
    int score,
    int round,
    int memorizeTimeLeft,
    int correctCount,
  });
}

/// @nodoc
class _$ObjectLocationStateCopyWithImpl<$Res, $Val extends ObjectLocationState>
    implements $ObjectLocationStateCopyWith<$Res> {
  _$ObjectLocationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ObjectLocationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gridSize = null,
    Object? objectCount = null,
    Object? objectPositions = null,
    Object? userAnswers = null,
    Object? phase = null,
    Object? score = null,
    Object? round = null,
    Object? memorizeTimeLeft = null,
    Object? correctCount = null,
  }) {
    return _then(
      _value.copyWith(
            gridSize: null == gridSize
                ? _value.gridSize
                : gridSize // ignore: cast_nullable_to_non_nullable
                      as int,
            objectCount: null == objectCount
                ? _value.objectCount
                : objectCount // ignore: cast_nullable_to_non_nullable
                      as int,
            objectPositions: null == objectPositions
                ? _value.objectPositions
                : objectPositions // ignore: cast_nullable_to_non_nullable
                      as Map<int, int>,
            userAnswers: null == userAnswers
                ? _value.userAnswers
                : userAnswers // ignore: cast_nullable_to_non_nullable
                      as Map<int, int>,
            phase: null == phase
                ? _value.phase
                : phase // ignore: cast_nullable_to_non_nullable
                      as ObjectLocationPhase,
            score: null == score
                ? _value.score
                : score // ignore: cast_nullable_to_non_nullable
                      as int,
            round: null == round
                ? _value.round
                : round // ignore: cast_nullable_to_non_nullable
                      as int,
            memorizeTimeLeft: null == memorizeTimeLeft
                ? _value.memorizeTimeLeft
                : memorizeTimeLeft // ignore: cast_nullable_to_non_nullable
                      as int,
            correctCount: null == correctCount
                ? _value.correctCount
                : correctCount // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ObjectLocationStateImplCopyWith<$Res>
    implements $ObjectLocationStateCopyWith<$Res> {
  factory _$$ObjectLocationStateImplCopyWith(
    _$ObjectLocationStateImpl value,
    $Res Function(_$ObjectLocationStateImpl) then,
  ) = __$$ObjectLocationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int gridSize,
    int objectCount,
    Map<int, int> objectPositions,
    Map<int, int> userAnswers,
    ObjectLocationPhase phase,
    int score,
    int round,
    int memorizeTimeLeft,
    int correctCount,
  });
}

/// @nodoc
class __$$ObjectLocationStateImplCopyWithImpl<$Res>
    extends _$ObjectLocationStateCopyWithImpl<$Res, _$ObjectLocationStateImpl>
    implements _$$ObjectLocationStateImplCopyWith<$Res> {
  __$$ObjectLocationStateImplCopyWithImpl(
    _$ObjectLocationStateImpl _value,
    $Res Function(_$ObjectLocationStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ObjectLocationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gridSize = null,
    Object? objectCount = null,
    Object? objectPositions = null,
    Object? userAnswers = null,
    Object? phase = null,
    Object? score = null,
    Object? round = null,
    Object? memorizeTimeLeft = null,
    Object? correctCount = null,
  }) {
    return _then(
      _$ObjectLocationStateImpl(
        gridSize: null == gridSize
            ? _value.gridSize
            : gridSize // ignore: cast_nullable_to_non_nullable
                  as int,
        objectCount: null == objectCount
            ? _value.objectCount
            : objectCount // ignore: cast_nullable_to_non_nullable
                  as int,
        objectPositions: null == objectPositions
            ? _value._objectPositions
            : objectPositions // ignore: cast_nullable_to_non_nullable
                  as Map<int, int>,
        userAnswers: null == userAnswers
            ? _value._userAnswers
            : userAnswers // ignore: cast_nullable_to_non_nullable
                  as Map<int, int>,
        phase: null == phase
            ? _value.phase
            : phase // ignore: cast_nullable_to_non_nullable
                  as ObjectLocationPhase,
        score: null == score
            ? _value.score
            : score // ignore: cast_nullable_to_non_nullable
                  as int,
        round: null == round
            ? _value.round
            : round // ignore: cast_nullable_to_non_nullable
                  as int,
        memorizeTimeLeft: null == memorizeTimeLeft
            ? _value.memorizeTimeLeft
            : memorizeTimeLeft // ignore: cast_nullable_to_non_nullable
                  as int,
        correctCount: null == correctCount
            ? _value.correctCount
            : correctCount // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$ObjectLocationStateImpl implements _ObjectLocationState {
  const _$ObjectLocationStateImpl({
    this.gridSize = 4,
    this.objectCount = 3,
    final Map<int, int> objectPositions = const {},
    final Map<int, int> userAnswers = const {},
    this.phase = ObjectLocationPhase.memorizing,
    this.score = 0,
    this.round = 0,
    this.memorizeTimeLeft = 3,
    this.correctCount = 0,
  }) : _objectPositions = objectPositions,
       _userAnswers = userAnswers;

  @override
  @JsonKey()
  final int gridSize;
  @override
  @JsonKey()
  final int objectCount;
  final Map<int, int> _objectPositions;
  @override
  @JsonKey()
  Map<int, int> get objectPositions {
    if (_objectPositions is EqualUnmodifiableMapView) return _objectPositions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_objectPositions);
  }

  // position -> objectType (icon index)
  final Map<int, int> _userAnswers;
  // position -> objectType (icon index)
  @override
  @JsonKey()
  Map<int, int> get userAnswers {
    if (_userAnswers is EqualUnmodifiableMapView) return _userAnswers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_userAnswers);
  }

  // position -> objectType
  @override
  @JsonKey()
  final ObjectLocationPhase phase;
  @override
  @JsonKey()
  final int score;
  @override
  @JsonKey()
  final int round;
  @override
  @JsonKey()
  final int memorizeTimeLeft;
  @override
  @JsonKey()
  final int correctCount;

  @override
  String toString() {
    return 'ObjectLocationState(gridSize: $gridSize, objectCount: $objectCount, objectPositions: $objectPositions, userAnswers: $userAnswers, phase: $phase, score: $score, round: $round, memorizeTimeLeft: $memorizeTimeLeft, correctCount: $correctCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ObjectLocationStateImpl &&
            (identical(other.gridSize, gridSize) ||
                other.gridSize == gridSize) &&
            (identical(other.objectCount, objectCount) ||
                other.objectCount == objectCount) &&
            const DeepCollectionEquality().equals(
              other._objectPositions,
              _objectPositions,
            ) &&
            const DeepCollectionEquality().equals(
              other._userAnswers,
              _userAnswers,
            ) &&
            (identical(other.phase, phase) || other.phase == phase) &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.round, round) || other.round == round) &&
            (identical(other.memorizeTimeLeft, memorizeTimeLeft) ||
                other.memorizeTimeLeft == memorizeTimeLeft) &&
            (identical(other.correctCount, correctCount) ||
                other.correctCount == correctCount));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    gridSize,
    objectCount,
    const DeepCollectionEquality().hash(_objectPositions),
    const DeepCollectionEquality().hash(_userAnswers),
    phase,
    score,
    round,
    memorizeTimeLeft,
    correctCount,
  );

  /// Create a copy of ObjectLocationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ObjectLocationStateImplCopyWith<_$ObjectLocationStateImpl> get copyWith =>
      __$$ObjectLocationStateImplCopyWithImpl<_$ObjectLocationStateImpl>(
        this,
        _$identity,
      );
}

abstract class _ObjectLocationState implements ObjectLocationState {
  const factory _ObjectLocationState({
    final int gridSize,
    final int objectCount,
    final Map<int, int> objectPositions,
    final Map<int, int> userAnswers,
    final ObjectLocationPhase phase,
    final int score,
    final int round,
    final int memorizeTimeLeft,
    final int correctCount,
  }) = _$ObjectLocationStateImpl;

  @override
  int get gridSize;
  @override
  int get objectCount;
  @override
  Map<int, int> get objectPositions; // position -> objectType (icon index)
  @override
  Map<int, int> get userAnswers; // position -> objectType
  @override
  ObjectLocationPhase get phase;
  @override
  int get score;
  @override
  int get round;
  @override
  int get memorizeTimeLeft;
  @override
  int get correctCount;

  /// Create a copy of ObjectLocationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ObjectLocationStateImplCopyWith<_$ObjectLocationStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
