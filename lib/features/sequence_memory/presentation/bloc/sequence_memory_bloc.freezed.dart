// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sequence_memory_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$SequenceMemoryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int gridSize) start,
    required TResult Function() showSequence,
    required TResult Function(int index) showNextItem,
    required TResult Function(int nextIndex) hideItem,
    required TResult Function() finishShowing,
    required TResult Function(int position) userTap,
    required TResult Function() nextLevel,
    required TResult Function() restart,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int gridSize)? start,
    TResult? Function()? showSequence,
    TResult? Function(int index)? showNextItem,
    TResult? Function(int nextIndex)? hideItem,
    TResult? Function()? finishShowing,
    TResult? Function(int position)? userTap,
    TResult? Function()? nextLevel,
    TResult? Function()? restart,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int gridSize)? start,
    TResult Function()? showSequence,
    TResult Function(int index)? showNextItem,
    TResult Function(int nextIndex)? hideItem,
    TResult Function()? finishShowing,
    TResult Function(int position)? userTap,
    TResult Function()? nextLevel,
    TResult Function()? restart,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Start value) start,
    required TResult Function(_ShowSequence value) showSequence,
    required TResult Function(_ShowNextItem value) showNextItem,
    required TResult Function(_HideItem value) hideItem,
    required TResult Function(_FinishShowing value) finishShowing,
    required TResult Function(_UserTap value) userTap,
    required TResult Function(_NextLevel value) nextLevel,
    required TResult Function(_Restart value) restart,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Start value)? start,
    TResult? Function(_ShowSequence value)? showSequence,
    TResult? Function(_ShowNextItem value)? showNextItem,
    TResult? Function(_HideItem value)? hideItem,
    TResult? Function(_FinishShowing value)? finishShowing,
    TResult? Function(_UserTap value)? userTap,
    TResult? Function(_NextLevel value)? nextLevel,
    TResult? Function(_Restart value)? restart,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_ShowSequence value)? showSequence,
    TResult Function(_ShowNextItem value)? showNextItem,
    TResult Function(_HideItem value)? hideItem,
    TResult Function(_FinishShowing value)? finishShowing,
    TResult Function(_UserTap value)? userTap,
    TResult Function(_NextLevel value)? nextLevel,
    TResult Function(_Restart value)? restart,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SequenceMemoryEventCopyWith<$Res> {
  factory $SequenceMemoryEventCopyWith(
    SequenceMemoryEvent value,
    $Res Function(SequenceMemoryEvent) then,
  ) = _$SequenceMemoryEventCopyWithImpl<$Res, SequenceMemoryEvent>;
}

/// @nodoc
class _$SequenceMemoryEventCopyWithImpl<$Res, $Val extends SequenceMemoryEvent>
    implements $SequenceMemoryEventCopyWith<$Res> {
  _$SequenceMemoryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SequenceMemoryEvent
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
    extends _$SequenceMemoryEventCopyWithImpl<$Res, _$StartImpl>
    implements _$$StartImplCopyWith<$Res> {
  __$$StartImplCopyWithImpl(
    _$StartImpl _value,
    $Res Function(_$StartImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SequenceMemoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? gridSize = null}) {
    return _then(
      _$StartImpl(
        null == gridSize
            ? _value.gridSize
            : gridSize // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$StartImpl implements _Start {
  const _$StartImpl(this.gridSize);

  @override
  final int gridSize;

  @override
  String toString() {
    return 'SequenceMemoryEvent.start(gridSize: $gridSize)';
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

  /// Create a copy of SequenceMemoryEvent
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
    required TResult Function() showSequence,
    required TResult Function(int index) showNextItem,
    required TResult Function(int nextIndex) hideItem,
    required TResult Function() finishShowing,
    required TResult Function(int position) userTap,
    required TResult Function() nextLevel,
    required TResult Function() restart,
  }) {
    return start(gridSize);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int gridSize)? start,
    TResult? Function()? showSequence,
    TResult? Function(int index)? showNextItem,
    TResult? Function(int nextIndex)? hideItem,
    TResult? Function()? finishShowing,
    TResult? Function(int position)? userTap,
    TResult? Function()? nextLevel,
    TResult? Function()? restart,
  }) {
    return start?.call(gridSize);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int gridSize)? start,
    TResult Function()? showSequence,
    TResult Function(int index)? showNextItem,
    TResult Function(int nextIndex)? hideItem,
    TResult Function()? finishShowing,
    TResult Function(int position)? userTap,
    TResult Function()? nextLevel,
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
    required TResult Function(_ShowSequence value) showSequence,
    required TResult Function(_ShowNextItem value) showNextItem,
    required TResult Function(_HideItem value) hideItem,
    required TResult Function(_FinishShowing value) finishShowing,
    required TResult Function(_UserTap value) userTap,
    required TResult Function(_NextLevel value) nextLevel,
    required TResult Function(_Restart value) restart,
  }) {
    return start(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Start value)? start,
    TResult? Function(_ShowSequence value)? showSequence,
    TResult? Function(_ShowNextItem value)? showNextItem,
    TResult? Function(_HideItem value)? hideItem,
    TResult? Function(_FinishShowing value)? finishShowing,
    TResult? Function(_UserTap value)? userTap,
    TResult? Function(_NextLevel value)? nextLevel,
    TResult? Function(_Restart value)? restart,
  }) {
    return start?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_ShowSequence value)? showSequence,
    TResult Function(_ShowNextItem value)? showNextItem,
    TResult Function(_HideItem value)? hideItem,
    TResult Function(_FinishShowing value)? finishShowing,
    TResult Function(_UserTap value)? userTap,
    TResult Function(_NextLevel value)? nextLevel,
    TResult Function(_Restart value)? restart,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(this);
    }
    return orElse();
  }
}

