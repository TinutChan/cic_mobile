// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_company_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DataCompanyProfileModel _$DataCompanyProfileModelFromJson(
    Map<String, dynamic> json) {
  return _DataCompanyProfileModel.fromJson(json);
}

/// @nodoc
mixin _$DataCompanyProfileModel {
  List<CompanyDataModel>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCompanyProfileModelCopyWith<DataCompanyProfileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCompanyProfileModelCopyWith<$Res> {
  factory $DataCompanyProfileModelCopyWith(DataCompanyProfileModel value,
          $Res Function(DataCompanyProfileModel) then) =
      _$DataCompanyProfileModelCopyWithImpl<$Res, DataCompanyProfileModel>;
  @useResult
  $Res call({List<CompanyDataModel>? data});
}

/// @nodoc
class _$DataCompanyProfileModelCopyWithImpl<$Res,
        $Val extends DataCompanyProfileModel>
    implements $DataCompanyProfileModelCopyWith<$Res> {
  _$DataCompanyProfileModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CompanyDataModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DataCompanyProfileModelCopyWith<$Res>
    implements $DataCompanyProfileModelCopyWith<$Res> {
  factory _$$_DataCompanyProfileModelCopyWith(_$_DataCompanyProfileModel value,
          $Res Function(_$_DataCompanyProfileModel) then) =
      __$$_DataCompanyProfileModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CompanyDataModel>? data});
}

/// @nodoc
class __$$_DataCompanyProfileModelCopyWithImpl<$Res>
    extends _$DataCompanyProfileModelCopyWithImpl<$Res,
        _$_DataCompanyProfileModel>
    implements _$$_DataCompanyProfileModelCopyWith<$Res> {
  __$$_DataCompanyProfileModelCopyWithImpl(_$_DataCompanyProfileModel _value,
      $Res Function(_$_DataCompanyProfileModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_DataCompanyProfileModel(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CompanyDataModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DataCompanyProfileModel implements _DataCompanyProfileModel {
  _$_DataCompanyProfileModel({final List<CompanyDataModel>? data})
      : _data = data;

  factory _$_DataCompanyProfileModel.fromJson(Map<String, dynamic> json) =>
      _$$_DataCompanyProfileModelFromJson(json);

  final List<CompanyDataModel>? _data;
  @override
  List<CompanyDataModel>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DataCompanyProfileModel(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataCompanyProfileModel &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataCompanyProfileModelCopyWith<_$_DataCompanyProfileModel>
      get copyWith =>
          __$$_DataCompanyProfileModelCopyWithImpl<_$_DataCompanyProfileModel>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataCompanyProfileModelToJson(
      this,
    );
  }
}

abstract class _DataCompanyProfileModel implements DataCompanyProfileModel {
  factory _DataCompanyProfileModel({final List<CompanyDataModel>? data}) =
      _$_DataCompanyProfileModel;

  factory _DataCompanyProfileModel.fromJson(Map<String, dynamic> json) =
      _$_DataCompanyProfileModel.fromJson;

  @override
  List<CompanyDataModel>? get data;
  @override
  @JsonKey(ignore: true)
  _$$_DataCompanyProfileModelCopyWith<_$_DataCompanyProfileModel>
      get copyWith => throw _privateConstructorUsedError;
}
