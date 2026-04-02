// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'n_back_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$NBackEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int nLevel) start,
    required TResult Function() showNext,
    required TResult Function() switchToWaiting,
    required TResult Function() timeout,
    required TResult Function(bool isMatch) userResponse,
    required TResult Function(bool isCorrect) showFeedback,
    required TResult Function() restart,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int nLevel)? start,
    TResult? Function()? showNext,
    TResult? Function()? switchToWaiting,
    TResult? Function()? timeout,
    TResult? Function(bool isMatch)? userResponse,
    TResult? Function(bool isCorrect)? showFeedback,
    TResult? Function()? restart,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int nLevel)? start,
    TResult Function()? showNext,
    TResult Function()? switchToWaiting,
    TResult Function()? timeout,
    TResult Function(bool isMatch)? userResponse,
    TResult Function(bool isCorrect)? showFeedback,
    TResult Function()? restart,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Start value) start,
    required TResult Function(_ShowNext value) showNext,
    required TResult Function(_SwitchToWaiting value) switchToWaiting,
    required TResult Function(_Timeout value) timeout,
    required TResult Function(_UserResponse value) userResponse,
    required TResult Function(_ShowFeedback value) showFeedback,
    required TResult Function(_Restart value) restart,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Start value)? start,
    TResult? Function(_ShowNext value)? showNext,
    TResult? Function(_SwitchToWaiting value)? switchToWaiting,
    TResult? Function(_Timeout value)? timeout,
    TResult? Function(_UserResponse value)? userResponse,
    TResult? Function(_ShowFeedback value)? showFeedback,
    TResult? Function(_Restart value)? restart,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_ShowNext value)? showNext,
    TResult Function(_SwitchToWaiting value)? switchToWaiting,
    TResult Function(_Timeout value)? timeout,
    TResult Function(_UserResponse value)? userResponse,
    TResult Function(_ShowFeedback value)? showFeedback,
    TResult Function(_Restart value)? restart,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NBackEventCopyWith<$Res> {
  factory $NBackEventCopyWith(
    NBackEvent value,
    $Res Function(NBackEvent) then,
  ) = _$NBackEventCopyWithImpl<$Res, NBackEvent>;
}

/// @nodoc
class _$NBackEventCopyWithImpl<$Res, $Val extends NBackEvent>
    implements $NBackEventCopyWith<$Res> {
  _$NBackEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NBackEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartImplCopyWith<$Res> {
  factory _$$StartImplCopyWith(
    _$StartImpl value,
    $Res Function(_$StartImpl) then,
  ) = __$$StartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int nLevel});
}

/// @nodoc
class __$$StartImplCopyWithImpl<$Res>
    extends _$NBackEventCopyWithImpl<$Res, _$StartImpl>
    implements _$$StartImplCopyWith<$Res> {
  __$$StartImplCopyWithImpl(
    _$StartImpl _value,
    $Res Function(_$StartImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NBackEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? nLevel = null}) {
    return _then(
      _$StartImpl(
        null == nLevel
            ? _value.nLevel
            : nLevel // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$StartImpl implements _Start {
  const _$StartImpl(this.nLevel);

  @override
  final int nLevel;

  @override
  String toString() {
    return 'NBackEvent.start(nLevel: $nLevel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartImpl &&
            (identical(other.nLevel, nLevel) || other.nLevel == nLevel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, nLevel);

  /// Create a copy of NBackEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StartImplCopyWith<_$StartImpl> get copyWith =>
      __$$StartImplCopyWithImpl<_$StartImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int nLevel) start,
    required TResult Function() showNext,
    required TResult Function() switchToWaiting,
    required TResult Function() timeout,
    required TResult Function(bool isMatch) userResponse,
    required TResult Function(bool isCorrect) showFeedback,
    required TResult Function() restart,
  }) {
    return start(nLevel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int nLevel)? start,
    TResult? Function()? showNext,
    TResult? Function()? switchToWaiting,
    TResult? Function()? timeout,
    TResult? Function(bool isMatch)? userResponse,
    TResult? Function(bool isCorrect)? showFeedback,
    TResult? Function()? restart,
  }) {
    return start?.call(nLevel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int nLevel)? start,
    TResult Function()? showNext,
    TResult Function()? switchToWaiting,
    TResult Function()? timeout,
    TResult Function(bool isMatch)? userResponse,
    TResult Function(bool isCorrect)? showFeedback,
    TResult Function()? restart,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(nLevel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Start value) start,
    required TResult Function(_ShowNext value) showNext,
    required TResult Function(_SwitchToWaiting value) switchToWaiting,
    required TResult Function(_Timeout value) timeout,
    required TResult Function(_UserResponse value) userResponse,
    required TResult Function(_ShowFeedback value) showFeedback,
    required TResult Function(_Restart value) restart,
  }) {
    return start(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Start value)? start,
    TResult? Function(_ShowNext value)? showNext,
    TResult? Function(_SwitchToWaiting value)? switchToWaiting,
    TResult? Function(_Timeout value)? timeout,
    TResult? Function(_UserResponse value)? userResponse,
    TResult? Function(_ShowFeedback value)? showFeedback,
    TResult? Function(_Restart value)? restart,
  }) {
    return start?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_ShowNext value)? showNext,
    TResult Function(_SwitchToWaiting value)? switchToWaiting,
    TResult Function(_Timeout value)? timeout,
    TResult Function(_UserResponse value)? userResponse,
    TResult Function(_ShowFeedback value)? showFeedback,
    TResult Function(_Restart value)? restart,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(this);
    }
    return orElse();
  }
}