abstract class _Start implements SequenceMemoryEvent {
  const factory _Start(final int gridSize) = _$StartImpl;

  int get gridSize;

  /// Create a copy of SequenceMemoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StartImplCopyWith<_$StartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShowSequenceImplCopyWith<$Res> {
  factory _$$ShowSequenceImplCopyWith(
    _$ShowSequenceImpl value,
    $Res Function(_$ShowSequenceImpl) then,
  ) = __$$ShowSequenceImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ShowSequenceImplCopyWithImpl<$Res>
    extends _$SequenceMemoryEventCopyWithImpl<$Res, _$ShowSequenceImpl>
    implements _$$ShowSequenceImplCopyWith<$Res> {
  __$$ShowSequenceImplCopyWithImpl(
    _$ShowSequenceImpl _value,
    $Res Function(_$ShowSequenceImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SequenceMemoryEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ShowSequenceImpl implements _ShowSequence {
  const _$ShowSequenceImpl();

  @override
  String toString() {
    return 'SequenceMemoryEvent.showSequence()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ShowSequenceImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int gridSize) start,
    required TResult Function() showSequence,
    required TResult Function(int index) showNextItem,
    required TResult Function(int nextIndex) hideItem,
    required TResult Function() finishShowing,
    required TResult Function(int position) userTap,
    required TResult Function() nextLevel,
    required TResult Function() restart,
  }) {
    return showSequence();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int gridSize)? start,
    TResult? Function()? showSequence,
    TResult? Function(int index)? showNextItem,
    TResult? Function(int nextIndex)? hideItem,
    TResult? Function()? finishShowing,
    TResult? Function(int position)? userTap,
    TResult? Function()? nextLevel,
    TResult? Function()? restart,
  }) {
    return showSequence?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int gridSize)? start,
    TResult Function()? showSequence,
    TResult Function(int index)? showNextItem,
    TResult Function(int nextIndex)? hideItem,
    TResult Function()? finishShowing,
    TResult Function(int position)? userTap,
    TResult Function()? nextLevel,
    TResult Function()? restart,
    required TResult orElse(),
  }) {
    if (showSequence != null) {
      return showSequence();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Start value) start,
    required TResult Function(_ShowSequence value) showSequence,
    required TResult Function(_ShowNextItem value) showNextItem,
    required TResult Function(_HideItem value) hideItem,
    required TResult Function(_FinishShowing value) finishShowing,
    required TResult Function(_UserTap value) userTap,
    required TResult Function(_NextLevel value) nextLevel,
    required TResult Function(_Restart value) restart,
  }) {
    return showSequence(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Start value)? start,
    TResult? Function(_ShowSequence value)? showSequence,
    TResult? Function(_ShowNextItem value)? showNextItem,
    TResult? Function(_HideItem value)? hideItem,
    TResult? Function(_FinishShowing value)? finishShowing,
    TResult? Function(_UserTap value)? userTap,
    TResult? Function(_NextLevel value)? nextLevel,
    TResult? Function(_Restart value)? restart,
  }) {
    return showSequence?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_ShowSequence value)? showSequence,
    TResult Function(_ShowNextItem value)? showNextItem,
    TResult Function(_HideItem value)? hideItem,
    TResult Function(_FinishShowing value)? finishShowing,
    TResult Function(_UserTap value)? userTap,
    TResult Function(_NextLevel value)? nextLevel,
    TResult Function(_Restart value)? restart,
    required TResult orElse(),
  }) {
    if (showSequence != null) {
      return showSequence(this);
    }
    return orElse();
  }
}

abstract class _ShowSequence implements SequenceMemoryEvent {
  const factory _ShowSequence() = _$ShowSequenceImpl;
}

