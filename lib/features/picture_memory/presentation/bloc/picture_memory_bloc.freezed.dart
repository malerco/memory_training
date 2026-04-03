// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'picture_memory_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$PictureMemoryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int pictureCount) start,
    required TResult Function(bool sawBefore) answer,
    required TResult Function() restart,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int pictureCount)? start,
    TResult? Function(bool sawBefore)? answer,
    TResult? Function()? restart,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int pictureCount)? start,
    TResult Function(bool sawBefore)? answer,
    TResult Function()? restart,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Start value) start,
    required TResult Function(_Answer value) answer,
    required TResult Function(_Restart value) restart,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Start value)? start,
    TResult? Function(_Answer value)? answer,
    TResult? Function(_Restart value)? restart,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_Answer value)? answer,
    TResult Function(_Restart value)? restart,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PictureMemoryEventCopyWith<$Res> {
  factory $PictureMemoryEventCopyWith(
    PictureMemoryEvent value,
    $Res Function(PictureMemoryEvent) then,
  ) = _$PictureMemoryEventCopyWithImpl<$Res, PictureMemoryEvent>;
}

/// @nodoc
class _$PictureMemoryEventCopyWithImpl<$Res, $Val extends PictureMemoryEvent>
    implements $PictureMemoryEventCopyWith<$Res> {
  _$PictureMemoryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PictureMemoryEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartImplCopyWith<$Res> {
  factory _$$StartImplCopyWith(
    _$StartImpl value,
    $Res Function(_$StartImpl) then,
  ) = __$$StartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int pictureCount});
}

/// @nodoc
class __$$StartImplCopyWithImpl<$Res>
    extends _$PictureMemoryEventCopyWithImpl<$Res, _$StartImpl>
    implements _$$StartImplCopyWith<$Res> {
  __$$StartImplCopyWithImpl(
    _$StartImpl _value,
    $Res Function(_$StartImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PictureMemoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? pictureCount = null}) {
    return _then(
      _$StartImpl(
        pictureCount: null == pictureCount
            ? _value.pictureCount
            : pictureCount // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$StartImpl implements _Start {
  const _$StartImpl({required this.pictureCount});

  @override
  final int pictureCount;

  @override
  String toString() {
    return 'PictureMemoryEvent.start(pictureCount: $pictureCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartImpl &&
            (identical(other.pictureCount, pictureCount) ||
                other.pictureCount == pictureCount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pictureCount);

  /// Create a copy of PictureMemoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StartImplCopyWith<_$StartImpl> get copyWith =>
      __$$StartImplCopyWithImpl<_$StartImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int pictureCount) start,
    required TResult Function(bool sawBefore) answer,
    required TResult Function() restart,
  }) {
    return start(pictureCount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int pictureCount)? start,
    TResult? Function(bool sawBefore)? answer,
    TResult? Function()? restart,
  }) {
    return start?.call(pictureCount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int pictureCount)? start,
    TResult Function(bool sawBefore)? answer,
    TResult Function()? restart,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(pictureCount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Start value) start,
    required TResult Function(_Answer value) answer,
    required TResult Function(_Restart value) restart,
  }) {
    return start(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Start value)? start,
    TResult? Function(_Answer value)? answer,
    TResult? Function(_Restart value)? restart,
  }) {
    return start?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_Answer value)? answer,
    TResult Function(_Restart value)? restart,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(this);
    }
    return orElse();
  }
}

abstract class _Start implements PictureMemoryEvent {
  const factory _Start({required final int pictureCount}) = _$StartImpl;

  int get pictureCount;

  /// Create a copy of PictureMemoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StartImplCopyWith<_$StartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AnswerImplCopyWith<$Res> {
  factory _$$AnswerImplCopyWith(
    _$AnswerImpl value,
    $Res Function(_$AnswerImpl) then,
  ) = __$$AnswerImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool sawBefore});
}

