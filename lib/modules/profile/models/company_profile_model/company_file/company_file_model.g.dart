// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_file_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CompanyFiles _$$_CompanyFilesFromJson(Map<String, dynamic> json) =>
    _$_CompanyFiles(
      companyPatentDoc: (json['companyPatentDoc'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      companyLicenceDoc: (json['companyLicenceDoc'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      companyMoCCertificate: (json['companyMoCCertificate'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_CompanyFilesToJson(_$_CompanyFiles instance) =>
    <String, dynamic>{
      'companyPatentDoc': instance.companyPatentDoc,
      'companyLicenceDoc': instance.companyLicenceDoc,
      'companyMoCCertificate': instance.companyMoCCertificate,
    };