abstract class _Start implements NBackEvent {
  const factory _Start(final int nLevel) = _$StartImpl;

  int get nLevel;

  /// Create a copy of NBackEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StartImplCopyWith<_$StartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShowNextImplCopyWith<$Res> {
  factory _$$ShowNextImplCopyWith(
    _$ShowNextImpl value,
    $Res Function(_$ShowNextImpl) then,
  ) = __$$ShowNextImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ShowNextImplCopyWithImpl<$Res>
    extends _$NBackEventCopyWithImpl<$Res, _$ShowNextImpl>
    implements _$$ShowNextImplCopyWith<$Res> {
  __$$ShowNextImplCopyWithImpl(
    _$ShowNextImpl _value,
    $Res Function(_$ShowNextImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NBackEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ShowNextImpl implements _ShowNext {
  const _$ShowNextImpl();

  @override
  String toString() {
    return 'NBackEvent.showNext()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ShowNextImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int nLevel) start,
    required TResult Function() showNext,
    required TResult Function() switchToWaiting,
    required TResult Function() timeout,
    required TResult Function(bool isMatch) userResponse,
    required TResult Function(bool isCorrect) showFeedback,
    required TResult Function() restart,
  }) {
    return showNext();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int nLevel)? start,
    TResult? Function()? showNext,
    TResult? Function()? switchToWaiting,
    TResult? Function()? timeout,
    TResult? Function(bool isMatch)? userResponse,
    TResult? Function(bool isCorrect)? showFeedback,
    TResult? Function()? restart,
  }) {
    return showNext?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int nLevel)? start,
    TResult Function()? showNext,
    TResult Function()? switchToWaiting,
    TResult Function()? timeout,
    TResult Function(bool isMatch)? userResponse,
    TResult Function(bool isCorrect)? showFeedback,
    TResult Function()? restart,
    required TResult orElse(),
  }) {
    if (showNext != null) {
      return showNext();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Start value) start,
    required TResult Function(_ShowNext value) showNext,
    required TResult Function(_SwitchToWaiting value) switchToWaiting,
    required TResult Function(_Timeout value) timeout,
    required TResult Function(_UserResponse value) userResponse,
    required TResult Function(_ShowFeedback value) showFeedback,
    required TResult Function(_Restart value) restart,
  }) {
    return showNext(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Start value)? start,
    TResult? Function(_ShowNext value)? showNext,
    TResult? Function(_SwitchToWaiting value)? switchToWaiting,
    TResult? Function(_Timeout value)? timeout,
    TResult? Function(_UserResponse value)? userResponse,
    TResult? Function(_ShowFeedback value)? showFeedback,
    TResult? Function(_Restart value)? restart,
  }) {
    return showNext?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_ShowNext value)? showNext,
    TResult Function(_SwitchToWaiting value)? switchToWaiting,
    TResult Function(_Timeout value)? timeout,
    TResult Function(_UserResponse value)? userResponse,
    TResult Function(_ShowFeedback value)? showFeedback,
    TResult Function(_Restart value)? restart,
    required TResult orElse(),
  }) {
    if (showNext != null) {
      return showNext(this);
    }
    return orElse();
  }
}

abstract class _ShowNext implements NBackEvent {
  const factory _ShowNext() = _$ShowNextImpl;
}

