// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'find_pair_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$FindPairEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int rows, int cols) start,
    required TResult Function(int index) flipCard,
    required TResult Function() timerTick,
    required TResult Function() hideCards,
    required TResult Function() startPlaying,
    required TResult Function() restart,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int rows, int cols)? start,
    TResult? Function(int index)? flipCard,
    TResult? Function()? timerTick,
    TResult? Function()? hideCards,
    TResult? Function()? startPlaying,
    TResult? Function()? restart,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int rows, int cols)? start,
    TResult Function(int index)? flipCard,
    TResult Function()? timerTick,
    TResult Function()? hideCards,
    TResult Function()? startPlaying,
    TResult Function()? restart,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Start value) start,
    required TResult Function(_FlipCard value) flipCard,
    required TResult Function(_TimerTick value) timerTick,
    required TResult Function(_HideCards value) hideCards,
    required TResult Function(_StartPlaying value) startPlaying,
    required TResult Function(_Restart value) restart,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Start value)? start,
    TResult? Function(_FlipCard value)? flipCard,
    TResult? Function(_TimerTick value)? timerTick,
    TResult? Function(_HideCards value)? hideCards,
    TResult? Function(_StartPlaying value)? startPlaying,
    TResult? Function(_Restart value)? restart,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_FlipCard value)? flipCard,
    TResult Function(_TimerTick value)? timerTick,
    TResult Function(_HideCards value)? hideCards,
    TResult Function(_StartPlaying value)? startPlaying,
    TResult Function(_Restart value)? restart,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FindPairEventCopyWith<$Res> {
  factory $FindPairEventCopyWith(
    FindPairEvent value,
    $Res Function(FindPairEvent) then,
  ) = _$FindPairEventCopyWithImpl<$Res, FindPairEvent>;
}

/// @nodoc
class _$FindPairEventCopyWithImpl<$Res, $Val extends FindPairEvent>
    implements $FindPairEventCopyWith<$Res> {
  _$FindPairEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FindPairEvent
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
    extends _$FindPairEventCopyWithImpl<$Res, _$StartImpl>
    implements _$$StartImplCopyWith<$Res> {
  __$$StartImplCopyWithImpl(
    _$StartImpl _value,
    $Res Function(_$StartImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FindPairEvent
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
    return 'FindPairEvent.start(rows: $rows, cols: $cols)';
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

  /// Create a copy of FindPairEvent
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
    required TResult Function(int index) flipCard,
    required TResult Function() timerTick,
    required TResult Function() hideCards,
    required TResult Function() startPlaying,
    required TResult Function() restart,
  }) {
    return start(rows, cols);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int rows, int cols)? start,
    TResult? Function(int index)? flipCard,
    TResult? Function()? timerTick,
    TResult? Function()? hideCards,
    TResult? Function()? startPlaying,
    TResult? Function()? restart,
  }) {
    return start?.call(rows, cols);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int rows, int cols)? start,
    TResult Function(int index)? flipCard,
    TResult Function()? timerTick,
    TResult Function()? hideCards,
    TResult Function()? startPlaying,
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
    required TResult Function(_FlipCard value) flipCard,
    required TResult Function(_TimerTick value) timerTick,
    required TResult Function(_HideCards value) hideCards,
    required TResult Function(_StartPlaying value) startPlaying,
    required TResult Function(_Restart value) restart,
  }) {
    return start(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Start value)? start,
    TResult? Function(_FlipCard value)? flipCard,
    TResult? Function(_TimerTick value)? timerTick,
    TResult? Function(_HideCards value)? hideCards,
    TResult? Function(_StartPlaying value)? startPlaying,
    TResult? Function(_Restart value)? restart,
  }) {
    return start?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_FlipCard value)? flipCard,
    TResult Function(_TimerTick value)? timerTick,
    TResult Function(_HideCards value)? hideCards,
    TResult Function(_StartPlaying value)? startPlaying,
    TResult Function(_Restart value)? restart,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(this);
    }
    return orElse();
  }
}

abstract class _Start implements FindPairEvent {
  const factory _Start({required final int rows, required final int cols}) =
      _$StartImpl;

  int get rows;
  int get cols;

