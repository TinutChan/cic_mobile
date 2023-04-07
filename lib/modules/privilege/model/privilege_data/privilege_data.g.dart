// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'privilege_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PrivilegeData _$$_PrivilegeDataFromJson(Map<String, dynamic> json) =>
    _$_PrivilegeData(
      id: json['id'] as int?,
      status: json['status'] as String?,
      isFavorite: json['is_favorite'] as bool?,
      pointAccepted: json['point_accepted'] as bool?,
      currentPoint: json['current_point'] as int?,
      slogan: json['slogan'] as String?,
      discountRate: json['discount_rate'] as String?,
      discountBgColor: json['discount_bg_color'] as String?,
      discountBgColorEnd: json['discount_bg_color_end'] as String?,
      shopNameInKhmer: json['shop_name_in_khmer'] as String?,
      shopNameInEnglish: json['shop_name_in_english'] as String?,
      briefAddress: json['brief_address'] as String?,
      fullAddress: json['full_address'] as String?,
      shopLogo: json['shop_logo'] as String?,
      numberShop: json['number_shop'] as int?,
    );

Map<String, dynamic> _$$_PrivilegeDataToJson(_$_PrivilegeData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status': instance.status,
      'is_favorite': instance.isFavorite,
      'point_accepted': instance.pointAccepted,
      'current_point': instance.currentPoint,
      'slogan': instance.slogan,
      'discount_rate': instance.discountRate,
      'discount_bg_color': instance.discountBgColor,
      'discount_bg_color_end': instance.discountBgColorEnd,
      'shop_name_in_khmer': instance.shopNameInKhmer,
      'shop_name_in_english': instance.shopNameInEnglish,
      'brief_address': instance.briefAddress,
      'full_address': instance.fullAddress,
      'shop_logo': instance.shopLogo,
      'number_shop': instance.numberShop,
    };
