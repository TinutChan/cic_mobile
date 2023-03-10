// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../home/models/user_model/current_address/currnet_address_model.dart';
import '../gender/user_gender_model.dart';

part 'data_model.freezed.dart';
part 'data_model.g.dart';

@freezed
class Data with _$Data {
  factory Data({
    int? id,
    String? code,
    String? display,
    String? position,
    String? profile,
    @JsonKey(name: "default_photo") String? defaultPhoto,
    String? name,
    Gender? gender,
    @JsonKey(name: "date_of_birth") String? dateOfBirth,
    Gender? nationality,
    String? recommended,
    @JsonKey(name: "number_share") int? numberShare,
    String? expertise,
    @JsonKey(name: "member_type") List<String>? memberType,
    @JsonKey(name: "year_joined") String? yearJoined,
    @JsonKey(name: "profile_biography") String? profileBiography,
    String? about,
    String? other,
    @JsonKey(name: "identity_type") Gender? identityType,
    @JsonKey(name: "identity_number") String? identityNumber,
    @JsonKey(name: "identity_date") String? identityDate,
    @JsonKey(name: "identity_expired_date") String? identityExpiredDate,
    @JsonKey(name: "company_name") String? companyName,
    @JsonKey(name: "current_address") CurrentAddress? currentAddress,
    @JsonKey(name: "street_no") String? streetNo,
    @JsonKey(name: "house_no") String? houseNo,
    @JsonKey(name: "permanent_address") CurrentAddress? permanentAddress,
    @JsonKey(name: "permanent_street_no") String? permanentStreetNo,
    @JsonKey(name: "permanent_house_no") String? permanentHouseNo,
    String? phone,
    String? email,
    String? whatapp,
    String? telegram,
    String? messenger,
    String? skype,
    String? website,
    String? facebook,
    String? linkedin,
    String? twitter,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
