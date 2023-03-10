import 'package:freezed_annotation/freezed_annotation.dart';

import '../city/user_city_address.dart';

part 'user_current_address_model.freezed.dart';
part 'user_current_address_model.g.dart';

@freezed
class CurrentAddress with _$CurrentAddress {
  factory CurrentAddress({
    City? city,
    City? district,
    City? commune,
    City? village,
  }) = _CurrentAddress;

  factory CurrentAddress.fromJson(Map<String, dynamic> json) =>
      _$CurrentAddressFromJson(json);
}