/// @nodoc
abstract class _$$ShowNextItemImplCopyWith<$Res> {
  factory _$$ShowNextItemImplCopyWith(
    _$ShowNextItemImpl value,
    $Res Function(_$ShowNextItemImpl) then,
  ) = __$$ShowNextItemImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$ShowNextItemImplCopyWithImpl<$Res>
    extends _$SequenceMemoryEventCopyWithImpl<$Res, _$ShowNextItemImpl>
    implements _$$ShowNextItemImplCopyWith<$Res> {
  __$$ShowNextItemImplCopyWithImpl(
    _$ShowNextItemImpl _value,
    $Res Function(_$ShowNextItemImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SequenceMemoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? index = null}) {
    return _then(
      _$ShowNextItemImpl(
        null == index
            ? _value.index
            : index // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$ShowNextItemImpl implements _ShowNextItem {
  const _$ShowNextItemImpl(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'SequenceMemoryEvent.showNextItem(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowNextItemImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  /// Create a copy of SequenceMemoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowNextItemImplCopyWith<_$ShowNextItemImpl> get copyWith =>
      __$$ShowNextItemImplCopyWithImpl<_$ShowNextItemImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int gridSize) start,
    required TResult Function() showSequence,
    required TResult Function(int index) showNextItem,
    required TResult Function(int nextIndex) hideItem,
    required TResult Function() finishShowing,
    required TResult Function(int position) userTap,
    required TResult Function() nextLevel,
    required TResult Function() restart,
  }) {
    return showNextItem(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int gridSize)? start,
    TResult? Function()? showSequence,
    TResult? Function(int index)? showNextItem,
    TResult? Function(int nextIndex)? hideItem,
    TResult? Function()? finishShowing,
    TResult? Function(int position)? userTap,
    TResult? Function()? nextLevel,
    TResult? Function()? restart,
  }) {
    return showNextItem?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int gridSize)? start,
    TResult Function()? showSequence,
    TResult Function(int index)? showNextItem,
    TResult Function(int nextIndex)? hideItem,
    TResult Function()? finishShowing,
    TResult Function(int position)? userTap,
    TResult Function()? nextLevel,
    TResult Function()? restart,
    required TResult orElse(),
  }) {
    if (showNextItem != null) {
      return showNextItem(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Start value) start,
    required TResult Function(_ShowSequence value) showSequence,
    required TResult Function(_ShowNextItem value) showNextItem,
    required TResult Function(_HideItem value) hideItem,
    required TResult Function(_FinishShowing value) finishShowing,
    required TResult Function(_UserTap value) userTap,
    required TResult Function(_NextLevel value) nextLevel,
    required TResult Function(_Restart value) restart,
  }) {
    return showNextItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Start value)? start,
    TResult? Function(_ShowSequence value)? showSequence,
    TResult? Function(_ShowNextItem value)? showNextItem,
    TResult? Function(_HideItem value)? hideItem,
    TResult? Function(_FinishShowing value)? finishShowing,
    TResult? Function(_UserTap value)? userTap,
    TResult? Function(_NextLevel value)? nextLevel,
    TResult? Function(_Restart value)? restart,
  }) {
    return showNextItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_ShowSequence value)? showSequence,
    TResult Function(_ShowNextItem value)? showNextItem,
    TResult Function(_HideItem value)? hideItem,
    TResult Function(_FinishShowing value)? finishShowing,
    TResult Function(_UserTap value)? userTap,
    TResult Function(_NextLevel value)? nextLevel,
    TResult Function(_Restart value)? restart,
    required TResult orElse(),
  }) {
    if (showNextItem != null) {
      return showNextItem(this);
    }
    return orElse();
  }
}

abstract class _ShowNextItem implements SequenceMemoryEvent {
  const factory _ShowNextItem(final int index) = _$ShowNextItemImpl;

  int get index;

  /// Create a copy of SequenceMemoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShowNextItemImplCopyWith<_$ShowNextItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HideItemImplCopyWith<$Res> {
  factory _$$HideItemImplCopyWith(
    _$HideItemImpl value,
    $Res Function(_$HideItemImpl) then,
  ) = __$$HideItemImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int nextIndex});
}