  /// Create a copy of FindPairEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StartImplCopyWith<_$StartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FlipCardImplCopyWith<$Res> {
  factory _$$FlipCardImplCopyWith(
    _$FlipCardImpl value,
    $Res Function(_$FlipCardImpl) then,
  ) = __$$FlipCardImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$FlipCardImplCopyWithImpl<$Res>
    extends _$FindPairEventCopyWithImpl<$Res, _$FlipCardImpl>
    implements _$$FlipCardImplCopyWith<$Res> {
  __$$FlipCardImplCopyWithImpl(
    _$FlipCardImpl _value,
    $Res Function(_$FlipCardImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FindPairEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? index = null}) {
    return _then(
      _$FlipCardImpl(
        null == index
            ? _value.index
            : index // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$FlipCardImpl implements _FlipCard {
  const _$FlipCardImpl(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'FindPairEvent.flipCard(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FlipCardImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  /// Create a copy of FindPairEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FlipCardImplCopyWith<_$FlipCardImpl> get copyWith =>
      __$$FlipCardImplCopyWithImpl<_$FlipCardImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int rows, int cols) start,
    required TResult Function(int index) flipCard,
    required TResult Function() timerTick,
    required TResult Function() hideCards,
    required TResult Function() startPlaying,
    required TResult Function() restart,
  }) {
    return flipCard(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int rows, int cols)? start,
    TResult? Function(int index)? flipCard,
    TResult? Function()? timerTick,
    TResult? Function()? hideCards,
    TResult? Function()? startPlaying,
    TResult? Function()? restart,
  }) {
    return flipCard?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int rows, int cols)? start,
    TResult Function(int index)? flipCard,
    TResult Function()? timerTick,
    TResult Function()? hideCards,
    TResult Function()? startPlaying,
    TResult Function()? restart,
    required TResult orElse(),
  }) {
    if (flipCard != null) {
      return flipCard(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Start value) start,
    required TResult Function(_FlipCard value) flipCard,
    required TResult Function(_TimerTick value) timerTick,
    required TResult Function(_HideCards value) hideCards,
    required TResult Function(_StartPlaying value) startPlaying,
    required TResult Function(_Restart value) restart,
  }) {
    return flipCard(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Start value)? start,
    TResult? Function(_FlipCard value)? flipCard,
    TResult? Function(_TimerTick value)? timerTick,
    TResult? Function(_HideCards value)? hideCards,
    TResult? Function(_StartPlaying value)? startPlaying,
    TResult? Function(_Restart value)? restart,
  }) {
    return flipCard?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_FlipCard value)? flipCard,
    TResult Function(_TimerTick value)? timerTick,
    TResult Function(_HideCards value)? hideCards,
    TResult Function(_StartPlaying value)? startPlaying,
    TResult Function(_Restart value)? restart,
    required TResult orElse(),
  }) {
    if (flipCard != null) {
      return flipCard(this);
    }
    return orElse();
  }
}

abstract class _FlipCard implements FindPairEvent {
  const factory _FlipCard(final int index) = _$FlipCardImpl;

  int get index;

  /// Create a copy of FindPairEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FlipCardImplCopyWith<_$FlipCardImpl> get copyWith =>
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
    extends _$FindPairEventCopyWithImpl<$Res, _$TimerTickImpl>
    implements _$$TimerTickImplCopyWith<$Res> {
  __$$TimerTickImplCopyWithImpl(
    _$TimerTickImpl _value,
    $Res Function(_$TimerTickImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FindPairEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$TimerTickImpl implements _TimerTick {
  const _$TimerTickImpl();

  @override
  String toString() {
    return 'FindPairEvent.timerTick()';
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
    required TResult Function(int index) flipCard,
    required TResult Function() timerTick,
    required TResult Function() hideCards,
    required TResult Function() startPlaying,
    required TResult Function() restart,
  }) {
    return timerTick();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int rows, int cols)? start,
    TResult? Function(int index)? flipCard,
    TResult? Function()? timerTick,
    TResult? Function()? hideCards,
    TResult? Function()? startPlaying,
    TResult? Function()? restart,
  }) {
    return timerTick?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int rows, int cols)? start,
    TResult Function(int index)? flipCard,
    TResult Function()? timerTick,
    TResult Function()? hideCards,
    TResult Function()? startPlaying,
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
    required TResult Function(_FlipCard value) flipCard,
    required TResult Function(_TimerTick value) timerTick,
    required TResult Function(_HideCards value) hideCards,
    required TResult Function(_StartPlaying value) startPlaying,
    required TResult Function(_Restart value) restart,
  }) {
    return timerTick(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Start value)? start,
    TResult? Function(_FlipCard value)? flipCard,
    TResult? Function(_TimerTick value)? timerTick,
    TResult? Function(_HideCards value)? hideCards,
    TResult? Function(_StartPlaying value)? startPlaying,
    TResult? Function(_Restart value)? restart,
  }) {
    return timerTick?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_FlipCard value)? flipCard,
    TResult Function(_TimerTick value)? timerTick,
    TResult Function(_HideCards value)? hideCards,
    TResult Function(_StartPlaying value)? startPlaying,
    TResult Function(_Restart value)? restart,
    required TResult orElse(),
  }) {
    if (timerTick != null) {
      return timerTick(this);
    }
    return orElse();
  }
}

