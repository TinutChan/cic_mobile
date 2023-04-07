import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_address_data_model.freezed.dart';
part 'location_address_data_model.g.dart';

@freezed
class LocationAdressData with _$LocationAdressData {
  factory LocationAdressData({
    String? code,
    @JsonKey(name: 'name_kh') String? nameKh,
    @JsonKey(name: 'name_en') String? nameEn,
  }) = _LocationAdressData;

  factory LocationAdressData.fromJson(Map<String, dynamic> json) =>
      _$LocationAdressDataFromJson(json);
}