/// @nodoc
abstract class _$$SwitchToWaitingImplCopyWith<$Res> {
  factory _$$SwitchToWaitingImplCopyWith(
    _$SwitchToWaitingImpl value,
    $Res Function(_$SwitchToWaitingImpl) then,
  ) = __$$SwitchToWaitingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SwitchToWaitingImplCopyWithImpl<$Res>
    extends _$NBackEventCopyWithImpl<$Res, _$SwitchToWaitingImpl>
    implements _$$SwitchToWaitingImplCopyWith<$Res> {
  __$$SwitchToWaitingImplCopyWithImpl(
    _$SwitchToWaitingImpl _value,
    $Res Function(_$SwitchToWaitingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NBackEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SwitchToWaitingImpl implements _SwitchToWaiting {
  const _$SwitchToWaitingImpl();

  @override
  String toString() {
    return 'NBackEvent.switchToWaiting()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SwitchToWaitingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int nLevel) start,
    required TResult Function() showNext,
    required TResult Function() switchToWaiting,
    required TResult Function() timeout,
    required TResult Function(bool isMatch) userResponse,
    required TResult Function(bool isCorrect) showFeedback,
    required TResult Function() restart,
  }) {
    return switchToWaiting();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int nLevel)? start,
    TResult? Function()? showNext,
    TResult? Function()? switchToWaiting,
    TResult? Function()? timeout,
    TResult? Function(bool isMatch)? userResponse,
    TResult? Function(bool isCorrect)? showFeedback,
    TResult? Function()? restart,
  }) {
    return switchToWaiting?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int nLevel)? start,
    TResult Function()? showNext,
    TResult Function()? switchToWaiting,
    TResult Function()? timeout,
    TResult Function(bool isMatch)? userResponse,
    TResult Function(bool isCorrect)? showFeedback,
    TResult Function()? restart,
    required TResult orElse(),
  }) {
    if (switchToWaiting != null) {
      return switchToWaiting();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Start value) start,
    required TResult Function(_ShowNext value) showNext,
    required TResult Function(_SwitchToWaiting value) switchToWaiting,
    required TResult Function(_Timeout value) timeout,
    required TResult Function(_UserResponse value) userResponse,
    required TResult Function(_ShowFeedback value) showFeedback,
    required TResult Function(_Restart value) restart,
  }) {
    return switchToWaiting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Start value)? start,
    TResult? Function(_ShowNext value)? showNext,
    TResult? Function(_SwitchToWaiting value)? switchToWaiting,
    TResult? Function(_Timeout value)? timeout,
    TResult? Function(_UserResponse value)? userResponse,
    TResult? Function(_ShowFeedback value)? showFeedback,
    TResult? Function(_Restart value)? restart,
  }) {
    return switchToWaiting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_ShowNext value)? showNext,
    TResult Function(_SwitchToWaiting value)? switchToWaiting,
    TResult Function(_Timeout value)? timeout,
    TResult Function(_UserResponse value)? userResponse,
    TResult Function(_ShowFeedback value)? showFeedback,
    TResult Function(_Restart value)? restart,
    required TResult orElse(),
  }) {
    if (switchToWaiting != null) {
      return switchToWaiting(this);
    }
    return orElse();
  }
}

abstract class _SwitchToWaiting implements NBackEvent {
  const factory _SwitchToWaiting() = _$SwitchToWaitingImpl;
}