abstract class _TimerTick implements FindPairEvent {
  const factory _TimerTick() = _$TimerTickImpl;
}

/// @nodoc
abstract class _$$HideCardsImplCopyWith<$Res> {
  factory _$$HideCardsImplCopyWith(
    _$HideCardsImpl value,
    $Res Function(_$HideCardsImpl) then,
  ) = __$$HideCardsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HideCardsImplCopyWithImpl<$Res>
    extends _$FindPairEventCopyWithImpl<$Res, _$HideCardsImpl>
    implements _$$HideCardsImplCopyWith<$Res> {
  __$$HideCardsImplCopyWithImpl(
    _$HideCardsImpl _value,
    $Res Function(_$HideCardsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FindPairEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$HideCardsImpl implements _HideCards {
  const _$HideCardsImpl();

  @override
  String toString() {
    return 'FindPairEvent.hideCards()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HideCardsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int rows, int cols) start,
    required TResult Function(int index) flipCard,
    required TResult Function() timerTick,
    required TResult Function() hideCards,
    required TResult Function() startPlaying,
    required TResult Function() restart,
  }) {
    return hideCards();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int rows, int cols)? start,
    TResult? Function(int index)? flipCard,
    TResult? Function()? timerTick,
    TResult? Function()? hideCards,
    TResult? Function()? startPlaying,
    TResult? Function()? restart,
  }) {
    return hideCards?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int rows, int cols)? start,
    TResult Function(int index)? flipCard,
    TResult Function()? timerTick,
    TResult Function()? hideCards,
    TResult Function()? startPlaying,
    TResult Function()? restart,
    required TResult orElse(),
  }) {
    if (hideCards != null) {
      return hideCards();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Start value) start,
    required TResult Function(_FlipCard value) flipCard,
    required TResult Function(_TimerTick value) timerTick,
    required TResult Function(_HideCards value) hideCards,
    required TResult Function(_StartPlaying value) startPlaying,
    required TResult Function(_Restart value) restart,
  }) {
    return hideCards(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Start value)? start,
    TResult? Function(_FlipCard value)? flipCard,
    TResult? Function(_TimerTick value)? timerTick,
    TResult? Function(_HideCards value)? hideCards,
    TResult? Function(_StartPlaying value)? startPlaying,
    TResult? Function(_Restart value)? restart,
  }) {
    return hideCards?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_FlipCard value)? flipCard,
    TResult Function(_TimerTick value)? timerTick,
    TResult Function(_HideCards value)? hideCards,
    TResult Function(_StartPlaying value)? startPlaying,
    TResult Function(_Restart value)? restart,
    required TResult orElse(),
  }) {
    if (hideCards != null) {
      return hideCards(this);
    }
    return orElse();
  }
}

abstract class _HideCards implements FindPairEvent {
  const factory _HideCards() = _$HideCardsImpl;
}

