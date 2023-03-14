// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_company_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DataCompanyProfileModel _$$_DataCompanyProfileModelFromJson(
        Map<String, dynamic> json) =>
    _$_DataCompanyProfileModel(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => CompanyDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_DataCompanyProfileModelToJson(
        _$_DataCompanyProfileModel instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
