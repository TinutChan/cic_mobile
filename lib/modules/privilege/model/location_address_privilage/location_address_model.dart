import 'package:cic_mobile/modules/privilege/model/location_address_privilage/location_address_data/location_address_data_model.dart';
import 'package:cic_mobile/modules/privilege/model/location_address_privilage/location_address_meta/location_address_meta_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_address_model.freezed.dart';
part 'location_address_model.g.dart';

@freezed
class LocationAddressModel with _$LocationAddressModel {
  factory LocationAddressModel({
    @JsonKey(name: 'data') List<LocationAdressData>? data,
    @JsonKey(name: 'meta') List<LocationAddressMeta>? meta,
  }) = _LocationAddressModel;

  factory LocationAddressModel.fromJson(Map<String, dynamic> json) =>
      _$LocationAddressModelFromJson(json);
}