/// @nodoc
abstract class _$$StartPlayingImplCopyWith<$Res> {
  factory _$$StartPlayingImplCopyWith(
    _$StartPlayingImpl value,
    $Res Function(_$StartPlayingImpl) then,
  ) = __$$StartPlayingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartPlayingImplCopyWithImpl<$Res>
    extends _$FindPairEventCopyWithImpl<$Res, _$StartPlayingImpl>
    implements _$$StartPlayingImplCopyWith<$Res> {
  __$$StartPlayingImplCopyWithImpl(
    _$StartPlayingImpl _value,
    $Res Function(_$StartPlayingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FindPairEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartPlayingImpl implements _StartPlaying {
  const _$StartPlayingImpl();

  @override
  String toString() {
    return 'FindPairEvent.startPlaying()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartPlayingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int rows, int cols) start,
    required TResult Function(int index) flipCard,
    required TResult Function() timerTick,
    required TResult Function() hideCards,
    required TResult Function() startPlaying,
    required TResult Function() restart,
  }) {
    return startPlaying();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int rows, int cols)? start,
    TResult? Function(int index)? flipCard,
    TResult? Function()? timerTick,
    TResult? Function()? hideCards,
    TResult? Function()? startPlaying,
    TResult? Function()? restart,
  }) {
    return startPlaying?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int rows, int cols)? start,
    TResult Function(int index)? flipCard,
    TResult Function()? timerTick,
    TResult Function()? hideCards,
    TResult Function()? startPlaying,
    TResult Function()? restart,
    required TResult orElse(),
  }) {
    if (startPlaying != null) {
      return startPlaying();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Start value) start,
    required TResult Function(_FlipCard value) flipCard,
    required TResult Function(_TimerTick value) timerTick,
    required TResult Function(_HideCards value) hideCards,
    required TResult Function(_StartPlaying value) startPlaying,
    required TResult Function(_Restart value) restart,
  }) {
    return startPlaying(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Start value)? start,
    TResult? Function(_FlipCard value)? flipCard,
    TResult? Function(_TimerTick value)? timerTick,
    TResult? Function(_HideCards value)? hideCards,
    TResult? Function(_StartPlaying value)? startPlaying,
    TResult? Function(_Restart value)? restart,
  }) {
    return startPlaying?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_FlipCard value)? flipCard,
    TResult Function(_TimerTick value)? timerTick,
    TResult Function(_HideCards value)? hideCards,
    TResult Function(_StartPlaying value)? startPlaying,
    TResult Function(_Restart value)? restart,
    required TResult orElse(),
  }) {
    if (startPlaying != null) {
      return startPlaying(this);
    }
    return orElse();
  }
}

abstract class _StartPlaying implements FindPairEvent {
  const factory _StartPlaying() = _$StartPlayingImpl;
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
    extends _$FindPairEventCopyWithImpl<$Res, _$RestartImpl>
    implements _$$RestartImplCopyWith<$Res> {
  __$$RestartImplCopyWithImpl(
    _$RestartImpl _value,
    $Res Function(_$RestartImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FindPairEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RestartImpl implements _Restart {
  const _$RestartImpl();

  @override
  String toString() {
    return 'FindPairEvent.restart()';
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
    required TResult Function(int index) flipCard,
    required TResult Function() timerTick,
    required TResult Function() hideCards,
    required TResult Function() startPlaying,
    required TResult Function() restart,
  }) {
    return restart();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int rows, int cols)? start,
    TResult? Function(int index)? flipCard,
    TResult? Function()? timerTick,
    TResult? Function()? hideCards,
    TResult? Function()? startPlaying,
    TResult? Function()? restart,
  }) {
    return restart?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int rows, int cols)? start,
    TResult Function(int index)? flipCard,
    TResult Function()? timerTick,
    TResult Function()? hideCards,
    TResult Function()? startPlaying,
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
    required TResult Function(_FlipCard value) flipCard,
    required TResult Function(_TimerTick value) timerTick,
    required TResult Function(_HideCards value) hideCards,
    required TResult Function(_StartPlaying value) startPlaying,
    required TResult Function(_Restart value) restart,
  }) {
    return restart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Start value)? start,
    TResult? Function(_FlipCard value)? flipCard,
    TResult? Function(_TimerTick value)? timerTick,
    TResult? Function(_HideCards value)? hideCards,
    TResult? Function(_StartPlaying value)? startPlaying,
    TResult? Function(_Restart value)? restart,
  }) {
    return restart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_FlipCard value)? flipCard,
    TResult Function(_TimerTick value)? timerTick,
    TResult Function(_HideCards value)? hideCards,
    TResult Function(_StartPlaying value)? startPlaying,
    TResult Function(_Restart value)? restart,
    required TResult orElse(),
  }) {
    if (restart != null) {
      return restart(this);
    }
    return orElse();
  }
}

abstract class _Restart implements FindPairEvent {
  const factory _Restart() = _$RestartImpl;
}

