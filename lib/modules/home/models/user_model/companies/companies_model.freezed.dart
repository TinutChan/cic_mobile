// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'companies_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Companies _$CompaniesFromJson(Map<String, dynamic> json) {
  return _Companies.fromJson(json);
}

/// @nodoc
mixin _$Companies {
  String? get name => throw _privateConstructorUsedError;
  String? get logo => throw _privateConstructorUsedError;
  String? get website => throw _privateConstructorUsedError;
  int? get founded => throw _privateConstructorUsedError;
  String? get size => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CompaniesCopyWith<Companies> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompaniesCopyWith<$Res> {
  factory $CompaniesCopyWith(Companies value, $Res Function(Companies) then) =
      _$CompaniesCopyWithImpl<$Res, Companies>;
  @useResult
  $Res call(
      {String? name,
      String? logo,
      String? website,
      int? founded,
      String? size,
      String? address});
}

/// @nodoc
class _$CompaniesCopyWithImpl<$Res, $Val extends Companies>
    implements $CompaniesCopyWith<$Res> {
  _$CompaniesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? logo = freezed,
    Object? website = freezed,
    Object? founded = freezed,
    Object? size = freezed,
    Object? address = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      logo: freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
      website: freezed == website
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String?,
      founded: freezed == founded
          ? _value.founded
          : founded // ignore: cast_nullable_to_non_nullable
              as int?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CompaniesCopyWith<$Res> implements $CompaniesCopyWith<$Res> {
  factory _$$_CompaniesCopyWith(
          _$_Companies value, $Res Function(_$_Companies) then) =
      __$$_CompaniesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? logo,
      String? website,
      int? founded,
      String? size,
      String? address});
}

/// @nodoc
class __$$_CompaniesCopyWithImpl<$Res>
    extends _$CompaniesCopyWithImpl<$Res, _$_Companies>
    implements _$$_CompaniesCopyWith<$Res> {
  __$$_CompaniesCopyWithImpl(
      _$_Companies _value, $Res Function(_$_Companies) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? logo = freezed,
    Object? website = freezed,
    Object? founded = freezed,
    Object? size = freezed,
    Object? address = freezed,
  }) {
    return _then(_$_Companies(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      logo: freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
      website: freezed == website
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String?,
      founded: freezed == founded
          ? _value.founded
          : founded // ignore: cast_nullable_to_non_nullable
              as int?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Companies implements _Companies {
  _$_Companies(
      {this.name,
      this.logo,
      this.website,
      this.founded,
      this.size,
      this.address});

  factory _$_Companies.fromJson(Map<String, dynamic> json) =>
      _$$_CompaniesFromJson(json);

  @override
  final String? name;
  @override
  final String? logo;
  @override
  final String? website;
  @override
  final int? founded;
  @override
  final String? size;
  @override
  final String? address;

  @override
  String toString() {
    return 'Companies(name: $name, logo: $logo, website: $website, founded: $founded, size: $size, address: $address)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Companies &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.logo, logo) || other.logo == logo) &&
            (identical(other.website, website) || other.website == website) &&
            (identical(other.founded, founded) || other.founded == founded) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.address, address) || other.address == address));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, logo, website, founded, size, address);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CompaniesCopyWith<_$_Companies> get copyWith =>
      __$$_CompaniesCopyWithImpl<_$_Companies>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CompaniesToJson(
      this,
    );
  }
}

abstract class _Companies implements Companies {
  factory _Companies(
      {final String? name,
      final String? logo,
      final String? website,
      final int? founded,
      final String? size,
      final String? address}) = _$_Companies;

  factory _Companies.fromJson(Map<String, dynamic> json) =
      _$_Companies.fromJson;

  @override
  String? get name;
  @override
  String? get logo;
  @override
  String? get website;
  @override
  int? get founded;
  @override
  String? get size;
  @override
  String? get address;
  @override
  @JsonKey(ignore: true)
  _$$_CompaniesCopyWith<_$_Companies> get copyWith =>
      throw _privateConstructorUsedError;
}
