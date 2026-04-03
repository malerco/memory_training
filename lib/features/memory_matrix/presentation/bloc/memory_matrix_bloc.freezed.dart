// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'memory_matrix_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$MemoryMatrixEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function(int index) toggleCell,
    required TResult Function() timerTick,
    required TResult Function() submit,
    required TResult Function() nextRound,
    required TResult Function() restart,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? start,
    TResult? Function(int index)? toggleCell,
    TResult? Function()? timerTick,
    TResult? Function()? submit,
    TResult? Function()? nextRound,
    TResult? Function()? restart,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function(int index)? toggleCell,
    TResult Function()? timerTick,
    TResult Function()? submit,
    TResult Function()? nextRound,
    TResult Function()? restart,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Start value) start,
    required TResult Function(_ToggleCell value) toggleCell,
    required TResult Function(_TimerTick value) timerTick,
    required TResult Function(_Submit value) submit,
    required TResult Function(_NextRound value) nextRound,
    required TResult Function(_Restart value) restart,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Start value)? start,
    TResult? Function(_ToggleCell value)? toggleCell,
    TResult? Function(_TimerTick value)? timerTick,
    TResult? Function(_Submit value)? submit,
    TResult? Function(_NextRound value)? nextRound,
    TResult? Function(_Restart value)? restart,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_ToggleCell value)? toggleCell,
    TResult Function(_TimerTick value)? timerTick,
    TResult Function(_Submit value)? submit,
    TResult Function(_NextRound value)? nextRound,
    TResult Function(_Restart value)? restart,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemoryMatrixEventCopyWith<$Res> {
  factory $MemoryMatrixEventCopyWith(
    MemoryMatrixEvent value,
    $Res Function(MemoryMatrixEvent) then,
  ) = _$MemoryMatrixEventCopyWithImpl<$Res, MemoryMatrixEvent>;
}