/// @nodoc
class __$$HideItemImplCopyWithImpl<$Res>
    extends _$SequenceMemoryEventCopyWithImpl<$Res, _$HideItemImpl>
    implements _$$HideItemImplCopyWith<$Res> {
  __$$HideItemImplCopyWithImpl(
    _$HideItemImpl _value,
    $Res Function(_$HideItemImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SequenceMemoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? nextIndex = null}) {
    return _then(
      _$HideItemImpl(
        null == nextIndex
            ? _value.nextIndex
            : nextIndex // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$HideItemImpl implements _HideItem {
  const _$HideItemImpl(this.nextIndex);

  @override
  final int nextIndex;

  @override
  String toString() {
    return 'SequenceMemoryEvent.hideItem(nextIndex: $nextIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HideItemImpl &&
            (identical(other.nextIndex, nextIndex) ||
                other.nextIndex == nextIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, nextIndex);

  /// Create a copy of SequenceMemoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HideItemImplCopyWith<_$HideItemImpl> get copyWith =>
      __$$HideItemImplCopyWithImpl<_$HideItemImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int gridSize) start,
    required TResult Function() showSequence,
    required TResult Function(int index) showNextItem,
    required TResult Function(int nextIndex) hideItem,
    required TResult Function() finishShowing,
    required TResult Function(int position) userTap,
    required TResult Function() nextLevel,
    required TResult Function() restart,
  }) {
    return hideItem(nextIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int gridSize)? start,
    TResult? Function()? showSequence,
    TResult? Function(int index)? showNextItem,
    TResult? Function(int nextIndex)? hideItem,
    TResult? Function()? finishShowing,
    TResult? Function(int position)? userTap,
    TResult? Function()? nextLevel,
    TResult? Function()? restart,
  }) {
    return hideItem?.call(nextIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int gridSize)? start,
    TResult Function()? showSequence,
    TResult Function(int index)? showNextItem,
    TResult Function(int nextIndex)? hideItem,
    TResult Function()? finishShowing,
    TResult Function(int position)? userTap,
    TResult Function()? nextLevel,
    TResult Function()? restart,
    required TResult orElse(),
  }) {
    if (hideItem != null) {
      return hideItem(nextIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Start value) start,
    required TResult Function(_ShowSequence value) showSequence,
    required TResult Function(_ShowNextItem value) showNextItem,
    required TResult Function(_HideItem value) hideItem,
    required TResult Function(_FinishShowing value) finishShowing,
    required TResult Function(_UserTap value) userTap,
    required TResult Function(_NextLevel value) nextLevel,
    required TResult Function(_Restart value) restart,
  }) {
    return hideItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Start value)? start,
    TResult? Function(_ShowSequence value)? showSequence,
    TResult? Function(_ShowNextItem value)? showNextItem,
    TResult? Function(_HideItem value)? hideItem,
    TResult? Function(_FinishShowing value)? finishShowing,
    TResult? Function(_UserTap value)? userTap,
    TResult? Function(_NextLevel value)? nextLevel,
    TResult? Function(_Restart value)? restart,
  }) {
    return hideItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_ShowSequence value)? showSequence,
    TResult Function(_ShowNextItem value)? showNextItem,
    TResult Function(_HideItem value)? hideItem,
    TResult Function(_FinishShowing value)? finishShowing,
    TResult Function(_UserTap value)? userTap,
    TResult Function(_NextLevel value)? nextLevel,
    TResult Function(_Restart value)? restart,
    required TResult orElse(),
  }) {
    if (hideItem != null) {
      return hideItem(this);
    }
    return orElse();
  }
}

abstract class _HideItem implements SequenceMemoryEvent {
  const factory _HideItem(final int nextIndex) = _$HideItemImpl;

  int get nextIndex;

  /// Create a copy of SequenceMemoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HideItemImplCopyWith<_$HideItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FinishShowingImplCopyWith<$Res> {
  factory _$$FinishShowingImplCopyWith(
    _$FinishShowingImpl value,
    $Res Function(_$FinishShowingImpl) then,
  ) = __$$FinishShowingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FinishShowingImplCopyWithImpl<$Res>
    extends _$SequenceMemoryEventCopyWithImpl<$Res, _$FinishShowingImpl>
    implements _$$FinishShowingImplCopyWith<$Res> {
  __$$FinishShowingImplCopyWithImpl(
    _$FinishShowingImpl _value,
    $Res Function(_$FinishShowingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SequenceMemoryEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FinishShowingImpl implements _FinishShowing {
  const _$FinishShowingImpl();

  @override
  String toString() {
    return 'SequenceMemoryEvent.finishShowing()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FinishShowingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int gridSize) start,
    required TResult Function() showSequence,
    required TResult Function(int index) showNextItem,
    required TResult Function(int nextIndex) hideItem,
    required TResult Function() finishShowing,
    required TResult Function(int position) userTap,
    required TResult Function() nextLevel,
    required TResult Function() restart,
  }) {
    return finishShowing();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int gridSize)? start,
    TResult? Function()? showSequence,
    TResult? Function(int index)? showNextItem,
    TResult? Function(int nextIndex)? hideItem,
    TResult? Function()? finishShowing,
    TResult? Function(int position)? userTap,
    TResult? Function()? nextLevel,
    TResult? Function()? restart,
  }) {
    return finishShowing?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int gridSize)? start,
    TResult Function()? showSequence,
    TResult Function(int index)? showNextItem,
    TResult Function(int nextIndex)? hideItem,
    TResult Function()? finishShowing,
    TResult Function(int position)? userTap,
    TResult Function()? nextLevel,
    TResult Function()? restart,
    required TResult orElse(),
  }) {
    if (finishShowing != null) {
      return finishShowing();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Start value) start,
    required TResult Function(_ShowSequence value) showSequence,
    required TResult Function(_ShowNextItem value) showNextItem,
    required TResult Function(_HideItem value) hideItem,
    required TResult Function(_FinishShowing value) finishShowing,
    required TResult Function(_UserTap value) userTap,
    required TResult Function(_NextLevel value) nextLevel,
    required TResult Function(_Restart value) restart,
  }) {
    return finishShowing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Start value)? start,
    TResult? Function(_ShowSequence value)? showSequence,
    TResult? Function(_ShowNextItem value)? showNextItem,
    TResult? Function(_HideItem value)? hideItem,
    TResult? Function(_FinishShowing value)? finishShowing,
    TResult? Function(_UserTap value)? userTap,
    TResult? Function(_NextLevel value)? nextLevel,
    TResult? Function(_Restart value)? restart,
  }) {
    return finishShowing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_ShowSequence value)? showSequence,
    TResult Function(_ShowNextItem value)? showNextItem,
    TResult Function(_HideItem value)? hideItem,
    TResult Function(_FinishShowing value)? finishShowing,
    TResult Function(_UserTap value)? userTap,
    TResult Function(_NextLevel value)? nextLevel,
    TResult Function(_Restart value)? restart,
    required TResult orElse(),
  }) {
    if (finishShowing != null) {
      return finishShowing(this);
    }
    return orElse();
  }
}

