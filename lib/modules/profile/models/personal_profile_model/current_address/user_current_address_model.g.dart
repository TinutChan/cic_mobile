// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'user_current_address_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CurrentAddress _$$_CurrentAddressFromJson(Map<String, dynamic> json) =>
    _$_CurrentAddress(
      city: json['city'] == null
          ? null
          : City.fromJson(json['city'] as Map<String, dynamic>),
      district: json['district'] == null
          ? null
          : City.fromJson(json['district'] as Map<String, dynamic>),
      commune: json['commune'] == null
          ? null
          : City.fromJson(json['commune'] as Map<String, dynamic>),
      village: json['village'] == null
          ? null
          : City.fromJson(json['village'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CurrentAddressToJson(_$_CurrentAddress instance) =>
    <String, dynamic>{
      'city': instance.city,
      'district': instance.district,
      'commune': instance.commune,
      'village': instance.village,
    };
