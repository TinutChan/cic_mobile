// // ignore_for_file: invalid_annotation_target

// import 'package:freezed_annotation/freezed_annotation.dart';

// import '../../../../home/models/user_model/current_address/currnet_address_model.dart';
// import '../gender/user_gender_model.dart';

// part 'data_model.freezed.dart';
// part 'data_model.g.dart';

// @freezed
// class Data with _$Data {
//   factory Data({
//     final int? id,
//     final String? code,
//     final String? display,
//     final String? position,
//     final String? profile,
//     @JsonKey(name: "default_photo") final String? defaultPhoto,
//     final String? name,
//     final Gender? gender,
//     @JsonKey(name: "date_of_birth") final String? dateOfBirth,
//     final Gender? nationality,
//     final String? recommended,
//     @JsonKey(name: "number_share") final int? numberShare,
//     final String? expertise,
//     @JsonKey(name: "member_type") final List<String>? memberType,
//     @JsonKey(name: "year_joined") final String? yearJoined,
//     @JsonKey(name: "profile_biography") final String? profileBiography,
//     final String? about,
//     final String? other,
//     @JsonKey(name: "identity_type") final Gender? identityType,
//     @JsonKey(name: "identity_number") final String? identityNumber,
//     @JsonKey(name: "identity_date") final String? identityDate,
//     @JsonKey(name: "identity_expired_date") final String? identityExpiredDate,
//     @JsonKey(name: "company_name") final String? companyName,
//     @JsonKey(name: "current_address") final CurrentAddress? currentAddress,
//     @JsonKey(name: "street_no") final String? streetNo,
//     @JsonKey(name: "house_no") final String? houseNo,
//     @JsonKey(name: "permanent_address") final CurrentAddress? permanentAddress,
//     @JsonKey(name: "permanent_street_no") final String? permanentStreetNo,
//     @JsonKey(name: "permanent_house_no") final String? permanentHouseNo,
//     final String? phone,
//     final String? email,
//     final String? whatapp,
//     final String? telegram,
//     final String? messenger,
//     final String? skype,
//     final String? website,
//     final String? facebook,
//     final String? linkedin,
//     final String? twitter,
//   }) = _Data;

// ignore_for_file: invalid_annotation_target

//   factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
// }
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../home/models/user_model/current_address/currnet_address_model.dart';
import '../gender/user_gender_model.dart';

part 'data_model.freezed.dart';
part 'data_model.g.dart';

@freezed
class DataProfileDetail with _$DataProfileDetail {
  factory DataProfileDetail({
    final int? id,
    final String? code,
    final String? display,
    final String? position,
    final String? profile,
    @JsonKey(name: 'default_photo') final String? defaultPhoto,
    final String? name,
    final Gender? gender,
    @JsonKey(name: 'date_of_birth') final String? dateOfBirth,
    final Gender? nationality,
    final String? recommended,
    @JsonKey(name: 'number_share') final int? numberShare,
    final String? expertise,
    @JsonKey(name: 'member_type') final List<String>? memberType,
    @JsonKey(name: 'year_joined') final String? yearJoined,
    @JsonKey(name: "profile_biography") final String? profileBiography,
    final String? about,
    final String? other,
    @JsonKey(name: 'identity_type') final Gender? identityType,
    @JsonKey(name: 'identity_number') final String? identityNumber,
    @JsonKey(name: 'identity_date') final String? identityDate,
    @JsonKey(name: 'identity_expired_date') final String? identityExpiredDate,
    @JsonKey(name: 'company_name') final String? companyName,
    @JsonKey(name: 'current_address') final CurrentAddress? currentAddress,
    @JsonKey(name: 'street_no') final String? streetNo,
    @JsonKey(name: 'house_no') String? houseNo,
    @JsonKey(name: 'permanent_address') final CurrentAddress? permanentAddress,
    @JsonKey(name: 'permanent_street_no') String? permanentStreetNo,
    @JsonKey(name: 'permanent_house_no') final String? permanentHouseNo,
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
  }) = _DataProfileDetail;

  factory DataProfileDetail.fromJson(Map<String, dynamic> json) =>
      _$DataProfileDetailFromJson(json);
}
