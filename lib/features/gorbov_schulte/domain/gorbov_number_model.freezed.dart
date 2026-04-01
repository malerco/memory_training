// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gorbov_number_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$GorbovNumber {
  int get value => throw _privateConstructorUsedError;
  NumberColor get color => throw _privateConstructorUsedError;

  /// Create a copy of GorbovNumber
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GorbovNumberCopyWith<GorbovNumber> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GorbovNumberCopyWith<$Res> {
  factory $GorbovNumberCopyWith(
    GorbovNumber value,
    $Res Function(GorbovNumber) then,
  ) = _$GorbovNumberCopyWithImpl<$Res, GorbovNumber>;
  @useResult
  $Res call({int value, NumberColor color});
}

/// @nodoc
class _$GorbovNumberCopyWithImpl<$Res, $Val extends GorbovNumber>
    implements $GorbovNumberCopyWith<$Res> {
  _$GorbovNumberCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GorbovNumber
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? value = null, Object? color = null}) {
    return _then(
      _value.copyWith(
            value: null == value
                ? _value.value
                : value // ignore: cast_nullable_to_non_nullable
                      as int,
            color: null == color
                ? _value.color
                : color // ignore: cast_nullable_to_non_nullable
                      as NumberColor,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$GorbovNumberImplCopyWith<$Res>
    implements $GorbovNumberCopyWith<$Res> {
  factory _$$GorbovNumberImplCopyWith(
    _$GorbovNumberImpl value,
    $Res Function(_$GorbovNumberImpl) then,
  ) = __$$GorbovNumberImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int value, NumberColor color});
}

/// @nodoc
class __$$GorbovNumberImplCopyWithImpl<$Res>
    extends _$GorbovNumberCopyWithImpl<$Res, _$GorbovNumberImpl>
    implements _$$GorbovNumberImplCopyWith<$Res> {
  __$$GorbovNumberImplCopyWithImpl(
    _$GorbovNumberImpl _value,
    $Res Function(_$GorbovNumberImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GorbovNumber
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? value = null, Object? color = null}) {
    return _then(
      _$GorbovNumberImpl(
        value: null == value
            ? _value.value
            : value // ignore: cast_nullable_to_non_nullable
                  as int,
        color: null == color
            ? _value.color
            : color // ignore: cast_nullable_to_non_nullable
                  as NumberColor,
      ),
    );
  }
}

/// @nodoc

class _$GorbovNumberImpl implements _GorbovNumber {
  const _$GorbovNumberImpl({required this.value, required this.color});

  @override
  final int value;
  @override
  final NumberColor color;

  @override
  String toString() {
    return 'GorbovNumber(value: $value, color: $color)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GorbovNumberImpl &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.color, color) || other.color == color));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value, color);

  /// Create a copy of GorbovNumber
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GorbovNumberImplCopyWith<_$GorbovNumberImpl> get copyWith =>
      __$$GorbovNumberImplCopyWithImpl<_$GorbovNumberImpl>(this, _$identity);
}

abstract class _GorbovNumber implements GorbovNumber {
  const factory _GorbovNumber({
    required final int value,
    required final NumberColor color,
  }) = _$GorbovNumberImpl;

  @override
  int get value;
  @override
  NumberColor get color;

  /// Create a copy of GorbovNumber
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GorbovNumberImplCopyWith<_$GorbovNumberImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