/// @nodoc
mixin _$FindPairState {
  int get rows => throw _privateConstructorUsedError;
  int get cols => throw _privateConstructorUsedError;
  List<FindPairCardModel> get cards => throw _privateConstructorUsedError;
  FindPairPhase get phase => throw _privateConstructorUsedError;
  int get previewTimeLeft => throw _privateConstructorUsedError;
  int get playTime => throw _privateConstructorUsedError;
  int get mistakes => throw _privateConstructorUsedError;
  int? get firstFlippedIndex => throw _privateConstructorUsedError;
  bool get isProcessing => throw _privateConstructorUsedError;

  /// Create a copy of FindPairState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FindPairStateCopyWith<FindPairState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FindPairStateCopyWith<$Res> {
  factory $FindPairStateCopyWith(
    FindPairState value,
    $Res Function(FindPairState) then,
  ) = _$FindPairStateCopyWithImpl<$Res, FindPairState>;
  @useResult
  $Res call({
    int rows,
    int cols,
    List<FindPairCardModel> cards,
    FindPairPhase phase,
    int previewTimeLeft,
    int playTime,
    int mistakes,
    int? firstFlippedIndex,
    bool isProcessing,
  });
}

/// @nodoc
class _$FindPairStateCopyWithImpl<$Res, $Val extends FindPairState>
    implements $FindPairStateCopyWith<$Res> {
  _$FindPairStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FindPairState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rows = null,
    Object? cols = null,
    Object? cards = null,
    Object? phase = null,
    Object? previewTimeLeft = null,
    Object? playTime = null,
    Object? mistakes = null,
    Object? firstFlippedIndex = freezed,
    Object? isProcessing = null,
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
            cards: null == cards
                ? _value.cards
                : cards // ignore: cast_nullable_to_non_nullable
                      as List<FindPairCardModel>,
            phase: null == phase
                ? _value.phase
                : phase // ignore: cast_nullable_to_non_nullable
                      as FindPairPhase,
            previewTimeLeft: null == previewTimeLeft
                ? _value.previewTimeLeft
                : previewTimeLeft // ignore: cast_nullable_to_non_nullable
                      as int,
            playTime: null == playTime
                ? _value.playTime
                : playTime // ignore: cast_nullable_to_non_nullable
                      as int,
            mistakes: null == mistakes
                ? _value.mistakes
                : mistakes // ignore: cast_nullable_to_non_nullable
                      as int,
            firstFlippedIndex: freezed == firstFlippedIndex
                ? _value.firstFlippedIndex
                : firstFlippedIndex // ignore: cast_nullable_to_non_nullable
                      as int?,
            isProcessing: null == isProcessing
                ? _value.isProcessing
                : isProcessing // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$FindPairStateImplCopyWith<$Res>
    implements $FindPairStateCopyWith<$Res> {
  factory _$$FindPairStateImplCopyWith(
    _$FindPairStateImpl value,
    $Res Function(_$FindPairStateImpl) then,
  ) = __$$FindPairStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int rows,
    int cols,
    List<FindPairCardModel> cards,
    FindPairPhase phase,
    int previewTimeLeft,
    int playTime,
    int mistakes,
    int? firstFlippedIndex,
    bool isProcessing,
  });
}

