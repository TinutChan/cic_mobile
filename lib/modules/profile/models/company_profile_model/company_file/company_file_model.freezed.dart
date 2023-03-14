// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'company_file_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CompanyFiles _$CompanyFilesFromJson(Map<String, dynamic> json) {
  return _CompanyFiles.fromJson(json);
}

/// @nodoc
mixin _$CompanyFiles {
  @JsonKey(name: 'company_patent_doc')
  List<String>? get companyPatentDoc => throw _privateConstructorUsedError;
  @JsonKey(name: 'company_licence_doc')
  List<String>? get companyLicenceDoc => throw _privateConstructorUsedError;
  @JsonKey(name: 'company_MoC_certificate')
  List<String>? get companyMoCCertificate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CompanyFilesCopyWith<CompanyFiles> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompanyFilesCopyWith<$Res> {
  factory $CompanyFilesCopyWith(
          CompanyFiles value, $Res Function(CompanyFiles) then) =
      _$CompanyFilesCopyWithImpl<$Res, CompanyFiles>;
  @useResult
  $Res call(
      {@JsonKey(name: 'company_patent_doc')
          List<String>? companyPatentDoc,
      @JsonKey(name: 'company_licence_doc')
          List<String>? companyLicenceDoc,
      @JsonKey(name: 'company_MoC_certificate')
          List<String>? companyMoCCertificate});
}

/// @nodoc
class _$CompanyFilesCopyWithImpl<$Res, $Val extends CompanyFiles>
    implements $CompanyFilesCopyWith<$Res> {
  _$CompanyFilesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? companyPatentDoc = freezed,
    Object? companyLicenceDoc = freezed,
    Object? companyMoCCertificate = freezed,
  }) {
    return _then(_value.copyWith(
      companyPatentDoc: freezed == companyPatentDoc
          ? _value.companyPatentDoc
          : companyPatentDoc // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      companyLicenceDoc: freezed == companyLicenceDoc
          ? _value.companyLicenceDoc
          : companyLicenceDoc // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      companyMoCCertificate: freezed == companyMoCCertificate
          ? _value.companyMoCCertificate
          : companyMoCCertificate // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CompanyFilesCopyWith<$Res>
    implements $CompanyFilesCopyWith<$Res> {
  factory _$$_CompanyFilesCopyWith(
          _$_CompanyFiles value, $Res Function(_$_CompanyFiles) then) =
      __$$_CompanyFilesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'company_patent_doc')
          List<String>? companyPatentDoc,
      @JsonKey(name: 'company_licence_doc')
          List<String>? companyLicenceDoc,
      @JsonKey(name: 'company_MoC_certificate')
          List<String>? companyMoCCertificate});
}

/// @nodoc
class __$$_CompanyFilesCopyWithImpl<$Res>
    extends _$CompanyFilesCopyWithImpl<$Res, _$_CompanyFiles>
    implements _$$_CompanyFilesCopyWith<$Res> {
  __$$_CompanyFilesCopyWithImpl(
      _$_CompanyFiles _value, $Res Function(_$_CompanyFiles) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? companyPatentDoc = freezed,
    Object? companyLicenceDoc = freezed,
    Object? companyMoCCertificate = freezed,
  }) {
    return _then(_$_CompanyFiles(
      companyPatentDoc: freezed == companyPatentDoc
          ? _value._companyPatentDoc
          : companyPatentDoc // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      companyLicenceDoc: freezed == companyLicenceDoc
          ? _value._companyLicenceDoc
          : companyLicenceDoc // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      companyMoCCertificate: freezed == companyMoCCertificate
          ? _value._companyMoCCertificate
          : companyMoCCertificate // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CompanyFiles implements _CompanyFiles {
  _$_CompanyFiles(
      {@JsonKey(name: 'company_patent_doc')
          final List<String>? companyPatentDoc,
      @JsonKey(name: 'company_licence_doc')
          final List<String>? companyLicenceDoc,
      @JsonKey(name: 'company_MoC_certificate')
          final List<String>? companyMoCCertificate})
      : _companyPatentDoc = companyPatentDoc,
        _companyLicenceDoc = companyLicenceDoc,
        _companyMoCCertificate = companyMoCCertificate;

  factory _$_CompanyFiles.fromJson(Map<String, dynamic> json) =>
      _$$_CompanyFilesFromJson(json);

  final List<String>? _companyPatentDoc;
  @override
  @JsonKey(name: 'company_patent_doc')
  List<String>? get companyPatentDoc {
    final value = _companyPatentDoc;
    if (value == null) return null;
    if (_companyPatentDoc is EqualUnmodifiableListView)
      return _companyPatentDoc;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _companyLicenceDoc;
  @override
  @JsonKey(name: 'company_licence_doc')
  List<String>? get companyLicenceDoc {
    final value = _companyLicenceDoc;
    if (value == null) return null;
    if (_companyLicenceDoc is EqualUnmodifiableListView)
      return _companyLicenceDoc;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _companyMoCCertificate;
  @override
  @JsonKey(name: 'company_MoC_certificate')
  List<String>? get companyMoCCertificate {
    final value = _companyMoCCertificate;
    if (value == null) return null;
    if (_companyMoCCertificate is EqualUnmodifiableListView)
      return _companyMoCCertificate;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CompanyFiles(companyPatentDoc: $companyPatentDoc, companyLicenceDoc: $companyLicenceDoc, companyMoCCertificate: $companyMoCCertificate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CompanyFiles &&
            const DeepCollectionEquality()
                .equals(other._companyPatentDoc, _companyPatentDoc) &&
            const DeepCollectionEquality()
                .equals(other._companyLicenceDoc, _companyLicenceDoc) &&
            const DeepCollectionEquality()
                .equals(other._companyMoCCertificate, _companyMoCCertificate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_companyPatentDoc),
      const DeepCollectionEquality().hash(_companyLicenceDoc),
      const DeepCollectionEquality().hash(_companyMoCCertificate));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CompanyFilesCopyWith<_$_CompanyFiles> get copyWith =>
      __$$_CompanyFilesCopyWithImpl<_$_CompanyFiles>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CompanyFilesToJson(
      this,
    );
  }
}

abstract class _CompanyFiles implements CompanyFiles {
  factory _CompanyFiles(
      {@JsonKey(name: 'company_patent_doc')
          final List<String>? companyPatentDoc,
      @JsonKey(name: 'company_licence_doc')
          final List<String>? companyLicenceDoc,
      @JsonKey(name: 'company_MoC_certificate')
          final List<String>? companyMoCCertificate}) = _$_CompanyFiles;

  factory _CompanyFiles.fromJson(Map<String, dynamic> json) =
      _$_CompanyFiles.fromJson;

  @override
  @JsonKey(name: 'company_patent_doc')
  List<String>? get companyPatentDoc;
  @override
  @JsonKey(name: 'company_licence_doc')
  List<String>? get companyLicenceDoc;
  @override
  @JsonKey(name: 'company_MoC_certificate')
  List<String>? get companyMoCCertificate;
  @override
  @JsonKey(ignore: true)
  _$$_CompanyFilesCopyWith<_$_CompanyFiles> get copyWith =>
      throw _privateConstructorUsedError;
}
