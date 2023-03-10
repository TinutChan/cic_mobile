import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../profile/models/personal_profile_model/city/user_city_address.dart';

part 'currnet_address_model.freezed.dart';
part 'currnet_address_model.g.dart';

@freezed
class CurrentAddress with _$CurrentAddress {
  factory CurrentAddress({
    final City? city,
    final City? district,
    final City? commune,
    final City? village,
  }) = _CurrentAddress;

  factory CurrentAddress.fromJson(Map<String, dynamic> json) =>
      _$CurrentAddressFromJson(json);
}
