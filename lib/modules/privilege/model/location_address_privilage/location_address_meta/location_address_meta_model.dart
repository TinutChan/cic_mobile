// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_address_meta_model.freezed.dart';
part 'location_address_meta_model.g.dart';

@freezed
class LocationAddressMeta with _$LocationAddressMeta {
  factory LocationAddressMeta({
    @JsonKey(name: 'current_page') int? currentPage,
    int? from,
    @JsonKey(name: 'last_page') int? lastPage,
    String? path,
    @JsonKey(name: 'per_page') int? perPage,
    int? to,
    int? total,
  }) = _LocationAddressMeta;

  factory LocationAddressMeta.fromJson(Map<String, dynamic> json) =>
      _$LocationAddressMetaFromJson(json);
}
