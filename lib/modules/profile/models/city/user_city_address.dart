import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_city_address.freezed.dart';
part 'user_city_address.g.dart';

@freezed
class City with _$City {
  factory City({
    String? code,
    String? name,
  }) = _City;

  factory City.fromJson(Map<String, dynamic> json) => _$CityFromJson(json);
}
