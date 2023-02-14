// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'messager_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Message _$$_MessageFromJson(Map<String, dynamic> json) => _$_Message(
      id: json['id'] as int?,
      phone: json['phone'] as String?,
      code: json['code'] as String?,
      codeExpire: json['codeExpire'] as String?,
      retryIn: json['retryIn'] as String?,
      retryTimes: json['retryTimes'] as int?,
      deletedAt: json['deletedAt'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      deletedBy: json['deletedBy'] as String?,
    );

Map<String, dynamic> _$$_MessageToJson(_$_Message instance) =>
    <String, dynamic>{
      'id': instance.id,
      'phone': instance.phone,
      'code': instance.code,
      'codeExpire': instance.codeExpire,
      'retryIn': instance.retryIn,
      'retryTimes': instance.retryTimes,
      'deletedAt': instance.deletedAt,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'deletedBy': instance.deletedBy,
    };