abstract class _FinishShowing implements SequenceMemoryEvent {
  const factory _FinishShowing() = _$FinishShowingImpl;
}

/// @nodoc
abstract class _$$UserTapImplCopyWith<$Res> {
  factory _$$UserTapImplCopyWith(
    _$UserTapImpl value,
    $Res Function(_$UserTapImpl) then,
  ) = __$$UserTapImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int position});
}

/// @nodoc
class __$$UserTapImplCopyWithImpl<$Res>
    extends _$SequenceMemoryEventCopyWithImpl<$Res, _$UserTapImpl>
    implements _$$UserTapImplCopyWith<$Res> {
  __$$UserTapImplCopyWithImpl(
    _$UserTapImpl _value,
    $Res Function(_$UserTapImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SequenceMemoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? position = null}) {
    return _then(
      _$UserTapImpl(
        null == position
            ? _value.position
            : position // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$UserTapImpl implements _UserTap {
  const _$UserTapImpl(this.position);

  @override
  final int position;

  @override
  String toString() {
    return 'SequenceMemoryEvent.userTap(position: $position)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserTapImpl &&
            (identical(other.position, position) ||
                other.position == position));
  }

  @override
  int get hashCode => Object.hash(runtimeType, position);

  /// Create a copy of SequenceMemoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserTapImplCopyWith<_$UserTapImpl> get copyWith =>
      __$$UserTapImplCopyWithImpl<_$UserTapImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int gridSize) start,
    required TResult Function() showSequence,
    required TResult Function(int index) showNextItem,
    required TResult Function(int nextIndex) hideItem,
    required TResult Function() finishShowing,
    required TResult Function(int position) userTap,
    required TResult Function() nextLevel,
    required TResult Function() restart,
  }) {
    return userTap(position);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int gridSize)? start,
    TResult? Function()? showSequence,
    TResult? Function(int index)? showNextItem,
    TResult? Function(int nextIndex)? hideItem,
    TResult? Function()? finishShowing,
    TResult? Function(int position)? userTap,
    TResult? Function()? nextLevel,
    TResult? Function()? restart,
  }) {
    return userTap?.call(position);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int gridSize)? start,
    TResult Function()? showSequence,
    TResult Function(int index)? showNextItem,
    TResult Function(int nextIndex)? hideItem,
    TResult Function()? finishShowing,
    TResult Function(int position)? userTap,
    TResult Function()? nextLevel,
    TResult Function()? restart,
    required TResult orElse(),
  }) {
    if (userTap != null) {
      return userTap(position);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Start value) start,
    required TResult Function(_ShowSequence value) showSequence,
    required TResult Function(_ShowNextItem value) showNextItem,
    required TResult Function(_HideItem value) hideItem,
    required TResult Function(_FinishShowing value) finishShowing,
    required TResult Function(_UserTap value) userTap,
    required TResult Function(_NextLevel value) nextLevel,
    required TResult Function(_Restart value) restart,
  }) {
    return userTap(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Start value)? start,
    TResult? Function(_ShowSequence value)? showSequence,
    TResult? Function(_ShowNextItem value)? showNextItem,
    TResult? Function(_HideItem value)? hideItem,
    TResult? Function(_FinishShowing value)? finishShowing,
    TResult? Function(_UserTap value)? userTap,
    TResult? Function(_NextLevel value)? nextLevel,
    TResult? Function(_Restart value)? restart,
  }) {
    return userTap?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_ShowSequence value)? showSequence,
    TResult Function(_ShowNextItem value)? showNextItem,
    TResult Function(_HideItem value)? hideItem,
    TResult Function(_FinishShowing value)? finishShowing,
    TResult Function(_UserTap value)? userTap,
    TResult Function(_NextLevel value)? nextLevel,
    TResult Function(_Restart value)? restart,
    required TResult orElse(),
  }) {
    if (userTap != null) {
      return userTap(this);
    }
    return orElse();
  }
}

abstract class _UserTap implements SequenceMemoryEvent {
  const factory _UserTap(final int position) = _$UserTapImpl;

  int get position;

