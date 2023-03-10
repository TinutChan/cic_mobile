// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'major_business_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MajorOfBusiness _$MajorOfBusinessFromJson(Map<String, dynamic> json) {
  return _MajorOfBusiness.fromJson(json);
}

/// @nodoc
mixin _$MajorOfBusiness {
  int? get id => throw _privateConstructorUsedError;
  String? get display => throw _privateConstructorUsedError;
  String? get displayKhmer => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MajorOfBusinessCopyWith<MajorOfBusiness> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MajorOfBusinessCopyWith<$Res> {
  factory $MajorOfBusinessCopyWith(
          MajorOfBusiness value, $Res Function(MajorOfBusiness) then) =
      _$MajorOfBusinessCopyWithImpl<$Res, MajorOfBusiness>;
  @useResult
  $Res call({int? id, String? display, String? displayKhmer});
}

/// @nodoc
class _$MajorOfBusinessCopyWithImpl<$Res, $Val extends MajorOfBusiness>
    implements $MajorOfBusinessCopyWith<$Res> {
  _$MajorOfBusinessCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? display = freezed,
    Object? displayKhmer = freezed,
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
      displayKhmer: freezed == displayKhmer
          ? _value.displayKhmer
          : displayKhmer // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MajorOfBusinessCopyWith<$Res>
    implements $MajorOfBusinessCopyWith<$Res> {
  factory _$$_MajorOfBusinessCopyWith(
          _$_MajorOfBusiness value, $Res Function(_$_MajorOfBusiness) then) =
      __$$_MajorOfBusinessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? display, String? displayKhmer});
}

/// @nodoc
class __$$_MajorOfBusinessCopyWithImpl<$Res>
    extends _$MajorOfBusinessCopyWithImpl<$Res, _$_MajorOfBusiness>
    implements _$$_MajorOfBusinessCopyWith<$Res> {
  __$$_MajorOfBusinessCopyWithImpl(
      _$_MajorOfBusiness _value, $Res Function(_$_MajorOfBusiness) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? display = freezed,
    Object? displayKhmer = freezed,
  }) {
    return _then(_$_MajorOfBusiness(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      display: freezed == display
          ? _value.display
          : display // ignore: cast_nullable_to_non_nullable
              as String?,
      displayKhmer: freezed == displayKhmer
          ? _value.displayKhmer
          : displayKhmer // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MajorOfBusiness implements _MajorOfBusiness {
  _$_MajorOfBusiness({this.id, this.display, this.displayKhmer});

  factory _$_MajorOfBusiness.fromJson(Map<String, dynamic> json) =>
      _$$_MajorOfBusinessFromJson(json);

  @override
  final int? id;
  @override
  final String? display;
  @override
  final String? displayKhmer;

  @override
  String toString() {
    return 'MajorOfBusiness(id: $id, display: $display, displayKhmer: $displayKhmer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MajorOfBusiness &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.display, display) || other.display == display) &&
            (identical(other.displayKhmer, displayKhmer) ||
                other.displayKhmer == displayKhmer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, display, displayKhmer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MajorOfBusinessCopyWith<_$_MajorOfBusiness> get copyWith =>
      __$$_MajorOfBusinessCopyWithImpl<_$_MajorOfBusiness>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MajorOfBusinessToJson(
      this,
    );
  }
}

abstract class _MajorOfBusiness implements MajorOfBusiness {
  factory _MajorOfBusiness(
      {final int? id,
      final String? display,
      final String? displayKhmer}) = _$_MajorOfBusiness;

  factory _MajorOfBusiness.fromJson(Map<String, dynamic> json) =
      _$_MajorOfBusiness.fromJson;

  @override
  int? get id;
  @override
  String? get display;
  @override
  String? get displayKhmer;
  @override
  @JsonKey(ignore: true)
  _$$_MajorOfBusinessCopyWith<_$_MajorOfBusiness> get copyWith =>
      throw _privateConstructorUsedError;
}