/// @nodoc
abstract class _$$TimeoutImplCopyWith<$Res> {
  factory _$$TimeoutImplCopyWith(
    _$TimeoutImpl value,
    $Res Function(_$TimeoutImpl) then,
  ) = __$$TimeoutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TimeoutImplCopyWithImpl<$Res>
    extends _$NBackEventCopyWithImpl<$Res, _$TimeoutImpl>
    implements _$$TimeoutImplCopyWith<$Res> {
  __$$TimeoutImplCopyWithImpl(
    _$TimeoutImpl _value,
    $Res Function(_$TimeoutImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NBackEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$TimeoutImpl implements _Timeout {
  const _$TimeoutImpl();

  @override
  String toString() {
    return 'NBackEvent.timeout()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TimeoutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int nLevel) start,
    required TResult Function() showNext,
    required TResult Function() switchToWaiting,
    required TResult Function() timeout,
    required TResult Function(bool isMatch) userResponse,
    required TResult Function(bool isCorrect) showFeedback,
    required TResult Function() restart,
  }) {
    return timeout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int nLevel)? start,
    TResult? Function()? showNext,
    TResult? Function()? switchToWaiting,
    TResult? Function()? timeout,
    TResult? Function(bool isMatch)? userResponse,
    TResult? Function(bool isCorrect)? showFeedback,
    TResult? Function()? restart,
  }) {
    return timeout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int nLevel)? start,
    TResult Function()? showNext,
    TResult Function()? switchToWaiting,
    TResult Function()? timeout,
    TResult Function(bool isMatch)? userResponse,
    TResult Function(bool isCorrect)? showFeedback,
    TResult Function()? restart,
    required TResult orElse(),
  }) {
    if (timeout != null) {
      return timeout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Start value) start,
    required TResult Function(_ShowNext value) showNext,
    required TResult Function(_SwitchToWaiting value) switchToWaiting,
    required TResult Function(_Timeout value) timeout,
    required TResult Function(_UserResponse value) userResponse,
    required TResult Function(_ShowFeedback value) showFeedback,
    required TResult Function(_Restart value) restart,
  }) {
    return timeout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Start value)? start,
    TResult? Function(_ShowNext value)? showNext,
    TResult? Function(_SwitchToWaiting value)? switchToWaiting,
    TResult? Function(_Timeout value)? timeout,
    TResult? Function(_UserResponse value)? userResponse,
    TResult? Function(_ShowFeedback value)? showFeedback,
    TResult? Function(_Restart value)? restart,
  }) {
    return timeout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_ShowNext value)? showNext,
    TResult Function(_SwitchToWaiting value)? switchToWaiting,
    TResult Function(_Timeout value)? timeout,
    TResult Function(_UserResponse value)? userResponse,
    TResult Function(_ShowFeedback value)? showFeedback,
    TResult Function(_Restart value)? restart,
    required TResult orElse(),
  }) {
    if (timeout != null) {
      return timeout(this);
    }
    return orElse();
  }
}

abstract class _Timeout implements NBackEvent {
  const factory _Timeout() = _$TimeoutImpl;
}

/// @nodoc
abstract class _$$UserResponseImplCopyWith<$Res> {
  factory _$$UserResponseImplCopyWith(
    _$UserResponseImpl value,
    $Res Function(_$UserResponseImpl) then,
  ) = __$$UserResponseImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isMatch});
}

/// @nodoc
class __$$UserResponseImplCopyWithImpl<$Res>
    extends _$NBackEventCopyWithImpl<$Res, _$UserResponseImpl>
    implements _$$UserResponseImplCopyWith<$Res> {
  __$$UserResponseImplCopyWithImpl(
    _$UserResponseImpl _value,
    $Res Function(_$UserResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NBackEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? isMatch = null}) {
    return _then(
      _$UserResponseImpl(
        null == isMatch
            ? _value.isMatch
            : isMatch // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc

class _$UserResponseImpl implements _UserResponse {
  const _$UserResponseImpl(this.isMatch);

  @override
  final bool isMatch;

  @override
  String toString() {
    return 'NBackEvent.userResponse(isMatch: $isMatch)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserResponseImpl &&
            (identical(other.isMatch, isMatch) || other.isMatch == isMatch));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isMatch);

  /// Create a copy of NBackEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserResponseImplCopyWith<_$UserResponseImpl> get copyWith =>
      __$$UserResponseImplCopyWithImpl<_$UserResponseImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int nLevel) start,
    required TResult Function() showNext,
    required TResult Function() switchToWaiting,
    required TResult Function() timeout,
    required TResult Function(bool isMatch) userResponse,
    required TResult Function(bool isCorrect) showFeedback,
    required TResult Function() restart,
  }) {
    return userResponse(isMatch);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int nLevel)? start,
    TResult? Function()? showNext,
    TResult? Function()? switchToWaiting,
    TResult? Function()? timeout,
    TResult? Function(bool isMatch)? userResponse,
    TResult? Function(bool isCorrect)? showFeedback,
    TResult? Function()? restart,
  }) {
    return userResponse?.call(isMatch);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int nLevel)? start,
    TResult Function()? showNext,
    TResult Function()? switchToWaiting,
    TResult Function()? timeout,
    TResult Function(bool isMatch)? userResponse,
    TResult Function(bool isCorrect)? showFeedback,
    TResult Function()? restart,
    required TResult orElse(),
  }) {
    if (userResponse != null) {
      return userResponse(isMatch);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Start value) start,
    required TResult Function(_ShowNext value) showNext,
    required TResult Function(_SwitchToWaiting value) switchToWaiting,
    required TResult Function(_Timeout value) timeout,
    required TResult Function(_UserResponse value) userResponse,
    required TResult Function(_ShowFeedback value) showFeedback,
    required TResult Function(_Restart value) restart,
  }) {
    return userResponse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Start value)? start,
    TResult? Function(_ShowNext value)? showNext,
    TResult? Function(_SwitchToWaiting value)? switchToWaiting,
    TResult? Function(_Timeout value)? timeout,
    TResult? Function(_UserResponse value)? userResponse,
    TResult? Function(_ShowFeedback value)? showFeedback,
    TResult? Function(_Restart value)? restart,
  }) {
    return userResponse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_ShowNext value)? showNext,
    TResult Function(_SwitchToWaiting value)? switchToWaiting,
    TResult Function(_Timeout value)? timeout,
    TResult Function(_UserResponse value)? userResponse,
    TResult Function(_ShowFeedback value)? showFeedback,
    TResult Function(_Restart value)? restart,
    required TResult orElse(),
  }) {
    if (userResponse != null) {
      return userResponse(this);
    }
    return orElse();
  }
}