  /// Create a copy of SequenceMemoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserTapImplCopyWith<_$UserTapImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NextLevelImplCopyWith<$Res> {
  factory _$$NextLevelImplCopyWith(
    _$NextLevelImpl value,
    $Res Function(_$NextLevelImpl) then,
  ) = __$$NextLevelImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NextLevelImplCopyWithImpl<$Res>
    extends _$SequenceMemoryEventCopyWithImpl<$Res, _$NextLevelImpl>
    implements _$$NextLevelImplCopyWith<$Res> {
  __$$NextLevelImplCopyWithImpl(
    _$NextLevelImpl _value,
    $Res Function(_$NextLevelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SequenceMemoryEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NextLevelImpl implements _NextLevel {
  const _$NextLevelImpl();

  @override
  String toString() {
    return 'SequenceMemoryEvent.nextLevel()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NextLevelImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int gridSize) start,
    required TResult Function() showSequence,
    required TResult Function(int index) showNextItem,
    required TResult Function(int nextIndex) hideItem,
    required TResult Function() finishShowing,
    required TResult Function(int position) userTap,
    required TResult Function() nextLevel,
    required TResult Function() restart,
  }) {
    return nextLevel();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int gridSize)? start,
    TResult? Function()? showSequence,
    TResult? Function(int index)? showNextItem,
    TResult? Function(int nextIndex)? hideItem,
    TResult? Function()? finishShowing,
    TResult? Function(int position)? userTap,
    TResult? Function()? nextLevel,
    TResult? Function()? restart,
  }) {
    return nextLevel?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int gridSize)? start,
    TResult Function()? showSequence,
    TResult Function(int index)? showNextItem,
    TResult Function(int nextIndex)? hideItem,
    TResult Function()? finishShowing,
    TResult Function(int position)? userTap,
    TResult Function()? nextLevel,
    TResult Function()? restart,
    required TResult orElse(),
  }) {
    if (nextLevel != null) {
      return nextLevel();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Start value) start,
    required TResult Function(_ShowSequence value) showSequence,
    required TResult Function(_ShowNextItem value) showNextItem,
    required TResult Function(_HideItem value) hideItem,
    required TResult Function(_FinishShowing value) finishShowing,
    required TResult Function(_UserTap value) userTap,
    required TResult Function(_NextLevel value) nextLevel,
    required TResult Function(_Restart value) restart,
  }) {
    return nextLevel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Start value)? start,
    TResult? Function(_ShowSequence value)? showSequence,
    TResult? Function(_ShowNextItem value)? showNextItem,
    TResult? Function(_HideItem value)? hideItem,
    TResult? Function(_FinishShowing value)? finishShowing,
    TResult? Function(_UserTap value)? userTap,
    TResult? Function(_NextLevel value)? nextLevel,
    TResult? Function(_Restart value)? restart,
  }) {
    return nextLevel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_ShowSequence value)? showSequence,
    TResult Function(_ShowNextItem value)? showNextItem,
    TResult Function(_HideItem value)? hideItem,
    TResult Function(_FinishShowing value)? finishShowing,
    TResult Function(_UserTap value)? userTap,
    TResult Function(_NextLevel value)? nextLevel,
    TResult Function(_Restart value)? restart,
    required TResult orElse(),
  }) {
    if (nextLevel != null) {
      return nextLevel(this);
    }
    return orElse();
  }
}

abstract class _NextLevel implements SequenceMemoryEvent {
  const factory _NextLevel() = _$NextLevelImpl;
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
    extends _$SequenceMemoryEventCopyWithImpl<$Res, _$RestartImpl>
    implements _$$RestartImplCopyWith<$Res> {
  __$$RestartImplCopyWithImpl(
    _$RestartImpl _value,
    $Res Function(_$RestartImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SequenceMemoryEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RestartImpl implements _Restart {
  const _$RestartImpl();

  @override
  String toString() {
    return 'SequenceMemoryEvent.restart()';
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
    required TResult Function() showSequence,
    required TResult Function(int index) showNextItem,
    required TResult Function(int nextIndex) hideItem,
    required TResult Function() finishShowing,
    required TResult Function(int position) userTap,
    required TResult Function() nextLevel,
    required TResult Function() restart,
  }) {
    return restart();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int gridSize)? start,
    TResult? Function()? showSequence,
    TResult? Function(int index)? showNextItem,
    TResult? Function(int nextIndex)? hideItem,
    TResult? Function()? finishShowing,
    TResult? Function(int position)? userTap,
    TResult? Function()? nextLevel,
    TResult? Function()? restart,
  }) {
    return restart?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int gridSize)? start,
    TResult Function()? showSequence,
    TResult Function(int index)? showNextItem,
    TResult Function(int nextIndex)? hideItem,
    TResult Function()? finishShowing,
    TResult Function(int position)? userTap,
    TResult Function()? nextLevel,
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
    required TResult Function(_ShowSequence value) showSequence,
    required TResult Function(_ShowNextItem value) showNextItem,
    required TResult Function(_HideItem value) hideItem,
    required TResult Function(_FinishShowing value) finishShowing,
    required TResult Function(_UserTap value) userTap,
    required TResult Function(_NextLevel value) nextLevel,
    required TResult Function(_Restart value) restart,
  }) {
    return restart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Start value)? start,
    TResult? Function(_ShowSequence value)? showSequence,
    TResult? Function(_ShowNextItem value)? showNextItem,
    TResult? Function(_HideItem value)? hideItem,
    TResult? Function(_FinishShowing value)? finishShowing,
    TResult? Function(_UserTap value)? userTap,
    TResult? Function(_NextLevel value)? nextLevel,
    TResult? Function(_Restart value)? restart,
  }) {
    return restart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_ShowSequence value)? showSequence,
    TResult Function(_ShowNextItem value)? showNextItem,
    TResult Function(_HideItem value)? hideItem,
    TResult Function(_FinishShowing value)? finishShowing,
    TResult Function(_UserTap value)? userTap,
    TResult Function(_NextLevel value)? nextLevel,
    TResult Function(_Restart value)? restart,
    required TResult orElse(),
  }) {
    if (restart != null) {
      return restart(this);
    }
    return orElse();
  }
}