/// @nodoc
class __$$AnswerImplCopyWithImpl<$Res>
    extends _$PictureMemoryEventCopyWithImpl<$Res, _$AnswerImpl>
    implements _$$AnswerImplCopyWith<$Res> {
  __$$AnswerImplCopyWithImpl(
    _$AnswerImpl _value,
    $Res Function(_$AnswerImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PictureMemoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? sawBefore = null}) {
    return _then(
      _$AnswerImpl(
        sawBefore: null == sawBefore
            ? _value.sawBefore
            : sawBefore // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc

class _$AnswerImpl implements _Answer {
  const _$AnswerImpl({required this.sawBefore});

  @override
  final bool sawBefore;

  @override
  String toString() {
    return 'PictureMemoryEvent.answer(sawBefore: $sawBefore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnswerImpl &&
            (identical(other.sawBefore, sawBefore) ||
                other.sawBefore == sawBefore));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sawBefore);

  /// Create a copy of PictureMemoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AnswerImplCopyWith<_$AnswerImpl> get copyWith =>
      __$$AnswerImplCopyWithImpl<_$AnswerImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int pictureCount) start,
    required TResult Function(bool sawBefore) answer,
    required TResult Function() restart,
  }) {
    return answer(sawBefore);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int pictureCount)? start,
    TResult? Function(bool sawBefore)? answer,
    TResult? Function()? restart,
  }) {
    return answer?.call(sawBefore);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int pictureCount)? start,
    TResult Function(bool sawBefore)? answer,
    TResult Function()? restart,
    required TResult orElse(),
  }) {
    if (answer != null) {
      return answer(sawBefore);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Start value) start,
    required TResult Function(_Answer value) answer,
    required TResult Function(_Restart value) restart,
  }) {
    return answer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Start value)? start,
    TResult? Function(_Answer value)? answer,
    TResult? Function(_Restart value)? restart,
  }) {
    return answer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_Answer value)? answer,
    TResult Function(_Restart value)? restart,
    required TResult orElse(),
  }) {
    if (answer != null) {
      return answer(this);
    }
    return orElse();
  }
}

abstract class _Answer implements PictureMemoryEvent {
  const factory _Answer({required final bool sawBefore}) = _$AnswerImpl;

  bool get sawBefore;

  /// Create a copy of PictureMemoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AnswerImplCopyWith<_$AnswerImpl> get copyWith =>
      throw _privateConstructorUsedError;
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
    extends _$PictureMemoryEventCopyWithImpl<$Res, _$RestartImpl>
    implements _$$RestartImplCopyWith<$Res> {
  __$$RestartImplCopyWithImpl(
    _$RestartImpl _value,
    $Res Function(_$RestartImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PictureMemoryEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RestartImpl implements _Restart {
  const _$RestartImpl();

  @override
  String toString() {
    return 'PictureMemoryEvent.restart()';
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
    required TResult Function(int pictureCount) start,
    required TResult Function(bool sawBefore) answer,
    required TResult Function() restart,
  }) {
    return restart();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int pictureCount)? start,
    TResult? Function(bool sawBefore)? answer,
    TResult? Function()? restart,
  }) {
    return restart?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int pictureCount)? start,
    TResult Function(bool sawBefore)? answer,
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
    required TResult Function(_Answer value) answer,
    required TResult Function(_Restart value) restart,
  }) {
    return restart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Start value)? start,
    TResult? Function(_Answer value)? answer,
    TResult? Function(_Restart value)? restart,
  }) {
    return restart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_Answer value)? answer,
    TResult Function(_Restart value)? restart,
    required TResult orElse(),
  }) {
    if (restart != null) {
      return restart(this);
    }
    return orElse();
  }
}

abstract class _Restart implements PictureMemoryEvent {
  const factory _Restart() = _$RestartImpl;
}

