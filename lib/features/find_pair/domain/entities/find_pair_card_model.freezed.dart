// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'find_pair_card_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$FindPairCardModel {
  int get id => throw _privateConstructorUsedError;
  int get pairId => throw _privateConstructorUsedError;
  String get emoji => throw _privateConstructorUsedError;
  bool get isFlipped => throw _privateConstructorUsedError;
  bool get isMatched => throw _privateConstructorUsedError;

  /// Create a copy of FindPairCardModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FindPairCardModelCopyWith<FindPairCardModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FindPairCardModelCopyWith<$Res> {
  factory $FindPairCardModelCopyWith(
    FindPairCardModel value,
    $Res Function(FindPairCardModel) then,
  ) = _$FindPairCardModelCopyWithImpl<$Res, FindPairCardModel>;
  @useResult
  $Res call({int id, int pairId, String emoji, bool isFlipped, bool isMatched});
}

/// @nodoc
class _$FindPairCardModelCopyWithImpl<$Res, $Val extends FindPairCardModel>
    implements $FindPairCardModelCopyWith<$Res> {
  _$FindPairCardModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FindPairCardModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? pairId = null,
    Object? emoji = null,
    Object? isFlipped = null,
    Object? isMatched = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            pairId: null == pairId
                ? _value.pairId
                : pairId // ignore: cast_nullable_to_non_nullable
                      as int,
            emoji: null == emoji
                ? _value.emoji
                : emoji // ignore: cast_nullable_to_non_nullable
                      as String,
            isFlipped: null == isFlipped
                ? _value.isFlipped
                : isFlipped // ignore: cast_nullable_to_non_nullable
                      as bool,
            isMatched: null == isMatched
                ? _value.isMatched
                : isMatched // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$FindPairCardModelImplCopyWith<$Res>
    implements $FindPairCardModelCopyWith<$Res> {
  factory _$$FindPairCardModelImplCopyWith(
    _$FindPairCardModelImpl value,
    $Res Function(_$FindPairCardModelImpl) then,
  ) = __$$FindPairCardModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, int pairId, String emoji, bool isFlipped, bool isMatched});
}

/// @nodoc
class __$$FindPairCardModelImplCopyWithImpl<$Res>
    extends _$FindPairCardModelCopyWithImpl<$Res, _$FindPairCardModelImpl>
    implements _$$FindPairCardModelImplCopyWith<$Res> {
  __$$FindPairCardModelImplCopyWithImpl(
    _$FindPairCardModelImpl _value,
    $Res Function(_$FindPairCardModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FindPairCardModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? pairId = null,
    Object? emoji = null,
    Object? isFlipped = null,
    Object? isMatched = null,
  }) {
    return _then(
      _$FindPairCardModelImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        pairId: null == pairId
            ? _value.pairId
            : pairId // ignore: cast_nullable_to_non_nullable
                  as int,
        emoji: null == emoji
            ? _value.emoji
            : emoji // ignore: cast_nullable_to_non_nullable
                  as String,
        isFlipped: null == isFlipped
            ? _value.isFlipped
            : isFlipped // ignore: cast_nullable_to_non_nullable
                  as bool,
        isMatched: null == isMatched
            ? _value.isMatched
            : isMatched // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc

class _$FindPairCardModelImpl implements _FindPairCardModel {
  const _$FindPairCardModelImpl({
    required this.id,
    required this.pairId,
    required this.emoji,
    this.isFlipped = false,
    this.isMatched = false,
  });

  @override
  final int id;
  @override
  final int pairId;
  @override
  final String emoji;
  @override
  @JsonKey()
  final bool isFlipped;
  @override
  @JsonKey()
  final bool isMatched;

  @override
  String toString() {
    return 'FindPairCardModel(id: $id, pairId: $pairId, emoji: $emoji, isFlipped: $isFlipped, isMatched: $isMatched)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FindPairCardModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.pairId, pairId) || other.pairId == pairId) &&
            (identical(other.emoji, emoji) || other.emoji == emoji) &&
            (identical(other.isFlipped, isFlipped) ||
                other.isFlipped == isFlipped) &&
            (identical(other.isMatched, isMatched) ||
                other.isMatched == isMatched));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, pairId, emoji, isFlipped, isMatched);

  /// Create a copy of FindPairCardModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FindPairCardModelImplCopyWith<_$FindPairCardModelImpl> get copyWith =>
      __$$FindPairCardModelImplCopyWithImpl<_$FindPairCardModelImpl>(
        this,
        _$identity,
      );
}

abstract class _FindPairCardModel implements FindPairCardModel {
  const factory _FindPairCardModel({
    required final int id,
    required final int pairId,
    required final String emoji,
    final bool isFlipped,
    final bool isMatched,
  }) = _$FindPairCardModelImpl;

  @override
  int get id;
  @override
  int get pairId;
  @override
  String get emoji;
  @override
  bool get isFlipped;
  @override
  bool get isMatched;

  /// Create a copy of FindPairCardModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FindPairCardModelImplCopyWith<_$FindPairCardModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
