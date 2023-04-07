// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_address_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LocationAddressModel _$LocationAddressModelFromJson(Map<String, dynamic> json) {
  return _LocationAddressModel.fromJson(json);
}

/// @nodoc
mixin _$LocationAddressModel {
  @JsonKey(name: 'data')
  List<LocationAdressData>? get data => throw _privateConstructorUsedError;
  @JsonKey(name: 'meta')
  List<LocationAddressMeta>? get meta => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationAddressModelCopyWith<LocationAddressModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationAddressModelCopyWith<$Res> {
  factory $LocationAddressModelCopyWith(LocationAddressModel value,
          $Res Function(LocationAddressModel) then) =
      _$LocationAddressModelCopyWithImpl<$Res, LocationAddressModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'data') List<LocationAdressData>? data,
      @JsonKey(name: 'meta') List<LocationAddressMeta>? meta});
}

/// @nodoc
class _$LocationAddressModelCopyWithImpl<$Res,
        $Val extends LocationAddressModel>
    implements $LocationAddressModelCopyWith<$Res> {
  _$LocationAddressModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? meta = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<LocationAdressData>?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as List<LocationAddressMeta>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LocationAddressModelCopyWith<$Res>
    implements $LocationAddressModelCopyWith<$Res> {
  factory _$$_LocationAddressModelCopyWith(_$_LocationAddressModel value,
          $Res Function(_$_LocationAddressModel) then) =
      __$$_LocationAddressModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'data') List<LocationAdressData>? data,
      @JsonKey(name: 'meta') List<LocationAddressMeta>? meta});
}

/// @nodoc
class __$$_LocationAddressModelCopyWithImpl<$Res>
    extends _$LocationAddressModelCopyWithImpl<$Res, _$_LocationAddressModel>
    implements _$$_LocationAddressModelCopyWith<$Res> {
  __$$_LocationAddressModelCopyWithImpl(_$_LocationAddressModel _value,
      $Res Function(_$_LocationAddressModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? meta = freezed,
  }) {
    return _then(_$_LocationAddressModel(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<LocationAdressData>?,
      meta: freezed == meta
          ? _value._meta
          : meta // ignore: cast_nullable_to_non_nullable
              as List<LocationAddressMeta>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LocationAddressModel implements _LocationAddressModel {
  _$_LocationAddressModel(
      {@JsonKey(name: 'data') final List<LocationAdressData>? data,
      @JsonKey(name: 'meta') final List<LocationAddressMeta>? meta})
      : _data = data,
        _meta = meta;

  factory _$_LocationAddressModel.fromJson(Map<String, dynamic> json) =>
      _$$_LocationAddressModelFromJson(json);

  final List<LocationAdressData>? _data;
  @override
  @JsonKey(name: 'data')
  List<LocationAdressData>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<LocationAddressMeta>? _meta;
  @override
  @JsonKey(name: 'meta')
  List<LocationAddressMeta>? get meta {
    final value = _meta;
    if (value == null) return null;
    if (_meta is EqualUnmodifiableListView) return _meta;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'LocationAddressModel(data: $data, meta: $meta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LocationAddressModel &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            const DeepCollectionEquality().equals(other._meta, _meta));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_data),
      const DeepCollectionEquality().hash(_meta));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LocationAddressModelCopyWith<_$_LocationAddressModel> get copyWith =>
      __$$_LocationAddressModelCopyWithImpl<_$_LocationAddressModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LocationAddressModelToJson(
      this,
    );
  }
}

abstract class _LocationAddressModel implements LocationAddressModel {
  factory _LocationAddressModel(
          {@JsonKey(name: 'data') final List<LocationAdressData>? data,
          @JsonKey(name: 'meta') final List<LocationAddressMeta>? meta}) =
      _$_LocationAddressModel;

  factory _LocationAddressModel.fromJson(Map<String, dynamic> json) =
      _$_LocationAddressModel.fromJson;

  @override
  @JsonKey(name: 'data')
  List<LocationAdressData>? get data;
  @override
  @JsonKey(name: 'meta')
  List<LocationAddressMeta>? get meta;
  @override
  @JsonKey(ignore: true)
  _$$_LocationAddressModelCopyWith<_$_LocationAddressModel> get copyWith =>
      throw _privateConstructorUsedError;
}
