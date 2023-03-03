// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Data _$$_DataFromJson(Map<String, dynamic> json) => _$_Data(
      id: json['id'] as int?,
      code: json['code'] as String?,
      display: json['display'] as String?,
      position: json['position'] as String?,
      profile: json['profile'] as String?,
      defaultPhoto: json['defaultPhoto'] as String?,
      name: json['name'] as String?,
      gender: json['gender'] == null
          ? null
          : Gender.fromJson(json['gender'] as Map<String, dynamic>),
      dateOfBirth: json['dateOfBirth'] as String?,
      nationality: json['nationality'] == null
          ? null
          : Gender.fromJson(json['nationality'] as Map<String, dynamic>),
      recommended: json['recommended'] as String?,
      numberShare: json['numberShare'] as int?,
      expertise: json['expertise'] as String?,
      memberType: (json['memberType'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      yearJoined: json['yearJoined'] as String?,
      profileBiography: json['profileBiography'] as String?,
      about: json['about'] as String?,
      other: json['other'] as String?,
      identityType: json['identityType'] == null
          ? null
          : Gender.fromJson(json['identityType'] as Map<String, dynamic>),
      identityNumber: json['identityNumber'] as String?,
      identityDate: json['identityDate'] as String?,
      identityExpiredDate: json['identityExpiredDate'] as String?,
      companyName: json['companyName'] as String?,
      currentAddress: json['currentAddress'] == null
          ? null
          : CurrentAddress.fromJson(
              json['currentAddress'] as Map<String, dynamic>),
      streetNo: json['streetNo'] as String?,
      houseNo: json['houseNo'] as String?,
      permanentAddress: json['permanentAddress'] == null
          ? null
          : CurrentAddress.fromJson(
              json['permanentAddress'] as Map<String, dynamic>),
      permanentStreetNo: json['permanentStreetNo'] as String?,
      permanentHouseNo: json['permanentHouseNo'] as String?,
      phone: json['phone'] as String?,
      email: json['email'] as String?,
      whatapp: json['whatapp'] as String?,
      telegram: json['telegram'] as String?,
      messenger: json['messenger'] as String?,
      skype: json['skype'] as String?,
      website: json['website'] as String?,
      facebook: json['facebook'] as String?,
      linkedin: json['linkedin'] as String?,
      twitter: json['twitter'] as String?,
    );

Map<String, dynamic> _$$_DataToJson(_$_Data instance) => <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'display': instance.display,
      'position': instance.position,
      'profile': instance.profile,
      'defaultPhoto': instance.defaultPhoto,
      'name': instance.name,
      'gender': instance.gender,
      'dateOfBirth': instance.dateOfBirth,
      'nationality': instance.nationality,
      'recommended': instance.recommended,
      'numberShare': instance.numberShare,
      'expertise': instance.expertise,
      'memberType': instance.memberType,
      'yearJoined': instance.yearJoined,
      'profileBiography': instance.profileBiography,
      'about': instance.about,
      'other': instance.other,
      'identityType': instance.identityType,
      'identityNumber': instance.identityNumber,
      'identityDate': instance.identityDate,
      'identityExpiredDate': instance.identityExpiredDate,
      'companyName': instance.companyName,
      'currentAddress': instance.currentAddress,
      'streetNo': instance.streetNo,
      'houseNo': instance.houseNo,
      'permanentAddress': instance.permanentAddress,
      'permanentStreetNo': instance.permanentStreetNo,
      'permanentHouseNo': instance.permanentHouseNo,
      'phone': instance.phone,
      'email': instance.email,
      'whatapp': instance.whatapp,
      'telegram': instance.telegram,
      'messenger': instance.messenger,
      'skype': instance.skype,
      'website': instance.website,
      'facebook': instance.facebook,
      'linkedin': instance.linkedin,
      'twitter': instance.twitter,
    };
