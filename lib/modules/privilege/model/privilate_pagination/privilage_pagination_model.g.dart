// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'privilage_pagination_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PrivilagePagination _$$_PrivilagePaginationFromJson(
        Map<String, dynamic> json) =>
    _$_PrivilagePagination(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => PrivilegeData.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: json['meta'] == null
          ? null
          : PrivilageMetaModel.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PrivilagePaginationToJson(
        _$_PrivilagePagination instance) =>
    <String, dynamic>{
      'data': instance.data,
      'meta': instance.meta,
    };
