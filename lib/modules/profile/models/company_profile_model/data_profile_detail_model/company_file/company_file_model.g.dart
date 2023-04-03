// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_file_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CompanyFiles _$$_CompanyFilesFromJson(Map<String, dynamic> json) =>
    _$_CompanyFiles(
      companyPatentDoc: (json['company_patent_doc'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      companyLicenceDoc: (json['company_licence_doc'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      companyMoCCertificate: (json['company_MoC_certificate'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_CompanyFilesToJson(_$_CompanyFiles instance) =>
    <String, dynamic>{
      'company_patent_doc': instance.companyPatentDoc,
      'company_licence_doc': instance.companyLicenceDoc,
      'company_MoC_certificate': instance.companyMoCCertificate,
    };
