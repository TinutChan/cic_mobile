// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'zin.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Zin _$ZinFromJson(Map<String, dynamic> json) {
  return _Zin.fromJson(json);
}

/// @nodoc
mixin _$Zin {
  List<CompanyDataModel>? get companyDataModel =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ZinCopyWith<Zin> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ZinCopyWith<$Res> {
  factory $ZinCopyWith(Zin value, $Res Function(Zin) then) =
      _$ZinCopyWithImpl<$Res, Zin>;
  @useResult
  $Res call({List<CompanyDataModel>? companyDataModel});
}

/// @nodoc
class _$ZinCopyWithImpl<$Res, $Val extends Zin> implements $ZinCopyWith<$Res> {
  _$ZinCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? companyDataModel = freezed,
  }) {
    return _then(_value.copyWith(
      companyDataModel: freezed == companyDataModel
          ? _value.companyDataModel
          : companyDataModel // ignore: cast_nullable_to_non_nullable
              as List<CompanyDataModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ZinCopyWith<$Res> implements $ZinCopyWith<$Res> {
  factory _$$_ZinCopyWith(_$_Zin value, $Res Function(_$_Zin) then) =
      __$$_ZinCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CompanyDataModel>? companyDataModel});
}

/// @nodoc
class __$$_ZinCopyWithImpl<$Res> extends _$ZinCopyWithImpl<$Res, _$_Zin>
    implements _$$_ZinCopyWith<$Res> {
  __$$_ZinCopyWithImpl(_$_Zin _value, $Res Function(_$_Zin) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? companyDataModel = freezed,
  }) {
    return _then(_$_Zin(
      companyDataModel: freezed == companyDataModel
          ? _value._companyDataModel
          : companyDataModel // ignore: cast_nullable_to_non_nullable
              as List<CompanyDataModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Zin implements _Zin {
  _$_Zin({final List<CompanyDataModel>? companyDataModel})
      : _companyDataModel = companyDataModel;

  factory _$_Zin.fromJson(Map<String, dynamic> json) => _$$_ZinFromJson(json);

  final List<CompanyDataModel>? _companyDataModel;
  @override
  List<CompanyDataModel>? get companyDataModel {
    final value = _companyDataModel;
    if (value == null) return null;
    if (_companyDataModel is EqualUnmodifiableListView)
      return _companyDataModel;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Zin(companyDataModel: $companyDataModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Zin &&
            const DeepCollectionEquality()
                .equals(other._companyDataModel, _companyDataModel));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_companyDataModel));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ZinCopyWith<_$_Zin> get copyWith =>
      __$$_ZinCopyWithImpl<_$_Zin>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ZinToJson(
      this,
    );
  }
}

abstract class _Zin implements Zin {
  factory _Zin({final List<CompanyDataModel>? companyDataModel}) = _$_Zin;

  factory _Zin.fromJson(Map<String, dynamic> json) = _$_Zin.fromJson;

  @override
  List<CompanyDataModel>? get companyDataModel;
  @override
  @JsonKey(ignore: true)
  _$$_ZinCopyWith<_$_Zin> get copyWith => throw _privateConstructorUsedError;
}
