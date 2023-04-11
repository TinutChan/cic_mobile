// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'location_address_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LocationAddressModel _$$_LocationAddressModelFromJson(
        Map<String, dynamic> json) =>
    _$_LocationAddressModel(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => LocationAdressData.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: (json['meta'] as List<dynamic>?)
          ?.map((e) => LocationAddressMeta.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_LocationAddressModelToJson(
        _$_LocationAddressModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'meta': instance.meta,
    };