abstract class _UserResponse implements NBackEvent {
  const factory _UserResponse(final bool isMatch) = _$UserResponseImpl;

  bool get isMatch;

  /// Create a copy of NBackEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserResponseImplCopyWith<_$UserResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShowFeedbackImplCopyWith<$Res> {
  factory _$$ShowFeedbackImplCopyWith(
    _$ShowFeedbackImpl value,
    $Res Function(_$ShowFeedbackImpl) then,
  ) = __$$ShowFeedbackImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isCorrect});
}

/// @nodoc
class __$$ShowFeedbackImplCopyWithImpl<$Res>
    extends _$NBackEventCopyWithImpl<$Res, _$ShowFeedbackImpl>
    implements _$$ShowFeedbackImplCopyWith<$Res> {
  __$$ShowFeedbackImplCopyWithImpl(
    _$ShowFeedbackImpl _value,
    $Res Function(_$ShowFeedbackImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NBackEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? isCorrect = null}) {
    return _then(
      _$ShowFeedbackImpl(
        null == isCorrect
            ? _value.isCorrect
            : isCorrect // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc

class _$ShowFeedbackImpl implements _ShowFeedback {
  const _$ShowFeedbackImpl(this.isCorrect);

  @override
  final bool isCorrect;

  @override
  String toString() {
    return 'NBackEvent.showFeedback(isCorrect: $isCorrect)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowFeedbackImpl &&
            (identical(other.isCorrect, isCorrect) ||
                other.isCorrect == isCorrect));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isCorrect);

  /// Create a copy of NBackEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowFeedbackImplCopyWith<_$ShowFeedbackImpl> get copyWith =>
      __$$ShowFeedbackImplCopyWithImpl<_$ShowFeedbackImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int nLevel) start,
    required TResult Function() showNext,
    required TResult Function() switchToWaiting,
    required TResult Function() timeout,
    required TResult Function(bool isMatch) userResponse,
    required TResult Function(bool isCorrect) showFeedback,
    required TResult Function() restart,
  }) {
    return showFeedback(isCorrect);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int nLevel)? start,
    TResult? Function()? showNext,
    TResult? Function()? switchToWaiting,
    TResult? Function()? timeout,
    TResult? Function(bool isMatch)? userResponse,
    TResult? Function(bool isCorrect)? showFeedback,
    TResult? Function()? restart,
  }) {
    return showFeedback?.call(isCorrect);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int nLevel)? start,
    TResult Function()? showNext,
    TResult Function()? switchToWaiting,
    TResult Function()? timeout,
    TResult Function(bool isMatch)? userResponse,
    TResult Function(bool isCorrect)? showFeedback,
    TResult Function()? restart,
    required TResult orElse(),
  }) {
    if (showFeedback != null) {
      return showFeedback(isCorrect);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Start value) start,
    required TResult Function(_ShowNext value) showNext,
    required TResult Function(_SwitchToWaiting value) switchToWaiting,
    required TResult Function(_Timeout value) timeout,
    required TResult Function(_UserResponse value) userResponse,
    required TResult Function(_ShowFeedback value) showFeedback,
    required TResult Function(_Restart value) restart,
  }) {
    return showFeedback(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Start value)? start,
    TResult? Function(_ShowNext value)? showNext,
    TResult? Function(_SwitchToWaiting value)? switchToWaiting,
    TResult? Function(_Timeout value)? timeout,
    TResult? Function(_UserResponse value)? userResponse,
    TResult? Function(_ShowFeedback value)? showFeedback,
    TResult? Function(_Restart value)? restart,
  }) {
    return showFeedback?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_ShowNext value)? showNext,
    TResult Function(_SwitchToWaiting value)? switchToWaiting,
    TResult Function(_Timeout value)? timeout,
    TResult Function(_UserResponse value)? userResponse,
    TResult Function(_ShowFeedback value)? showFeedback,
    TResult Function(_Restart value)? restart,
    required TResult orElse(),
  }) {
    if (showFeedback != null) {
      return showFeedback(this);
    }
    return orElse();
  }
}

