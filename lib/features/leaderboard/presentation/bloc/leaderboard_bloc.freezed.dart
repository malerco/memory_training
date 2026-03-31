// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'leaderboard_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$LeaderboardEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(
      String gameType,
      int value,
      int? rows,
      int? cols,
      int? gridSize,
      int? level,
      bool higherIsBetter,
    )
    saveRecord,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(
      String gameType,
      int value,
      int? rows,
      int? cols,
      int? gridSize,
      int? level,
      bool higherIsBetter,
    )?
    saveRecord,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(
      String gameType,
      int value,
      int? rows,
      int? cols,
      int? gridSize,
      int? level,
      bool higherIsBetter,
    )?
    saveRecord,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_SaveRecord value) saveRecord,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Load value)? load,
    TResult? Function(_SaveRecord value)? saveRecord,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_SaveRecord value)? saveRecord,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeaderboardEventCopyWith<$Res> {
  factory $LeaderboardEventCopyWith(
    LeaderboardEvent value,
    $Res Function(LeaderboardEvent) then,
  ) = _$LeaderboardEventCopyWithImpl<$Res, LeaderboardEvent>;
}

/// @nodoc
class _$LeaderboardEventCopyWithImpl<$Res, $Val extends LeaderboardEvent>
    implements $LeaderboardEventCopyWith<$Res> {
  _$LeaderboardEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LeaderboardEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadImplCopyWith<$Res> {
  factory _$$LoadImplCopyWith(
    _$LoadImpl value,
    $Res Function(_$LoadImpl) then,
  ) = __$$LoadImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadImplCopyWithImpl<$Res>
    extends _$LeaderboardEventCopyWithImpl<$Res, _$LoadImpl>
    implements _$$LoadImplCopyWith<$Res> {
  __$$LoadImplCopyWithImpl(_$LoadImpl _value, $Res Function(_$LoadImpl) _then)
    : super(_value, _then);

  /// Create a copy of LeaderboardEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadImpl implements _Load {
  const _$LoadImpl();

  @override
  String toString() {
    return 'LeaderboardEvent.load()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(
      String gameType,
      int value,
      int? rows,
      int? cols,
      int? gridSize,
      int? level,
      bool higherIsBetter,
    )
    saveRecord,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(
      String gameType,
      int value,
      int? rows,
      int? cols,
      int? gridSize,
      int? level,
      bool higherIsBetter,
    )?
    saveRecord,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(
      String gameType,
      int value,
      int? rows,
      int? cols,
      int? gridSize,
      int? level,
      bool higherIsBetter,
    )?
    saveRecord,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_SaveRecord value) saveRecord,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Load value)? load,
    TResult? Function(_SaveRecord value)? saveRecord,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_SaveRecord value)? saveRecord,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class _Load implements LeaderboardEvent {
  const factory _Load() = _$LoadImpl;
}

/// @nodoc
abstract class _$$SaveRecordImplCopyWith<$Res> {
  factory _$$SaveRecordImplCopyWith(
    _$SaveRecordImpl value,
    $Res Function(_$SaveRecordImpl) then,
  ) = __$$SaveRecordImplCopyWithImpl<$Res>;
  @useResult
  $Res call({
    String gameType,
    int value,
    int? rows,
    int? cols,
    int? gridSize,
    int? level,
    bool higherIsBetter,
  });
}

/// @nodoc
class __$$SaveRecordImplCopyWithImpl<$Res>
    extends _$LeaderboardEventCopyWithImpl<$Res, _$SaveRecordImpl>
    implements _$$SaveRecordImplCopyWith<$Res> {
  __$$SaveRecordImplCopyWithImpl(
    _$SaveRecordImpl _value,
    $Res Function(_$SaveRecordImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LeaderboardEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gameType = null,
    Object? value = null,
    Object? rows = freezed,
    Object? cols = freezed,
    Object? gridSize = freezed,
    Object? level = freezed,
    Object? higherIsBetter = null,
  }) {
    return _then(
      _$SaveRecordImpl(
        gameType: null == gameType
            ? _value.gameType
            : gameType // ignore: cast_nullable_to_non_nullable
                  as String,
        value: null == value
            ? _value.value
            : value // ignore: cast_nullable_to_non_nullable
                  as int,
        rows: freezed == rows
            ? _value.rows
            : rows // ignore: cast_nullable_to_non_nullable
                  as int?,
        cols: freezed == cols
            ? _value.cols
            : cols // ignore: cast_nullable_to_non_nullable
                  as int?,
        gridSize: freezed == gridSize
            ? _value.gridSize
            : gridSize // ignore: cast_nullable_to_non_nullable
                  as int?,
        level: freezed == level
            ? _value.level
            : level // ignore: cast_nullable_to_non_nullable
                  as int?,
        higherIsBetter: null == higherIsBetter
            ? _value.higherIsBetter
            : higherIsBetter // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc

class _$SaveRecordImpl implements _SaveRecord {
  const _$SaveRecordImpl({
    required this.gameType,
    required this.value,
    this.rows,
    this.cols,
    this.gridSize,
    this.level,
    this.higherIsBetter = false,
  });

  @override
  final String gameType;
  @override
  final int value;
  @override
  final int? rows;
  @override
  final int? cols;
  @override
  final int? gridSize;
  @override
  final int? level;
  @override
  @JsonKey()
  final bool higherIsBetter;

  @override
  String toString() {
    return 'LeaderboardEvent.saveRecord(gameType: $gameType, value: $value, rows: $rows, cols: $cols, gridSize: $gridSize, level: $level, higherIsBetter: $higherIsBetter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveRecordImpl &&
            (identical(other.gameType, gameType) ||
                other.gameType == gameType) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.rows, rows) || other.rows == rows) &&
            (identical(other.cols, cols) || other.cols == cols) &&
            (identical(other.gridSize, gridSize) ||
                other.gridSize == gridSize) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.higherIsBetter, higherIsBetter) ||
                other.higherIsBetter == higherIsBetter));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    gameType,
    value,
    rows,
    cols,
    gridSize,
    level,
    higherIsBetter,
  );

  /// Create a copy of LeaderboardEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveRecordImplCopyWith<_$SaveRecordImpl> get copyWith =>
      __$$SaveRecordImplCopyWithImpl<_$SaveRecordImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(
      String gameType,
      int value,
      int? rows,
      int? cols,
      int? gridSize,
      int? level,
      bool higherIsBetter,
    )
    saveRecord,
  }) {
    return saveRecord(
      gameType,
      value,
      rows,
      cols,
      gridSize,
      level,
      higherIsBetter,
    );
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(
      String gameType,
      int value,
      int? rows,
      int? cols,
      int? gridSize,
      int? level,
      bool higherIsBetter,
    )?
    saveRecord,
  }) {
    return saveRecord?.call(
      gameType,
      value,
      rows,
      cols,
      gridSize,
      level,
      higherIsBetter,
    );
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(
      String gameType,
      int value,
      int? rows,
      int? cols,
      int? gridSize,
      int? level,
      bool higherIsBetter,
    )?
    saveRecord,
    required TResult orElse(),
  }) {
    if (saveRecord != null) {
      return saveRecord(
        gameType,
        value,
        rows,
        cols,
        gridSize,
        level,
        higherIsBetter,
      );
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_SaveRecord value) saveRecord,
  }) {
    return saveRecord(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Load value)? load,
    TResult? Function(_SaveRecord value)? saveRecord,
  }) {
    return saveRecord?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_SaveRecord value)? saveRecord,
    required TResult orElse(),
  }) {
    if (saveRecord != null) {
      return saveRecord(this);
    }
    return orElse();
  }
}

