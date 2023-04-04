// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'privilege_data.freezed.dart';
part 'privilege_data.g.dart';

@freezed
class PrivilegeData with _$PrivilegeData {
  factory PrivilegeData({
    int? id,
    String? status,
    @JsonKey(name: 'is_favorite') bool? isFavorite,
    @JsonKey(name: 'point_accepted') bool? pointAccepted,
    @JsonKey(name: 'current_point') int? currentPoint,
    String? slogan,
    @JsonKey(name: 'discount_rate') String? discountRate,
    @JsonKey(name: 'discount_bg_color') String? discountBgColor,
    @JsonKey(name: 'discount_bg_color_end') String? discountBgColorEnd,
    @JsonKey(name: 'shop_name_in_khmer') String? shopNameInKhmer,
    @JsonKey(name: 'shop_name_in_english') String? shopNameInEnglish,
    @JsonKey(name: 'brief_address') String? briefAddress,
    @JsonKey(name: 'full_address') String? fullAddress,
    @JsonKey(name: 'shop_logo') String? shopLogo,
    @JsonKey(name: 'number_shop') int? numberShop,
  }) = _PrivilegeData;

  factory PrivilegeData.fromJson(Map<String, dynamic> json) =>
      _$PrivilegeDataFromJson(json);
}
