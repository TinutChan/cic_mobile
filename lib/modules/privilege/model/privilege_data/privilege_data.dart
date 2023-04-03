import 'package:freezed_annotation/freezed_annotation.dart';

part 'privilege_data.freezed.dart';
part 'privilege_data.g.dart';

@freezed
class PrivilegeData with _$PrivilegeData {
  factory PrivilegeData({
    int? id,
    String? status,
    bool? isFavorite,
    bool? pointAccepted,
    int? currentPoint,
    String? slogan,
    String? discountRate,
    String? discountBgColor,
    String? discountBgColorEnd,
    String? shopNameInKhmer,
    String? shopNameInEnglish,
    String? briefAddress,
    String? fullAddress,
    String? shopLogo,
    int? numberShop,
  }) = _PrivilegeData;

  factory PrivilegeData.fromJson(Map<String, dynamic> json) =>
      _$PrivilegeDataFromJson(json);
}