abstract class _SaveRecord implements LeaderboardEvent {
  const factory _SaveRecord({
    required final String gameType,
    required final int value,
    final int? rows,
    final int? cols,
    final int? gridSize,
    final int? level,
    final bool higherIsBetter,
  }) = _$SaveRecordImpl;

  String get gameType;
  int get value;
  int? get rows;
  int? get cols;
  int? get gridSize;
  int? get level;
  bool get higherIsBetter;

  /// Create a copy of LeaderboardEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SaveRecordImplCopyWith<_$SaveRecordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LeaderboardState {
  Map<String, int> get records => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  /// Create a copy of LeaderboardState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LeaderboardStateCopyWith<LeaderboardState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeaderboardStateCopyWith<$Res> {
  factory $LeaderboardStateCopyWith(
    LeaderboardState value,
    $Res Function(LeaderboardState) then,
  ) = _$LeaderboardStateCopyWithImpl<$Res, LeaderboardState>;
  @useResult
  $Res call({Map<String, int> records, bool isLoading});
}

/// @nodoc
class _$LeaderboardStateCopyWithImpl<$Res, $Val extends LeaderboardState>
    implements $LeaderboardStateCopyWith<$Res> {
  _$LeaderboardStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LeaderboardState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? records = null, Object? isLoading = null}) {
    return _then(
      _value.copyWith(
            records: null == records
                ? _value.records
                : records // ignore: cast_nullable_to_non_nullable
                      as Map<String, int>,
            isLoading: null == isLoading
                ? _value.isLoading
                : isLoading // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$LeaderboardStateImplCopyWith<$Res>
    implements $LeaderboardStateCopyWith<$Res> {
  factory _$$LeaderboardStateImplCopyWith(
    _$LeaderboardStateImpl value,
    $Res Function(_$LeaderboardStateImpl) then,
  ) = __$$LeaderboardStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, int> records, bool isLoading});
}

/// @nodoc
class __$$LeaderboardStateImplCopyWithImpl<$Res>
    extends _$LeaderboardStateCopyWithImpl<$Res, _$LeaderboardStateImpl>
    implements _$$LeaderboardStateImplCopyWith<$Res> {
  __$$LeaderboardStateImplCopyWithImpl(
    _$LeaderboardStateImpl _value,
    $Res Function(_$LeaderboardStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LeaderboardState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? records = null, Object? isLoading = null}) {
    return _then(
      _$LeaderboardStateImpl(
        records: null == records
            ? _value._records
            : records // ignore: cast_nullable_to_non_nullable
                  as Map<String, int>,
        isLoading: null == isLoading
            ? _value.isLoading
            : isLoading // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc

class _$LeaderboardStateImpl implements _LeaderboardState {
  const _$LeaderboardStateImpl({
    final Map<String, int> records = const {},
    this.isLoading = false,
  }) : _records = records;

  final Map<String, int> _records;
  @override
  @JsonKey()
  Map<String, int> get records {
    if (_records is EqualUnmodifiableMapView) return _records;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_records);
  }

  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'LeaderboardState(records: $records, isLoading: $isLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeaderboardStateImpl &&
            const DeepCollectionEquality().equals(other._records, _records) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_records),
    isLoading,
  );

  /// Create a copy of LeaderboardState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LeaderboardStateImplCopyWith<_$LeaderboardStateImpl> get copyWith =>
      __$$LeaderboardStateImplCopyWithImpl<_$LeaderboardStateImpl>(
        this,
        _$identity,
      );
}

abstract class _LeaderboardState implements LeaderboardState {
  const factory _LeaderboardState({
    final Map<String, int> records,
    final bool isLoading,
  }) = _$LeaderboardStateImpl;

  @override
  Map<String, int> get records;
  @override
  bool get isLoading;

  /// Create a copy of LeaderboardState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LeaderboardStateImplCopyWith<_$LeaderboardStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