abstract class _Restart implements SequenceMemoryEvent {
  const factory _Restart() = _$RestartImpl;
}

/// @nodoc
mixin _$SequenceMemoryState {
  int get gridSize => throw _privateConstructorUsedError;
  List<int> get sequence => throw _privateConstructorUsedError;
  int get userIndex => throw _privateConstructorUsedError;
  int get level => throw _privateConstructorUsedError;
  int get score => throw _privateConstructorUsedError;
  SequencePhase get phase => throw _privateConstructorUsedError;
  int? get showingIndex => throw _privateConstructorUsedError;
  int? get lastTappedPosition => throw _privateConstructorUsedError;
  bool get lastTapCorrect => throw _privateConstructorUsedError;

  /// Create a copy of SequenceMemoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SequenceMemoryStateCopyWith<SequenceMemoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SequenceMemoryStateCopyWith<$Res> {
  factory $SequenceMemoryStateCopyWith(
    SequenceMemoryState value,
    $Res Function(SequenceMemoryState) then,
  ) = _$SequenceMemoryStateCopyWithImpl<$Res, SequenceMemoryState>;
  @useResult
  $Res call({
    int gridSize,
    List<int> sequence,
    int userIndex,
    int level,
    int score,
    SequencePhase phase,
    int? showingIndex,
    int? lastTappedPosition,
    bool lastTapCorrect,
  });
}