/// @nodoc
class __$$FindPairStateImplCopyWithImpl<$Res>
    extends _$FindPairStateCopyWithImpl<$Res, _$FindPairStateImpl>
    implements _$$FindPairStateImplCopyWith<$Res> {
  __$$FindPairStateImplCopyWithImpl(
    _$FindPairStateImpl _value,
    $Res Function(_$FindPairStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FindPairState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rows = null,
    Object? cols = null,
    Object? cards = null,
    Object? phase = null,
    Object? previewTimeLeft = null,
    Object? playTime = null,
    Object? mistakes = null,
    Object? firstFlippedIndex = freezed,
    Object? isProcessing = null,
  }) {
    return _then(
      _$FindPairStateImpl(
        rows: null == rows
            ? _value.rows
            : rows // ignore: cast_nullable_to_non_nullable
                  as int,
        cols: null == cols
            ? _value.cols
            : cols // ignore: cast_nullable_to_non_nullable
                  as int,
        cards: null == cards
            ? _value._cards
            : cards // ignore: cast_nullable_to_non_nullable
                  as List<FindPairCardModel>,
        phase: null == phase
            ? _value.phase
            : phase // ignore: cast_nullable_to_non_nullable
                  as FindPairPhase,
        previewTimeLeft: null == previewTimeLeft
            ? _value.previewTimeLeft
            : previewTimeLeft // ignore: cast_nullable_to_non_nullable
                  as int,
        playTime: null == playTime
            ? _value.playTime
            : playTime // ignore: cast_nullable_to_non_nullable
                  as int,
        mistakes: null == mistakes
            ? _value.mistakes
            : mistakes // ignore: cast_nullable_to_non_nullable
                  as int,
        firstFlippedIndex: freezed == firstFlippedIndex
            ? _value.firstFlippedIndex
            : firstFlippedIndex // ignore: cast_nullable_to_non_nullable
                  as int?,
        isProcessing: null == isProcessing
            ? _value.isProcessing
            : isProcessing // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc

class _$FindPairStateImpl implements _FindPairState {
  const _$FindPairStateImpl({
    this.rows = 4,
    this.cols = 4,
    final List<FindPairCardModel> cards = const [],
    this.phase = FindPairPhase.preview,
    this.previewTimeLeft = 10,
    this.playTime = 0,
    this.mistakes = 0,
    this.firstFlippedIndex = null,
    this.isProcessing = false,
  }) : _cards = cards;

  @override
  @JsonKey()
  final int rows;
  @override
  @JsonKey()
  final int cols;
  final List<FindPairCardModel> _cards;
  @override
  @JsonKey()
  List<FindPairCardModel> get cards {
    if (_cards is EqualUnmodifiableListView) return _cards;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cards);
  }

  @override
  @JsonKey()
  final FindPairPhase phase;
  @override
  @JsonKey()
  final int previewTimeLeft;
  @override
  @JsonKey()
  final int playTime;
  @override
  @JsonKey()
  final int mistakes;
  @override
  @JsonKey()
  final int? firstFlippedIndex;
  @override
  @JsonKey()
  final bool isProcessing;

  @override
  String toString() {
    return 'FindPairState(rows: $rows, cols: $cols, cards: $cards, phase: $phase, previewTimeLeft: $previewTimeLeft, playTime: $playTime, mistakes: $mistakes, firstFlippedIndex: $firstFlippedIndex, isProcessing: $isProcessing)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FindPairStateImpl &&
            (identical(other.rows, rows) || other.rows == rows) &&
            (identical(other.cols, cols) || other.cols == cols) &&
            const DeepCollectionEquality().equals(other._cards, _cards) &&
            (identical(other.phase, phase) || other.phase == phase) &&
            (identical(other.previewTimeLeft, previewTimeLeft) ||
                other.previewTimeLeft == previewTimeLeft) &&
            (identical(other.playTime, playTime) ||
                other.playTime == playTime) &&
            (identical(other.mistakes, mistakes) ||
                other.mistakes == mistakes) &&
            (identical(other.firstFlippedIndex, firstFlippedIndex) ||
                other.firstFlippedIndex == firstFlippedIndex) &&
            (identical(other.isProcessing, isProcessing) ||
                other.isProcessing == isProcessing));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    rows,
    cols,
    const DeepCollectionEquality().hash(_cards),
    phase,
    previewTimeLeft,
    playTime,
    mistakes,
    firstFlippedIndex,
    isProcessing,
  );

  /// Create a copy of FindPairState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FindPairStateImplCopyWith<_$FindPairStateImpl> get copyWith =>
      __$$FindPairStateImplCopyWithImpl<_$FindPairStateImpl>(this, _$identity);
}

abstract class _FindPairState implements FindPairState {
  const factory _FindPairState({
    final int rows,
    final int cols,
    final List<FindPairCardModel> cards,
    final FindPairPhase phase,
    final int previewTimeLeft,
    final int playTime,
    final int mistakes,
    final int? firstFlippedIndex,
    final bool isProcessing,
  }) = _$FindPairStateImpl;

  @override
  int get rows;
  @override
  int get cols;
  @override
  List<FindPairCardModel> get cards;
  @override
  FindPairPhase get phase;
  @override
  int get previewTimeLeft;
  @override
  int get playTime;
  @override
  int get mistakes;
  @override
  int? get firstFlippedIndex;
  @override
  bool get isProcessing;

  /// Create a copy of FindPairState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FindPairStateImplCopyWith<_$FindPairStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