/// @nodoc
mixin _$PictureMemoryState {
  int get pictureCount => throw _privateConstructorUsedError;
  List<int> get seenPictures => throw _privateConstructorUsedError;
  int get currentPicture => throw _privateConstructorUsedError;
  bool get currentIsNew => throw _privateConstructorUsedError;
  PictureMemoryPhase get phase => throw _privateConstructorUsedError;
  int get score => throw _privateConstructorUsedError;
  int get lives => throw _privateConstructorUsedError;
  int get round => throw _privateConstructorUsedError;

  /// Create a copy of PictureMemoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PictureMemoryStateCopyWith<PictureMemoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PictureMemoryStateCopyWith<$Res> {
  factory $PictureMemoryStateCopyWith(
    PictureMemoryState value,
    $Res Function(PictureMemoryState) then,
  ) = _$PictureMemoryStateCopyWithImpl<$Res, PictureMemoryState>;
  @useResult
  $Res call({
    int pictureCount,
    List<int> seenPictures,
    int currentPicture,
    bool currentIsNew,
    PictureMemoryPhase phase,
    int score,
    int lives,
    int round,
  });
}

/// @nodoc
class _$PictureMemoryStateCopyWithImpl<$Res, $Val extends PictureMemoryState>
    implements $PictureMemoryStateCopyWith<$Res> {
  _$PictureMemoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PictureMemoryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pictureCount = null,
    Object? seenPictures = null,
    Object? currentPicture = null,
    Object? currentIsNew = null,
    Object? phase = null,
    Object? score = null,
    Object? lives = null,
    Object? round = null,
  }) {
    return _then(
      _value.copyWith(
            pictureCount: null == pictureCount
                ? _value.pictureCount
                : pictureCount // ignore: cast_nullable_to_non_nullable
                      as int,
            seenPictures: null == seenPictures
                ? _value.seenPictures
                : seenPictures // ignore: cast_nullable_to_non_nullable
                      as List<int>,
            currentPicture: null == currentPicture
                ? _value.currentPicture
                : currentPicture // ignore: cast_nullable_to_non_nullable
                      as int,
            currentIsNew: null == currentIsNew
                ? _value.currentIsNew
                : currentIsNew // ignore: cast_nullable_to_non_nullable
                      as bool,
            phase: null == phase
                ? _value.phase
                : phase // ignore: cast_nullable_to_non_nullable
                      as PictureMemoryPhase,
            score: null == score
                ? _value.score
                : score // ignore: cast_nullable_to_non_nullable
                      as int,
            lives: null == lives
                ? _value.lives
                : lives // ignore: cast_nullable_to_non_nullable
                      as int,
            round: null == round
                ? _value.round
                : round // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PictureMemoryStateImplCopyWith<$Res>
    implements $PictureMemoryStateCopyWith<$Res> {
  factory _$$PictureMemoryStateImplCopyWith(
    _$PictureMemoryStateImpl value,
    $Res Function(_$PictureMemoryStateImpl) then,
  ) = __$$PictureMemoryStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int pictureCount,
    List<int> seenPictures,
    int currentPicture,
    bool currentIsNew,
    PictureMemoryPhase phase,
    int score,
    int lives,
    int round,
  });
}

/// @nodoc
class __$$PictureMemoryStateImplCopyWithImpl<$Res>
    extends _$PictureMemoryStateCopyWithImpl<$Res, _$PictureMemoryStateImpl>
    implements _$$PictureMemoryStateImplCopyWith<$Res> {
  __$$PictureMemoryStateImplCopyWithImpl(
    _$PictureMemoryStateImpl _value,
    $Res Function(_$PictureMemoryStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PictureMemoryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pictureCount = null,
    Object? seenPictures = null,
    Object? currentPicture = null,
    Object? currentIsNew = null,
    Object? phase = null,
    Object? score = null,
    Object? lives = null,
    Object? round = null,
  }) {
    return _then(
      _$PictureMemoryStateImpl(
        pictureCount: null == pictureCount
            ? _value.pictureCount
            : pictureCount // ignore: cast_nullable_to_non_nullable
                  as int,
        seenPictures: null == seenPictures
            ? _value._seenPictures
            : seenPictures // ignore: cast_nullable_to_non_nullable
                  as List<int>,
        currentPicture: null == currentPicture
            ? _value.currentPicture
            : currentPicture // ignore: cast_nullable_to_non_nullable
                  as int,
        currentIsNew: null == currentIsNew
            ? _value.currentIsNew
            : currentIsNew // ignore: cast_nullable_to_non_nullable
                  as bool,
        phase: null == phase
            ? _value.phase
            : phase // ignore: cast_nullable_to_non_nullable
                  as PictureMemoryPhase,
        score: null == score
            ? _value.score
            : score // ignore: cast_nullable_to_non_nullable
                  as int,
        lives: null == lives
            ? _value.lives
            : lives // ignore: cast_nullable_to_non_nullable
                  as int,
        round: null == round
            ? _value.round
            : round // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$PictureMemoryStateImpl implements _PictureMemoryState {
  const _$PictureMemoryStateImpl({
    this.pictureCount = 5,
    final List<int> seenPictures = const [],
    this.currentPicture = 0,
    this.currentIsNew = false,
    this.phase = PictureMemoryPhase.playing,
    this.score = 0,
    this.lives = 0,
    this.round = 0,
  }) : _seenPictures = seenPictures;

  @override
  @JsonKey()
  final int pictureCount;
  final List<int> _seenPictures;
  @override
  @JsonKey()
  List<int> get seenPictures {
    if (_seenPictures is EqualUnmodifiableListView) return _seenPictures;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_seenPictures);
  }

  @override
  @JsonKey()
  final int currentPicture;
  @override
  @JsonKey()
  final bool currentIsNew;
  @override
  @JsonKey()
  final PictureMemoryPhase phase;
  @override
  @JsonKey()
  final int score;
  @override
  @JsonKey()
  final int lives;
  @override
  @JsonKey()
  final int round;

  @override
  String toString() {
    return 'PictureMemoryState(pictureCount: $pictureCount, seenPictures: $seenPictures, currentPicture: $currentPicture, currentIsNew: $currentIsNew, phase: $phase, score: $score, lives: $lives, round: $round)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PictureMemoryStateImpl &&
            (identical(other.pictureCount, pictureCount) ||
                other.pictureCount == pictureCount) &&
            const DeepCollectionEquality().equals(
              other._seenPictures,
              _seenPictures,
            ) &&
            (identical(other.currentPicture, currentPicture) ||
                other.currentPicture == currentPicture) &&
            (identical(other.currentIsNew, currentIsNew) ||
                other.currentIsNew == currentIsNew) &&
            (identical(other.phase, phase) || other.phase == phase) &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.lives, lives) || other.lives == lives) &&
            (identical(other.round, round) || other.round == round));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    pictureCount,
    const DeepCollectionEquality().hash(_seenPictures),
    currentPicture,
    currentIsNew,
    phase,
    score,
    lives,
    round,
  );

  /// Create a copy of PictureMemoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PictureMemoryStateImplCopyWith<_$PictureMemoryStateImpl> get copyWith =>
      __$$PictureMemoryStateImplCopyWithImpl<_$PictureMemoryStateImpl>(
        this,
        _$identity,
      );
}

abstract class _PictureMemoryState implements PictureMemoryState {
  const factory _PictureMemoryState({
    final int pictureCount,
    final List<int> seenPictures,
    final int currentPicture,
    final bool currentIsNew,
    final PictureMemoryPhase phase,
    final int score,
    final int lives,
    final int round,
  }) = _$PictureMemoryStateImpl;

  @override
  int get pictureCount;
  @override
  List<int> get seenPictures;
  @override
  int get currentPicture;
  @override
  bool get currentIsNew;
  @override
  PictureMemoryPhase get phase;
  @override
  int get score;
  @override
  int get lives;
  @override
  int get round;

  /// Create a copy of PictureMemoryState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PictureMemoryStateImplCopyWith<_$PictureMemoryStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
