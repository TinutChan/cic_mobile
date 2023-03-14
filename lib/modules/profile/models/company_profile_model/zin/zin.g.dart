// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'zin.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Zin _$$_ZinFromJson(Map<String, dynamic> json) => _$_Zin(
      companyDataModel: (json['companyDataModel'] as List<dynamic>?)
          ?.map((e) => CompanyDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ZinToJson(_$_Zin instance) => <String, dynamic>{
      'companyDataModel': instance.companyDataModel,
    };
