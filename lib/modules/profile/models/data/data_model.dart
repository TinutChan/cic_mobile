import 'package:freezed_annotation/freezed_annotation.dart';

import '../current_address/user_current_address_model.dart';
import '../gender/user_gender_model.dart';

part 'data_model.freezed.dart';
part 'data_model.g.dart';

@freezed
class Data with _$Data {
  factory Data({
    final int? id,
    final String? code,
    final String? display,
    final String? position,
    final String? profile,
    final String? defaultPhoto,
    final String? name,
    final Gender? gender,
    final String? dateOfBirth,
    final Gender? nationality,
    final String? recommended,
    final int? numberShare,
    final String? expertise,
    final List<String>? memberType,
    final String? yearJoined,
    final String? profileBiography,
    final String? about,
    final String? other,
    final Gender? identityType,
    final String? identityNumber,
    final String? identityDate,
    final String? identityExpiredDate,
    final String? companyName,
    final CurrentAddress? currentAddress,
    final String? streetNo,
    final String? houseNo,
    final CurrentAddress? permanentAddress,
    final String? permanentStreetNo,
    final String? permanentHouseNo,
    final String? phone,
    final String? email,
    final String? whatapp,
    final String? telegram,
    final String? messenger,
    final String? skype,
    final String? website,
    final String? facebook,
    final String? linkedin,
    final String? twitter,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