/// @nodoc
class _$MemoryMatrixEventCopyWithImpl<$Res, $Val extends MemoryMatrixEvent>
    implements $MemoryMatrixEventCopyWith<$Res> {
  _$MemoryMatrixEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MemoryMatrixEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartImplCopyWith<$Res> {
  factory _$$StartImplCopyWith(
    _$StartImpl value,
    $Res Function(_$StartImpl) then,
  ) = __$$StartImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartImplCopyWithImpl<$Res>
    extends _$MemoryMatrixEventCopyWithImpl<$Res, _$StartImpl>
    implements _$$StartImplCopyWith<$Res> {
  __$$StartImplCopyWithImpl(
    _$StartImpl _value,
    $Res Function(_$StartImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MemoryMatrixEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartImpl implements _Start {
  const _$StartImpl();

  @override
  String toString() {
    return 'MemoryMatrixEvent.start()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function(int index) toggleCell,
    required TResult Function() timerTick,
    required TResult Function() submit,
    required TResult Function() nextRound,
    required TResult Function() restart,
  }) {
    return start();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? start,
    TResult? Function(int index)? toggleCell,
    TResult? Function()? timerTick,
    TResult? Function()? submit,
    TResult? Function()? nextRound,
    TResult? Function()? restart,
  }) {
    return start?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function(int index)? toggleCell,
    TResult Function()? timerTick,
    TResult Function()? submit,
    TResult Function()? nextRound,
    TResult Function()? restart,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Start value) start,
    required TResult Function(_ToggleCell value) toggleCell,
    required TResult Function(_TimerTick value) timerTick,
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
    TResult? Function(_ToggleCell value)? toggleCell,
    TResult? Function(_TimerTick value)? timerTick,
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
    TResult Function(_ToggleCell value)? toggleCell,
    TResult Function(_TimerTick value)? timerTick,
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

abstract class _Start implements MemoryMatrixEvent {
  const factory _Start() = _$StartImpl;
}

/// @nodoc
abstract class _$$ToggleCellImplCopyWith<$Res> {
  factory _$$ToggleCellImplCopyWith(
    _$ToggleCellImpl value,
    $Res Function(_$ToggleCellImpl) then,
  ) = __$$ToggleCellImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$ToggleCellImplCopyWithImpl<$Res>
    extends _$MemoryMatrixEventCopyWithImpl<$Res, _$ToggleCellImpl>
    implements _$$ToggleCellImplCopyWith<$Res> {
  __$$ToggleCellImplCopyWithImpl(
    _$ToggleCellImpl _value,
    $Res Function(_$ToggleCellImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MemoryMatrixEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? index = null}) {
    return _then(
      _$ToggleCellImpl(
        null == index
            ? _value.index
            : index // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$ToggleCellImpl implements _ToggleCell {
  const _$ToggleCellImpl(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'MemoryMatrixEvent.toggleCell(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToggleCellImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  /// Create a copy of MemoryMatrixEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ToggleCellImplCopyWith<_$ToggleCellImpl> get copyWith =>
      __$$ToggleCellImplCopyWithImpl<_$ToggleCellImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function(int index) toggleCell,
    required TResult Function() timerTick,
    required TResult Function() submit,
    required TResult Function() nextRound,
    required TResult Function() restart,
  }) {
    return toggleCell(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? start,
    TResult? Function(int index)? toggleCell,
    TResult? Function()? timerTick,
    TResult? Function()? submit,
    TResult? Function()? nextRound,
    TResult? Function()? restart,
  }) {
    return toggleCell?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function(int index)? toggleCell,
    TResult Function()? timerTick,
    TResult Function()? submit,
    TResult Function()? nextRound,
    TResult Function()? restart,
    required TResult orElse(),
  }) {
    if (toggleCell != null) {
      return toggleCell(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Start value) start,
    required TResult Function(_ToggleCell value) toggleCell,
    required TResult Function(_TimerTick value) timerTick,
    required TResult Function(_Submit value) submit,
    required TResult Function(_NextRound value) nextRound,
    required TResult Function(_Restart value) restart,
  }) {
    return toggleCell(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Start value)? start,
    TResult? Function(_ToggleCell value)? toggleCell,
    TResult? Function(_TimerTick value)? timerTick,
    TResult? Function(_Submit value)? submit,
    TResult? Function(_NextRound value)? nextRound,
    TResult? Function(_Restart value)? restart,
  }) {
    return toggleCell?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_ToggleCell value)? toggleCell,
    TResult Function(_TimerTick value)? timerTick,
    TResult Function(_Submit value)? submit,
    TResult Function(_NextRound value)? nextRound,
    TResult Function(_Restart value)? restart,
    required TResult orElse(),
  }) {
    if (toggleCell != null) {
      return toggleCell(this);
    }
    return orElse();
  }
}

abstract class _ToggleCell implements MemoryMatrixEvent {
  const factory _ToggleCell(final int index) = _$ToggleCellImpl;

  int get index;

  /// Create a copy of MemoryMatrixEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ToggleCellImplCopyWith<_$ToggleCellImpl> get copyWith =>
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
    extends _$MemoryMatrixEventCopyWithImpl<$Res, _$TimerTickImpl>
    implements _$$TimerTickImplCopyWith<$Res> {
  __$$TimerTickImplCopyWithImpl(
    _$TimerTickImpl _value,
    $Res Function(_$TimerTickImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MemoryMatrixEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$TimerTickImpl implements _TimerTick {
  const _$TimerTickImpl();

  @override
  String toString() {
    return 'MemoryMatrixEvent.timerTick()';
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
    required TResult Function() start,
    required TResult Function(int index) toggleCell,
    required TResult Function() timerTick,
    required TResult Function() submit,
    required TResult Function() nextRound,
    required TResult Function() restart,
  }) {
    return timerTick();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? start,
    TResult? Function(int index)? toggleCell,
    TResult? Function()? timerTick,
    TResult? Function()? submit,
    TResult? Function()? nextRound,
    TResult? Function()? restart,
  }) {
    return timerTick?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function(int index)? toggleCell,
    TResult Function()? timerTick,
    TResult Function()? submit,
    TResult Function()? nextRound,
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
    required TResult Function(_ToggleCell value) toggleCell,
    required TResult Function(_TimerTick value) timerTick,
    required TResult Function(_Submit value) submit,
    required TResult Function(_NextRound value) nextRound,
    required TResult Function(_Restart value) restart,
  }) {
    return timerTick(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Start value)? start,
    TResult? Function(_ToggleCell value)? toggleCell,
    TResult? Function(_TimerTick value)? timerTick,
    TResult? Function(_Submit value)? submit,
    TResult? Function(_NextRound value)? nextRound,
    TResult? Function(_Restart value)? restart,
  }) {
    return timerTick?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_ToggleCell value)? toggleCell,
    TResult Function(_TimerTick value)? timerTick,
    TResult Function(_Submit value)? submit,
    TResult Function(_NextRound value)? nextRound,
    TResult Function(_Restart value)? restart,
    required TResult orElse(),
  }) {
    if (timerTick != null) {
      return timerTick(this);
    }
    return orElse();
  }
}

abstract class _TimerTick implements MemoryMatrixEvent {
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
    extends _$MemoryMatrixEventCopyWithImpl<$Res, _$SubmitImpl>
    implements _$$SubmitImplCopyWith<$Res> {
  __$$SubmitImplCopyWithImpl(
    _$SubmitImpl _value,
    $Res Function(_$SubmitImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MemoryMatrixEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SubmitImpl implements _Submit {
  const _$SubmitImpl();

  @override
  String toString() {
    return 'MemoryMatrixEvent.submit()';
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
    required TResult Function() start,
    required TResult Function(int index) toggleCell,
    required TResult Function() timerTick,
    required TResult Function() submit,
    required TResult Function() nextRound,
    required TResult Function() restart,
  }) {
    return submit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? start,
    TResult? Function(int index)? toggleCell,
    TResult? Function()? timerTick,
    TResult? Function()? submit,
    TResult? Function()? nextRound,
    TResult? Function()? restart,
  }) {
    return submit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function(int index)? toggleCell,
    TResult Function()? timerTick,
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
    required TResult Function(_ToggleCell value) toggleCell,
    required TResult Function(_TimerTick value) timerTick,
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
    TResult? Function(_ToggleCell value)? toggleCell,
    TResult? Function(_TimerTick value)? timerTick,
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
    TResult Function(_ToggleCell value)? toggleCell,
    TResult Function(_TimerTick value)? timerTick,
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

abstract class _Submit implements MemoryMatrixEvent {
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
    extends _$MemoryMatrixEventCopyWithImpl<$Res, _$NextRoundImpl>
    implements _$$NextRoundImplCopyWith<$Res> {
  __$$NextRoundImplCopyWithImpl(
    _$NextRoundImpl _value,
    $Res Function(_$NextRoundImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MemoryMatrixEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NextRoundImpl implements _NextRound {
  const _$NextRoundImpl();

  @override
  String toString() {
    return 'MemoryMatrixEvent.nextRound()';
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
    required TResult Function() start,
    required TResult Function(int index) toggleCell,
    required TResult Function() timerTick,
    required TResult Function() submit,
    required TResult Function() nextRound,
    required TResult Function() restart,
  }) {
    return nextRound();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? start,
    TResult? Function(int index)? toggleCell,
    TResult? Function()? timerTick,
    TResult? Function()? submit,
    TResult? Function()? nextRound,
    TResult? Function()? restart,
  }) {
    return nextRound?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function(int index)? toggleCell,
    TResult Function()? timerTick,
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
    required TResult Function(_ToggleCell value) toggleCell,
    required TResult Function(_TimerTick value) timerTick,
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
    TResult? Function(_ToggleCell value)? toggleCell,
    TResult? Function(_TimerTick value)? timerTick,
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
    TResult Function(_ToggleCell value)? toggleCell,
    TResult Function(_TimerTick value)? timerTick,
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

abstract class _NextRound implements MemoryMatrixEvent {
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
    extends _$MemoryMatrixEventCopyWithImpl<$Res, _$RestartImpl>
    implements _$$RestartImplCopyWith<$Res> {
  __$$RestartImplCopyWithImpl(
    _$RestartImpl _value,
    $Res Function(_$RestartImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MemoryMatrixEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RestartImpl implements _Restart {
  const _$RestartImpl();

  @override
  String toString() {
    return 'MemoryMatrixEvent.restart()';
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
    required TResult Function() start,
    required TResult Function(int index) toggleCell,
    required TResult Function() timerTick,
    required TResult Function() submit,
    required TResult Function() nextRound,
    required TResult Function() restart,
  }) {
    return restart();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? start,
    TResult? Function(int index)? toggleCell,
    TResult? Function()? timerTick,
    TResult? Function()? submit,
    TResult? Function()? nextRound,
    TResult? Function()? restart,
  }) {
    return restart?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function(int index)? toggleCell,
    TResult Function()? timerTick,
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
    required TResult Function(_ToggleCell value) toggleCell,
    required TResult Function(_TimerTick value) timerTick,
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
    TResult? Function(_ToggleCell value)? toggleCell,
    TResult? Function(_TimerTick value)? timerTick,
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
    TResult Function(_ToggleCell value)? toggleCell,
    TResult Function(_TimerTick value)? timerTick,
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

abstract class _Restart implements MemoryMatrixEvent {
  const factory _Restart() = _$RestartImpl;
}

/// @nodoc
mixin _$MemoryMatrixState {
  int get gridSize => throw _privateConstructorUsedError;
  int get highlightedCount => throw _privateConstructorUsedError;
  List<int> get targetCells => throw _privateConstructorUsedError;
  List<int> get userCells => throw _privateConstructorUsedError;
  MatrixPhase get phase => throw _privateConstructorUsedError;
  int get memorizeTimeLeft => throw _privateConstructorUsedError;
  int get totalTime => throw _privateConstructorUsedError;
  int get currentRound => throw _privateConstructorUsedError;
  int get totalRounds => throw _privateConstructorUsedError;
  int get mistakes => throw _privateConstructorUsedError;
  bool get roundCorrect => throw _privateConstructorUsedError;

  /// Create a copy of MemoryMatrixState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MemoryMatrixStateCopyWith<MemoryMatrixState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemoryMatrixStateCopyWith<$Res> {
  factory $MemoryMatrixStateCopyWith(
    MemoryMatrixState value,
    $Res Function(MemoryMatrixState) then,
  ) = _$MemoryMatrixStateCopyWithImpl<$Res, MemoryMatrixState>;
  @useResult
  $Res call({
    int gridSize,
    int highlightedCount,
    List<int> targetCells,
    List<int> userCells,
    MatrixPhase phase,
    int memorizeTimeLeft,
    int totalTime,
    int currentRound,
    int totalRounds,
    int mistakes,
    bool roundCorrect,
  });
}

/// @nodoc
class _$MemoryMatrixStateCopyWithImpl<$Res, $Val extends MemoryMatrixState>
    implements $MemoryMatrixStateCopyWith<$Res> {
  _$MemoryMatrixStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MemoryMatrixState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gridSize = null,
    Object? highlightedCount = null,
    Object? targetCells = null,
    Object? userCells = null,
    Object? phase = null,
    Object? memorizeTimeLeft = null,
    Object? totalTime = null,
    Object? currentRound = null,
    Object? totalRounds = null,
    Object? mistakes = null,
    Object? roundCorrect = null,
  }) {
    return _then(
      _value.copyWith(
            gridSize: null == gridSize
                ? _value.gridSize
                : gridSize // ignore: cast_nullable_to_non_nullable
                      as int,
            highlightedCount: null == highlightedCount
                ? _value.highlightedCount
                : highlightedCount // ignore: cast_nullable_to_non_nullable
                      as int,
            targetCells: null == targetCells
                ? _value.targetCells
                : targetCells // ignore: cast_nullable_to_non_nullable
                      as List<int>,
            userCells: null == userCells
                ? _value.userCells
                : userCells // ignore: cast_nullable_to_non_nullable
                      as List<int>,
            phase: null == phase
                ? _value.phase
                : phase // ignore: cast_nullable_to_non_nullable
                      as MatrixPhase,
            memorizeTimeLeft: null == memorizeTimeLeft
                ? _value.memorizeTimeLeft
                : memorizeTimeLeft // ignore: cast_nullable_to_non_nullable
                      as int,
            totalTime: null == totalTime
                ? _value.totalTime
                : totalTime // ignore: cast_nullable_to_non_nullable
                      as int,
            currentRound: null == currentRound
                ? _value.currentRound
                : currentRound // ignore: cast_nullable_to_non_nullable
                      as int,
            totalRounds: null == totalRounds
                ? _value.totalRounds
                : totalRounds // ignore: cast_nullable_to_non_nullable
                      as int,
            mistakes: null == mistakes
                ? _value.mistakes
                : mistakes // ignore: cast_nullable_to_non_nullable
                      as int,
            roundCorrect: null == roundCorrect
                ? _value.roundCorrect
                : roundCorrect // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$MemoryMatrixStateImplCopyWith<$Res>
    implements $MemoryMatrixStateCopyWith<$Res> {
  factory _$$MemoryMatrixStateImplCopyWith(
    _$MemoryMatrixStateImpl value,
    $Res Function(_$MemoryMatrixStateImpl) then,
  ) = __$$MemoryMatrixStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int gridSize,
    int highlightedCount,
    List<int> targetCells,
    List<int> userCells,
    MatrixPhase phase,
    int memorizeTimeLeft,
    int totalTime,
    int currentRound,
    int totalRounds,
    int mistakes,
    bool roundCorrect,
  });
}

/// @nodoc
class __$$MemoryMatrixStateImplCopyWithImpl<$Res>
    extends _$MemoryMatrixStateCopyWithImpl<$Res, _$MemoryMatrixStateImpl>
    implements _$$MemoryMatrixStateImplCopyWith<$Res> {
  __$$MemoryMatrixStateImplCopyWithImpl(
    _$MemoryMatrixStateImpl _value,
    $Res Function(_$MemoryMatrixStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MemoryMatrixState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gridSize = null,
    Object? highlightedCount = null,
    Object? targetCells = null,
    Object? userCells = null,
    Object? phase = null,
    Object? memorizeTimeLeft = null,
    Object? totalTime = null,
    Object? currentRound = null,
    Object? totalRounds = null,
    Object? mistakes = null,
    Object? roundCorrect = null,
  }) {
    return _then(
      _$MemoryMatrixStateImpl(
        gridSize: null == gridSize
            ? _value.gridSize
            : gridSize // ignore: cast_nullable_to_non_nullable
                  as int,
        highlightedCount: null == highlightedCount
            ? _value.highlightedCount
            : highlightedCount // ignore: cast_nullable_to_non_nullable
                  as int,
        targetCells: null == targetCells
            ? _value._targetCells
            : targetCells // ignore: cast_nullable_to_non_nullable
                  as List<int>,
        userCells: null == userCells
            ? _value._userCells
            : userCells // ignore: cast_nullable_to_non_nullable
                  as List<int>,
        phase: null == phase
            ? _value.phase
            : phase // ignore: cast_nullable_to_non_nullable
                  as MatrixPhase,
        memorizeTimeLeft: null == memorizeTimeLeft
            ? _value.memorizeTimeLeft
            : memorizeTimeLeft // ignore: cast_nullable_to_non_nullable
                  as int,
        totalTime: null == totalTime
            ? _value.totalTime
            : totalTime // ignore: cast_nullable_to_non_nullable
                  as int,
        currentRound: null == currentRound
            ? _value.currentRound
            : currentRound // ignore: cast_nullable_to_non_nullable
                  as int,
        totalRounds: null == totalRounds
            ? _value.totalRounds
            : totalRounds // ignore: cast_nullable_to_non_nullable
                  as int,
        mistakes: null == mistakes
            ? _value.mistakes
            : mistakes // ignore: cast_nullable_to_non_nullable
                  as int,
        roundCorrect: null == roundCorrect
            ? _value.roundCorrect
            : roundCorrect // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc

class _$MemoryMatrixStateImpl implements _MemoryMatrixState {
  const _$MemoryMatrixStateImpl({
    this.gridSize = 3,
    this.highlightedCount = 3,
    final List<int> targetCells = const [],
    final List<int> userCells = const [],
    this.phase = MatrixPhase.memorizing,
    this.memorizeTimeLeft = 3,
    this.totalTime = 0,
    this.currentRound = 1,
    this.totalRounds = 30,
    this.mistakes = 0,
    this.roundCorrect = false,
  }) : _targetCells = targetCells,
       _userCells = userCells;

  @override
  @JsonKey()
  final int gridSize;
  @override
  @JsonKey()
  final int highlightedCount;
  final List<int> _targetCells;
  @override
  @JsonKey()
  List<int> get targetCells {
    if (_targetCells is EqualUnmodifiableListView) return _targetCells;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_targetCells);
  }

  final List<int> _userCells;
  @override
  @JsonKey()
  List<int> get userCells {
    if (_userCells is EqualUnmodifiableListView) return _userCells;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_userCells);
  }

  @override
  @JsonKey()
  final MatrixPhase phase;
  @override
  @JsonKey()
  final int memorizeTimeLeft;
  @override
  @JsonKey()
  final int totalTime;
  @override
  @JsonKey()
  final int currentRound;
  @override
  @JsonKey()
  final int totalRounds;
  @override
  @JsonKey()
  final int mistakes;
  @override
  @JsonKey()
  final bool roundCorrect;

  @override
  String toString() {
    return 'MemoryMatrixState(gridSize: $gridSize, highlightedCount: $highlightedCount, targetCells: $targetCells, userCells: $userCells, phase: $phase, memorizeTimeLeft: $memorizeTimeLeft, totalTime: $totalTime, currentRound: $currentRound, totalRounds: $totalRounds, mistakes: $mistakes, roundCorrect: $roundCorrect)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MemoryMatrixStateImpl &&
            (identical(other.gridSize, gridSize) ||
                other.gridSize == gridSize) &&
            (identical(other.highlightedCount, highlightedCount) ||
                other.highlightedCount == highlightedCount) &&
            const DeepCollectionEquality().equals(
              other._targetCells,
              _targetCells,
            ) &&
            const DeepCollectionEquality().equals(
              other._userCells,
              _userCells,
            ) &&
            (identical(other.phase, phase) || other.phase == phase) &&
            (identical(other.memorizeTimeLeft, memorizeTimeLeft) ||
                other.memorizeTimeLeft == memorizeTimeLeft) &&
            (identical(other.totalTime, totalTime) ||
                other.totalTime == totalTime) &&
            (identical(other.currentRound, currentRound) ||
                other.currentRound == currentRound) &&
            (identical(other.totalRounds, totalRounds) ||
                other.totalRounds == totalRounds) &&
            (identical(other.mistakes, mistakes) ||
                other.mistakes == mistakes) &&
            (identical(other.roundCorrect, roundCorrect) ||
                other.roundCorrect == roundCorrect));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    gridSize,
    highlightedCount,
    const DeepCollectionEquality().hash(_targetCells),
    const DeepCollectionEquality().hash(_userCells),
    phase,
    memorizeTimeLeft,
    totalTime,
    currentRound,
    totalRounds,
    mistakes,
    roundCorrect,
  );

  /// Create a copy of MemoryMatrixState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MemoryMatrixStateImplCopyWith<_$MemoryMatrixStateImpl> get copyWith =>
      __$$MemoryMatrixStateImplCopyWithImpl<_$MemoryMatrixStateImpl>(
        this,
        _$identity,
      );
}

abstract class _MemoryMatrixState implements MemoryMatrixState {
  const factory _MemoryMatrixState({
    final int gridSize,
    final int highlightedCount,
    final List<int> targetCells,
    final List<int> userCells,
    final MatrixPhase phase,
    final int memorizeTimeLeft,
    final int totalTime,
    final int currentRound,
    final int totalRounds,
    final int mistakes,
    final bool roundCorrect,
  }) = _$MemoryMatrixStateImpl;

  @override
  int get gridSize;
  @override
  int get highlightedCount;
  @override
  List<int> get targetCells;
  @override
  List<int> get userCells;
  @override
  MatrixPhase get phase;
  @override
  int get memorizeTimeLeft;
  @override
  int get totalTime;
  @override
  int get currentRound;
  @override
  int get totalRounds;
  @override
  int get mistakes;
  @override
  bool get roundCorrect;

  /// Create a copy of MemoryMatrixState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MemoryMatrixStateImplCopyWith<_$MemoryMatrixStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
