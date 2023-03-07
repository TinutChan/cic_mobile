// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'currnet_address_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CurrentAddress _$CurrentAddressFromJson(Map<String, dynamic> json) {
  return _CurrentAddress.fromJson(json);
}

/// @nodoc
mixin _$CurrentAddress {
  City? get city => throw _privateConstructorUsedError;
  City? get district => throw _privateConstructorUsedError;
  City? get commune => throw _privateConstructorUsedError;
  City? get village => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurrentAddressCopyWith<CurrentAddress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentAddressCopyWith<$Res> {
  factory $CurrentAddressCopyWith(
          CurrentAddress value, $Res Function(CurrentAddress) then) =
      _$CurrentAddressCopyWithImpl<$Res, CurrentAddress>;
  @useResult
  $Res call({City? city, City? district, City? commune, City? village});

  $CityCopyWith<$Res>? get city;
  $CityCopyWith<$Res>? get district;
  $CityCopyWith<$Res>? get commune;
  $CityCopyWith<$Res>? get village;
}

/// @nodoc
class _$CurrentAddressCopyWithImpl<$Res, $Val extends CurrentAddress>
    implements $CurrentAddressCopyWith<$Res> {
  _$CurrentAddressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? city = freezed,
    Object? district = freezed,
    Object? commune = freezed,
    Object? village = freezed,
  }) {
    return _then(_value.copyWith(
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as City?,
      district: freezed == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as City?,
      commune: freezed == commune
          ? _value.commune
          : commune // ignore: cast_nullable_to_non_nullable
              as City?,
      village: freezed == village
          ? _value.village
          : village // ignore: cast_nullable_to_non_nullable
              as City?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CityCopyWith<$Res>? get city {
    if (_value.city == null) {
      return null;
    }

    return $CityCopyWith<$Res>(_value.city!, (value) {
      return _then(_value.copyWith(city: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CityCopyWith<$Res>? get district {
    if (_value.district == null) {
      return null;
    }

    return $CityCopyWith<$Res>(_value.district!, (value) {
      return _then(_value.copyWith(district: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CityCopyWith<$Res>? get commune {
    if (_value.commune == null) {
      return null;
    }

    return $CityCopyWith<$Res>(_value.commune!, (value) {
      return _then(_value.copyWith(commune: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CityCopyWith<$Res>? get village {
    if (_value.village == null) {
      return null;
    }

    return $CityCopyWith<$Res>(_value.village!, (value) {
      return _then(_value.copyWith(village: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CurrentAddressCopyWith<$Res>
    implements $CurrentAddressCopyWith<$Res> {
  factory _$$_CurrentAddressCopyWith(
          _$_CurrentAddress value, $Res Function(_$_CurrentAddress) then) =
      __$$_CurrentAddressCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({City? city, City? district, City? commune, City? village});

  @override
  $CityCopyWith<$Res>? get city;
  @override
  $CityCopyWith<$Res>? get district;
  @override
  $CityCopyWith<$Res>? get commune;
  @override
  $CityCopyWith<$Res>? get village;
}

/// @nodoc
class __$$_CurrentAddressCopyWithImpl<$Res>
    extends _$CurrentAddressCopyWithImpl<$Res, _$_CurrentAddress>
    implements _$$_CurrentAddressCopyWith<$Res> {
  __$$_CurrentAddressCopyWithImpl(
      _$_CurrentAddress _value, $Res Function(_$_CurrentAddress) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? city = freezed,
    Object? district = freezed,
    Object? commune = freezed,
    Object? village = freezed,
  }) {
    return _then(_$_CurrentAddress(
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as City?,
      district: freezed == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as City?,
      commune: freezed == commune
          ? _value.commune
          : commune // ignore: cast_nullable_to_non_nullable
              as City?,
      village: freezed == village
          ? _value.village
          : village // ignore: cast_nullable_to_non_nullable
              as City?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CurrentAddress implements _CurrentAddress {
  _$_CurrentAddress({this.city, this.district, this.commune, this.village});

  factory _$_CurrentAddress.fromJson(Map<String, dynamic> json) =>
      _$$_CurrentAddressFromJson(json);

  @override
  final City? city;
  @override
  final City? district;
  @override
  final City? commune;
  @override
  final City? village;

  @override
  String toString() {
    return 'CurrentAddress(city: $city, district: $district, commune: $commune, village: $village)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CurrentAddress &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.district, district) ||
                other.district == district) &&
            (identical(other.commune, commune) || other.commune == commune) &&
            (identical(other.village, village) || other.village == village));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, city, district, commune, village);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CurrentAddressCopyWith<_$_CurrentAddress> get copyWith =>
      __$$_CurrentAddressCopyWithImpl<_$_CurrentAddress>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CurrentAddressToJson(
      this,
    );
  }
}

abstract class _CurrentAddress implements CurrentAddress {
  factory _CurrentAddress(
      {final City? city,
      final City? district,
      final City? commune,
      final City? village}) = _$_CurrentAddress;

  factory _CurrentAddress.fromJson(Map<String, dynamic> json) =
      _$_CurrentAddress.fromJson;

  @override
  City? get city;
  @override
  City? get district;
  @override
  City? get commune;
  @override
  City? get village;
  @override
  @JsonKey(ignore: true)
  _$$_CurrentAddressCopyWith<_$_CurrentAddress> get copyWith =>
      throw _privateConstructorUsedError;
}