abstract class _ShowFeedback implements NBackEvent {
  const factory _ShowFeedback(final bool isCorrect) = _$ShowFeedbackImpl;

  bool get isCorrect;

  /// Create a copy of NBackEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShowFeedbackImplCopyWith<_$ShowFeedbackImpl> get copyWith =>
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
    extends _$NBackEventCopyWithImpl<$Res, _$RestartImpl>
    implements _$$RestartImplCopyWith<$Res> {
  __$$RestartImplCopyWithImpl(
    _$RestartImpl _value,
    $Res Function(_$RestartImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NBackEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RestartImpl implements _Restart {
  const _$RestartImpl();

  @override
  String toString() {
    return 'NBackEvent.restart()';
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
    required TResult Function(int nLevel) start,
    required TResult Function() showNext,
    required TResult Function() switchToWaiting,
    required TResult Function() timeout,
    required TResult Function(bool isMatch) userResponse,
    required TResult Function(bool isCorrect) showFeedback,
    required TResult Function() restart,
  }) {
    return restart();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int nLevel)? start,
    TResult? Function()? showNext,
    TResult? Function()? switchToWaiting,
    TResult? Function()? timeout,
    TResult? Function(bool isMatch)? userResponse,
    TResult? Function(bool isCorrect)? showFeedback,
    TResult? Function()? restart,
  }) {
    return restart?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int nLevel)? start,
    TResult Function()? showNext,
    TResult Function()? switchToWaiting,
    TResult Function()? timeout,
    TResult Function(bool isMatch)? userResponse,
    TResult Function(bool isCorrect)? showFeedback,
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
    required TResult Function(_ShowNext value) showNext,
    required TResult Function(_SwitchToWaiting value) switchToWaiting,
    required TResult Function(_Timeout value) timeout,
    required TResult Function(_UserResponse value) userResponse,
    required TResult Function(_ShowFeedback value) showFeedback,
    required TResult Function(_Restart value) restart,
  }) {
    return restart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Start value)? start,
    TResult? Function(_ShowNext value)? showNext,
    TResult? Function(_SwitchToWaiting value)? switchToWaiting,
    TResult? Function(_Timeout value)? timeout,
    TResult? Function(_UserResponse value)? userResponse,
    TResult? Function(_ShowFeedback value)? showFeedback,
    TResult? Function(_Restart value)? restart,
  }) {
    return restart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_ShowNext value)? showNext,
    TResult Function(_SwitchToWaiting value)? switchToWaiting,
    TResult Function(_Timeout value)? timeout,
    TResult Function(_UserResponse value)? userResponse,
    TResult Function(_ShowFeedback value)? showFeedback,
    TResult Function(_Restart value)? restart,
    required TResult orElse(),
  }) {
    if (restart != null) {
      return restart(this);
    }
    return orElse();
  }
}

abstract class _Restart implements NBackEvent {
  const factory _Restart() = _$RestartImpl;
}

/// @nodoc
mixin _$NBackState {
  int get nLevel => throw _privateConstructorUsedError;
  List<int> get sequence => throw _privateConstructorUsedError;
  int get currentIndex => throw _privateConstructorUsedError;
  int get score => throw _privateConstructorUsedError;
  int get mistakes => throw _privateConstructorUsedError;
  int get totalTrials => throw _privateConstructorUsedError;
  int get maxTrials => throw _privateConstructorUsedError;
  NBackPhase get phase => throw _privateConstructorUsedError;
  int? get currentPosition => throw _privateConstructorUsedError;
  bool? get lastFeedback => throw _privateConstructorUsedError;
  bool get isActualMatch => throw _privateConstructorUsedError;

  /// Create a copy of NBackState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NBackStateCopyWith<NBackState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NBackStateCopyWith<$Res> {
  factory $NBackStateCopyWith(
    NBackState value,
    $Res Function(NBackState) then,
  ) = _$NBackStateCopyWithImpl<$Res, NBackState>;
  @useResult
  $Res call({
    int nLevel,
    List<int> sequence,
    int currentIndex,
    int score,
    int mistakes,
    int totalTrials,
    int maxTrials,
    NBackPhase phase,
    int? currentPosition,
    bool? lastFeedback,
    bool isActualMatch,
  });
}

