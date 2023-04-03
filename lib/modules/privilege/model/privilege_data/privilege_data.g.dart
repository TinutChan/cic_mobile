// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'privilege_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PrivilegeData _$$_PrivilegeDataFromJson(Map<String, dynamic> json) =>
    _$_PrivilegeData(
      id: json['id'] as int?,
      status: json['status'] as String?,
      isFavorite: json['isFavorite'] as bool?,
      pointAccepted: json['pointAccepted'] as bool?,
      currentPoint: json['currentPoint'] as int?,
      slogan: json['slogan'] as String?,
      discountRate: json['discountRate'] as String?,
      discountBgColor: json['discountBgColor'] as String?,
      discountBgColorEnd: json['discountBgColorEnd'] as String?,
      shopNameInKhmer: json['shopNameInKhmer'] as String?,
      shopNameInEnglish: json['shopNameInEnglish'] as String?,
      briefAddress: json['briefAddress'] as String?,
      fullAddress: json['fullAddress'] as String?,
      shopLogo: json['shopLogo'] as String?,
      numberShop: json['numberShop'] as int?,
    );

Map<String, dynamic> _$$_PrivilegeDataToJson(_$_PrivilegeData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status': instance.status,
      'isFavorite': instance.isFavorite,
      'pointAccepted': instance.pointAccepted,
      'currentPoint': instance.currentPoint,
      'slogan': instance.slogan,
      'discountRate': instance.discountRate,
      'discountBgColor': instance.discountBgColor,
      'discountBgColorEnd': instance.discountBgColorEnd,
      'shopNameInKhmer': instance.shopNameInKhmer,
      'shopNameInEnglish': instance.shopNameInEnglish,
      'briefAddress': instance.briefAddress,
      'fullAddress': instance.fullAddress,
      'shopLogo': instance.shopLogo,
      'numberShop': instance.numberShop,
    };
