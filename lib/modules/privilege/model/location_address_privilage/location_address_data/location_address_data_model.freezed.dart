// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_address_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LocationAdressData _$LocationAdressDataFromJson(Map<String, dynamic> json) {
  return _LocationAdressData.fromJson(json);
}

/// @nodoc
mixin _$LocationAdressData {
  String? get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'name_kh')
  String? get nameKh => throw _privateConstructorUsedError;
  @JsonKey(name: 'name_en')
  String? get nameEn => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationAdressDataCopyWith<LocationAdressData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationAdressDataCopyWith<$Res> {
  factory $LocationAdressDataCopyWith(
          LocationAdressData value, $Res Function(LocationAdressData) then) =
      _$LocationAdressDataCopyWithImpl<$Res, LocationAdressData>;
  @useResult
  $Res call(
      {String? code,
      @JsonKey(name: 'name_kh') String? nameKh,
      @JsonKey(name: 'name_en') String? nameEn});
}

/// @nodoc
class _$LocationAdressDataCopyWithImpl<$Res, $Val extends LocationAdressData>
    implements $LocationAdressDataCopyWith<$Res> {
  _$LocationAdressDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? nameKh = freezed,
    Object? nameEn = freezed,
  }) {
    return _then(_value.copyWith(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      nameKh: freezed == nameKh
          ? _value.nameKh
          : nameKh // ignore: cast_nullable_to_non_nullable
              as String?,
      nameEn: freezed == nameEn
          ? _value.nameEn
          : nameEn // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LocationAdressDataCopyWith<$Res>
    implements $LocationAdressDataCopyWith<$Res> {
  factory _$$_LocationAdressDataCopyWith(_$_LocationAdressData value,
          $Res Function(_$_LocationAdressData) then) =
      __$$_LocationAdressDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? code,
      @JsonKey(name: 'name_kh') String? nameKh,
      @JsonKey(name: 'name_en') String? nameEn});
}

/// @nodoc
class __$$_LocationAdressDataCopyWithImpl<$Res>
    extends _$LocationAdressDataCopyWithImpl<$Res, _$_LocationAdressData>
    implements _$$_LocationAdressDataCopyWith<$Res> {
  __$$_LocationAdressDataCopyWithImpl(
      _$_LocationAdressData _value, $Res Function(_$_LocationAdressData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? nameKh = freezed,
    Object? nameEn = freezed,
  }) {
    return _then(_$_LocationAdressData(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      nameKh: freezed == nameKh
          ? _value.nameKh
          : nameKh // ignore: cast_nullable_to_non_nullable
              as String?,
      nameEn: freezed == nameEn
          ? _value.nameEn
          : nameEn // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LocationAdressData implements _LocationAdressData {
  _$_LocationAdressData(
      {this.code,
      @JsonKey(name: 'name_kh') this.nameKh,
      @JsonKey(name: 'name_en') this.nameEn});

  factory _$_LocationAdressData.fromJson(Map<String, dynamic> json) =>
      _$$_LocationAdressDataFromJson(json);

  @override
  final String? code;
  @override
  @JsonKey(name: 'name_kh')
  final String? nameKh;
  @override
  @JsonKey(name: 'name_en')
  final String? nameEn;

  @override
  String toString() {
    return 'LocationAdressData(code: $code, nameKh: $nameKh, nameEn: $nameEn)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LocationAdressData &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.nameKh, nameKh) || other.nameKh == nameKh) &&
            (identical(other.nameEn, nameEn) || other.nameEn == nameEn));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, nameKh, nameEn);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LocationAdressDataCopyWith<_$_LocationAdressData> get copyWith =>
      __$$_LocationAdressDataCopyWithImpl<_$_LocationAdressData>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LocationAdressDataToJson(
      this,
    );
  }
}

abstract class _LocationAdressData implements LocationAdressData {
  factory _LocationAdressData(
      {final String? code,
      @JsonKey(name: 'name_kh') final String? nameKh,
      @JsonKey(name: 'name_en') final String? nameEn}) = _$_LocationAdressData;

  factory _LocationAdressData.fromJson(Map<String, dynamic> json) =
      _$_LocationAdressData.fromJson;

  @override
  String? get code;
  @override
  @JsonKey(name: 'name_kh')
  String? get nameKh;
  @override
  @JsonKey(name: 'name_en')
  String? get nameEn;
  @override
  @JsonKey(ignore: true)
  _$$_LocationAdressDataCopyWith<_$_LocationAdressData> get copyWith =>
      throw _privateConstructorUsedError;
}
