// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'purpose_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Purpose _$PurposeFromJson(Map<String, dynamic> json) {
  return _Purpose.fromJson(json);
}

/// @nodoc
mixin _$Purpose {
  int? get id => throw _privateConstructorUsedError;
  String? get display => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PurposeCopyWith<Purpose> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PurposeCopyWith<$Res> {
  factory $PurposeCopyWith(Purpose value, $Res Function(Purpose) then) =
      _$PurposeCopyWithImpl<$Res, Purpose>;
  @useResult
  $Res call({int? id, String? display});
}

/// @nodoc
class _$PurposeCopyWithImpl<$Res, $Val extends Purpose>
    implements $PurposeCopyWith<$Res> {
  _$PurposeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? display = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      display: freezed == display
          ? _value.display
          : display // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PurposeCopyWith<$Res> implements $PurposeCopyWith<$Res> {
  factory _$$_PurposeCopyWith(
          _$_Purpose value, $Res Function(_$_Purpose) then) =
      __$$_PurposeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? display});
}

/// @nodoc
class __$$_PurposeCopyWithImpl<$Res>
    extends _$PurposeCopyWithImpl<$Res, _$_Purpose>
    implements _$$_PurposeCopyWith<$Res> {
  __$$_PurposeCopyWithImpl(_$_Purpose _value, $Res Function(_$_Purpose) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? display = freezed,
  }) {
    return _then(_$_Purpose(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      display: freezed == display
          ? _value.display
          : display // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Purpose implements _Purpose {
  _$_Purpose({this.id, this.display});

  factory _$_Purpose.fromJson(Map<String, dynamic> json) =>
      _$$_PurposeFromJson(json);

  @override
  final int? id;
  @override
  final String? display;

  @override
  String toString() {
    return 'Purpose(id: $id, display: $display)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Purpose &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.display, display) || other.display == display));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, display);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PurposeCopyWith<_$_Purpose> get copyWith =>
      __$$_PurposeCopyWithImpl<_$_Purpose>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PurposeToJson(
      this,
    );
  }
}

abstract class _Purpose implements Purpose {
  factory _Purpose({final int? id, final String? display}) = _$_Purpose;

  factory _Purpose.fromJson(Map<String, dynamic> json) = _$_Purpose.fromJson;

  @override
  int? get id;
  @override
  String? get display;
  @override
  @JsonKey(ignore: true)
  _$$_PurposeCopyWith<_$_Purpose> get copyWith =>
      throw _privateConstructorUsedError;
}
