// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'companies_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Companies _$$_CompaniesFromJson(Map<String, dynamic> json) => _$_Companies(
      name: json['name'] as String?,
      logo: json['logo'] as String?,
      website: json['website'] as String?,
      founded: json['founded'] as int?,
      size: json['size'] as String?,
      address: json['address'] as String?,
    );

Map<String, dynamic> _$$_CompaniesToJson(_$_Companies instance) =>
    <String, dynamic>{
      'name': instance.name,
      'logo': instance.logo,
      'website': instance.website,
      'founded': instance.founded,
      'size': instance.size,
      'address': instance.address,
    };