/// @nodoc
class _$SequenceMemoryStateCopyWithImpl<$Res, $Val extends SequenceMemoryState>
    implements $SequenceMemoryStateCopyWith<$Res> {
  _$SequenceMemoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SequenceMemoryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gridSize = null,
    Object? sequence = null,
    Object? userIndex = null,
    Object? level = null,
    Object? score = null,
    Object? phase = null,
    Object? showingIndex = freezed,
    Object? lastTappedPosition = freezed,
    Object? lastTapCorrect = null,
  }) {
    return _then(
      _value.copyWith(
            gridSize: null == gridSize
                ? _value.gridSize
                : gridSize // ignore: cast_nullable_to_non_nullable
                      as int,
            sequence: null == sequence
                ? _value.sequence
                : sequence // ignore: cast_nullable_to_non_nullable
                      as List<int>,
            userIndex: null == userIndex
                ? _value.userIndex
                : userIndex // ignore: cast_nullable_to_non_nullable
                      as int,
            level: null == level
                ? _value.level
                : level // ignore: cast_nullable_to_non_nullable
                      as int,
            score: null == score
                ? _value.score
                : score // ignore: cast_nullable_to_non_nullable
                      as int,
            phase: null == phase
                ? _value.phase
                : phase // ignore: cast_nullable_to_non_nullable
                      as SequencePhase,
            showingIndex: freezed == showingIndex
                ? _value.showingIndex
                : showingIndex // ignore: cast_nullable_to_non_nullable
                      as int?,
            lastTappedPosition: freezed == lastTappedPosition
                ? _value.lastTappedPosition
                : lastTappedPosition // ignore: cast_nullable_to_non_nullable
                      as int?,
            lastTapCorrect: null == lastTapCorrect
                ? _value.lastTapCorrect
                : lastTapCorrect // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SequenceMemoryStateImplCopyWith<$Res>
    implements $SequenceMemoryStateCopyWith<$Res> {
  factory _$$SequenceMemoryStateImplCopyWith(
    _$SequenceMemoryStateImpl value,
    $Res Function(_$SequenceMemoryStateImpl) then,
  ) = __$$SequenceMemoryStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int gridSize,
    List<int> sequence,
    int userIndex,
    int level,
    int score,
    SequencePhase phase,
    int? showingIndex,
    int? lastTappedPosition,
    bool lastTapCorrect,
  });
}

/// @nodoc
class __$$SequenceMemoryStateImplCopyWithImpl<$Res>
    extends _$SequenceMemoryStateCopyWithImpl<$Res, _$SequenceMemoryStateImpl>
    implements _$$SequenceMemoryStateImplCopyWith<$Res> {
  __$$SequenceMemoryStateImplCopyWithImpl(
    _$SequenceMemoryStateImpl _value,
    $Res Function(_$SequenceMemoryStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SequenceMemoryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gridSize = null,
    Object? sequence = null,
    Object? userIndex = null,
    Object? level = null,
    Object? score = null,
    Object? phase = null,
    Object? showingIndex = freezed,
    Object? lastTappedPosition = freezed,
    Object? lastTapCorrect = null,
  }) {
    return _then(
      _$SequenceMemoryStateImpl(
        gridSize: null == gridSize
            ? _value.gridSize
            : gridSize // ignore: cast_nullable_to_non_nullable
                  as int,
        sequence: null == sequence
            ? _value._sequence
            : sequence // ignore: cast_nullable_to_non_nullable
                  as List<int>,
        userIndex: null == userIndex
            ? _value.userIndex
            : userIndex // ignore: cast_nullable_to_non_nullable
                  as int,
        level: null == level
            ? _value.level
            : level // ignore: cast_nullable_to_non_nullable
                  as int,
        score: null == score
            ? _value.score
            : score // ignore: cast_nullable_to_non_nullable
                  as int,
        phase: null == phase
            ? _value.phase
            : phase // ignore: cast_nullable_to_non_nullable
                  as SequencePhase,
        showingIndex: freezed == showingIndex
            ? _value.showingIndex
            : showingIndex // ignore: cast_nullable_to_non_nullable
                  as int?,
        lastTappedPosition: freezed == lastTappedPosition
            ? _value.lastTappedPosition
            : lastTappedPosition // ignore: cast_nullable_to_non_nullable
                  as int?,
        lastTapCorrect: null == lastTapCorrect
            ? _value.lastTapCorrect
            : lastTapCorrect // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc

class _$SequenceMemoryStateImpl implements _SequenceMemoryState {
  const _$SequenceMemoryStateImpl({
    this.gridSize = 4,
    final List<int> sequence = const [],
    this.userIndex = 0,
    this.level = 1,
    this.score = 0,
    this.phase = SequencePhase.ready,
    this.showingIndex = null,
    this.lastTappedPosition = null,
    this.lastTapCorrect = false,
  }) : _sequence = sequence;

  @override
  @JsonKey()
  final int gridSize;
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
  final int userIndex;
  @override
  @JsonKey()
  final int level;
  @override
  @JsonKey()
  final int score;
  @override
  @JsonKey()
  final SequencePhase phase;
  @override
  @JsonKey()
  final int? showingIndex;
  @override
  @JsonKey()
  final int? lastTappedPosition;
  @override
  @JsonKey()
  final bool lastTapCorrect;

  @override
  String toString() {
    return 'SequenceMemoryState(gridSize: $gridSize, sequence: $sequence, userIndex: $userIndex, level: $level, score: $score, phase: $phase, showingIndex: $showingIndex, lastTappedPosition: $lastTappedPosition, lastTapCorrect: $lastTapCorrect)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SequenceMemoryStateImpl &&
            (identical(other.gridSize, gridSize) ||
                other.gridSize == gridSize) &&
            const DeepCollectionEquality().equals(other._sequence, _sequence) &&
            (identical(other.userIndex, userIndex) ||
                other.userIndex == userIndex) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.phase, phase) || other.phase == phase) &&
            (identical(other.showingIndex, showingIndex) ||
                other.showingIndex == showingIndex) &&
            (identical(other.lastTappedPosition, lastTappedPosition) ||
                other.lastTappedPosition == lastTappedPosition) &&
            (identical(other.lastTapCorrect, lastTapCorrect) ||
                other.lastTapCorrect == lastTapCorrect));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    gridSize,
    const DeepCollectionEquality().hash(_sequence),
    userIndex,
    level,
    score,
    phase,
    showingIndex,
    lastTappedPosition,
    lastTapCorrect,
  );

  /// Create a copy of SequenceMemoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SequenceMemoryStateImplCopyWith<_$SequenceMemoryStateImpl> get copyWith =>
      __$$SequenceMemoryStateImplCopyWithImpl<_$SequenceMemoryStateImpl>(
        this,
        _$identity,
      );
}

abstract class _SequenceMemoryState implements SequenceMemoryState {
  const factory _SequenceMemoryState({
    final int gridSize,
    final List<int> sequence,
    final int userIndex,
    final int level,
    final int score,
    final SequencePhase phase,
    final int? showingIndex,
    final int? lastTappedPosition,
    final bool lastTapCorrect,
  }) = _$SequenceMemoryStateImpl;

  @override
  int get gridSize;
  @override
  List<int> get sequence;
  @override
  int get userIndex;
  @override
  int get level;
  @override
  int get score;
  @override
  SequencePhase get phase;
  @override
  int? get showingIndex;
  @override
  int? get lastTappedPosition;
  @override
  bool get lastTapCorrect;

  /// Create a copy of SequenceMemoryState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SequenceMemoryStateImplCopyWith<_$SequenceMemoryStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