/// @nodoc
class _$NBackStateCopyWithImpl<$Res, $Val extends NBackState>
    implements $NBackStateCopyWith<$Res> {
  _$NBackStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NBackState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nLevel = null,
    Object? sequence = null,
    Object? currentIndex = null,
    Object? score = null,
    Object? mistakes = null,
    Object? totalTrials = null,
    Object? maxTrials = null,
    Object? phase = null,
    Object? currentPosition = freezed,
    Object? lastFeedback = freezed,
    Object? isActualMatch = null,
  }) {
    return _then(
      _value.copyWith(
            nLevel: null == nLevel
                ? _value.nLevel
                : nLevel // ignore: cast_nullable_to_non_nullable
                      as int,
            sequence: null == sequence
                ? _value.sequence
                : sequence // ignore: cast_nullable_to_non_nullable
                      as List<int>,
            currentIndex: null == currentIndex
                ? _value.currentIndex
                : currentIndex // ignore: cast_nullable_to_non_nullable
                      as int,
            score: null == score
                ? _value.score
                : score // ignore: cast_nullable_to_non_nullable
                      as int,
            mistakes: null == mistakes
                ? _value.mistakes
                : mistakes // ignore: cast_nullable_to_non_nullable
                      as int,
            totalTrials: null == totalTrials
                ? _value.totalTrials
                : totalTrials // ignore: cast_nullable_to_non_nullable
                      as int,
            maxTrials: null == maxTrials
                ? _value.maxTrials
                : maxTrials // ignore: cast_nullable_to_non_nullable
                      as int,
            phase: null == phase
                ? _value.phase
                : phase // ignore: cast_nullable_to_non_nullable
                      as NBackPhase,
            currentPosition: freezed == currentPosition
                ? _value.currentPosition
                : currentPosition // ignore: cast_nullable_to_non_nullable
                      as int?,
            lastFeedback: freezed == lastFeedback
                ? _value.lastFeedback
                : lastFeedback // ignore: cast_nullable_to_non_nullable
                      as bool?,
            isActualMatch: null == isActualMatch
                ? _value.isActualMatch
                : isActualMatch // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$NBackStateImplCopyWith<$Res>
    implements $NBackStateCopyWith<$Res> {
  factory _$$NBackStateImplCopyWith(
    _$NBackStateImpl value,
    $Res Function(_$NBackStateImpl) then,
  ) = __$$NBackStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int nLevel,
    List<int> sequence,
    int currentIndex,
    int score,
    int mistakes,
    int totalTrials,
    int maxTrials,
    NBackPhase phase,
    int? currentPosition,
    bool? lastFeedback,
    bool isActualMatch,
  });
}

/// @nodoc
class __$$NBackStateImplCopyWithImpl<$Res>
    extends _$NBackStateCopyWithImpl<$Res, _$NBackStateImpl>
    implements _$$NBackStateImplCopyWith<$Res> {
  __$$NBackStateImplCopyWithImpl(
    _$NBackStateImpl _value,
    $Res Function(_$NBackStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NBackState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nLevel = null,
    Object? sequence = null,
    Object? currentIndex = null,
    Object? score = null,
    Object? mistakes = null,
    Object? totalTrials = null,
    Object? maxTrials = null,
    Object? phase = null,
    Object? currentPosition = freezed,
    Object? lastFeedback = freezed,
    Object? isActualMatch = null,
  }) {
    return _then(
      _$NBackStateImpl(
        nLevel: null == nLevel
            ? _value.nLevel
            : nLevel // ignore: cast_nullable_to_non_nullable
                  as int,
        sequence: null == sequence
            ? _value._sequence
            : sequence // ignore: cast_nullable_to_non_nullable
                  as List<int>,
        currentIndex: null == currentIndex
            ? _value.currentIndex
            : currentIndex // ignore: cast_nullable_to_non_nullable
                  as int,
        score: null == score
            ? _value.score
            : score // ignore: cast_nullable_to_non_nullable
                  as int,
        mistakes: null == mistakes
            ? _value.mistakes
            : mistakes // ignore: cast_nullable_to_non_nullable
                  as int,
        totalTrials: null == totalTrials
            ? _value.totalTrials
            : totalTrials // ignore: cast_nullable_to_non_nullable
                  as int,
        maxTrials: null == maxTrials
            ? _value.maxTrials
            : maxTrials // ignore: cast_nullable_to_non_nullable
                  as int,
        phase: null == phase
            ? _value.phase
            : phase // ignore: cast_nullable_to_non_nullable
                  as NBackPhase,
        currentPosition: freezed == currentPosition
            ? _value.currentPosition
            : currentPosition // ignore: cast_nullable_to_non_nullable
                  as int?,
        lastFeedback: freezed == lastFeedback
            ? _value.lastFeedback
            : lastFeedback // ignore: cast_nullable_to_non_nullable
                  as bool?,
        isActualMatch: null == isActualMatch
            ? _value.isActualMatch
            : isActualMatch // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc

class _$NBackStateImpl implements _NBackState {
  const _$NBackStateImpl({
    this.nLevel = 2,
    final List<int> sequence = const [],
    this.currentIndex = 0,
    this.score = 0,
    this.mistakes = 0,
    this.totalTrials = 0,
    this.maxTrials = 20,
    this.phase = NBackPhase.ready,
    this.currentPosition = null,
    this.lastFeedback = null,
    this.isActualMatch = false,
  }) : _sequence = sequence;

  @override
  @JsonKey()
  final int nLevel;
  final List<int> _sequence;
  @override
  @JsonKey()
  List<int> get sequence {
    if (_sequence is EqualUnmodifiableListView) return _sequence;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sequence);
  }

  @override
  @JsonKey()
  final int currentIndex;
  @override
  @JsonKey()
  final int score;
  @override
  @JsonKey()
  final int mistakes;
  @override
  @JsonKey()
  final int totalTrials;
  @override
  @JsonKey()
  final int maxTrials;
  @override
  @JsonKey()
  final NBackPhase phase;
  @override
  @JsonKey()
  final int? currentPosition;
  @override
  @JsonKey()
  final bool? lastFeedback;
  @override
  @JsonKey()
  final bool isActualMatch;

  @override
  String toString() {
    return 'NBackState(nLevel: $nLevel, sequence: $sequence, currentIndex: $currentIndex, score: $score, mistakes: $mistakes, totalTrials: $totalTrials, maxTrials: $maxTrials, phase: $phase, currentPosition: $currentPosition, lastFeedback: $lastFeedback, isActualMatch: $isActualMatch)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NBackStateImpl &&
            (identical(other.nLevel, nLevel) || other.nLevel == nLevel) &&
            const DeepCollectionEquality().equals(other._sequence, _sequence) &&
            (identical(other.currentIndex, currentIndex) ||
                other.currentIndex == currentIndex) &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.mistakes, mistakes) ||
                other.mistakes == mistakes) &&
            (identical(other.totalTrials, totalTrials) ||
                other.totalTrials == totalTrials) &&
            (identical(other.maxTrials, maxTrials) ||
                other.maxTrials == maxTrials) &&
            (identical(other.phase, phase) || other.phase == phase) &&
            (identical(other.currentPosition, currentPosition) ||
                other.currentPosition == currentPosition) &&
            (identical(other.lastFeedback, lastFeedback) ||
                other.lastFeedback == lastFeedback) &&
            (identical(other.isActualMatch, isActualMatch) ||
                other.isActualMatch == isActualMatch));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    nLevel,
    const DeepCollectionEquality().hash(_sequence),
    currentIndex,
    score,
    mistakes,
    totalTrials,
    maxTrials,
    phase,
    currentPosition,
    lastFeedback,
    isActualMatch,
  );

  /// Create a copy of NBackState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NBackStateImplCopyWith<_$NBackStateImpl> get copyWith =>
      __$$NBackStateImplCopyWithImpl<_$NBackStateImpl>(this, _$identity);
}

abstract class _NBackState implements NBackState {
  const factory _NBackState({
    final int nLevel,
    final List<int> sequence,
    final int currentIndex,
    final int score,
    final int mistakes,
    final int totalTrials,
    final int maxTrials,
    final NBackPhase phase,
    final int? currentPosition,
    final bool? lastFeedback,
    final bool isActualMatch,
  }) = _$NBackStateImpl;

  @override
  int get nLevel;
  @override
  List<int> get sequence;
  @override
  int get currentIndex;
  @override
  int get score;
  @override
  int get mistakes;
  @override
  int get totalTrials;
  @override
  int get maxTrials;
  @override
  NBackPhase get phase;
  @override
  int? get currentPosition;
  @override
  bool? get lastFeedback;
  @override
  bool get isActualMatch;

  /// Create a copy of NBackState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NBackStateImplCopyWith<_$NBackStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
