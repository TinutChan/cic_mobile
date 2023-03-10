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
      defaultPhoto: json['default_photo'] as String?,
      name: json['name'] as String?,
      gender: json['gender'] == null
          ? null
          : Gender.fromJson(json['gender'] as Map<String, dynamic>),
      dateOfBirth: json['date_of_birth'] as String?,
      nationality: json['nationality'] == null
          ? null
          : Gender.fromJson(json['nationality'] as Map<String, dynamic>),
      recommended: json['recommended'] as String?,
      numberShare: json['number_share'] as int?,
      expertise: json['expertise'] as String?,
      memberType: (json['member_type'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      yearJoined: json['year_joined'] as String?,
      profileBiography: json['profile_biography'] as String?,
      about: json['about'] as String?,
      other: json['other'] as String?,
      identityType: json['identity_type'] == null
          ? null
          : Gender.fromJson(json['identity_type'] as Map<String, dynamic>),
      identityNumber: json['identity_number'] as String?,
      identityDate: json['identity_date'] as String?,
      identityExpiredDate: json['identity_expired_date'] as String?,
      companyName: json['company_name'] as String?,
      currentAddress: json['current_address'] == null
          ? null
          : CurrentAddress.fromJson(
              json['current_address'] as Map<String, dynamic>),
      streetNo: json['street_no'] as String?,
      houseNo: json['house_no'] as String?,
      permanentAddress: json['permanent_address'] == null
          ? null
          : CurrentAddress.fromJson(
              json['permanent_address'] as Map<String, dynamic>),
      permanentStreetNo: json['permanent_street_no'] as String?,
      permanentHouseNo: json['permanent_house_no'] as String?,
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
      'default_photo': instance.defaultPhoto,
      'name': instance.name,
      'gender': instance.gender,
      'date_of_birth': instance.dateOfBirth,
      'nationality': instance.nationality,
      'recommended': instance.recommended,
      'number_share': instance.numberShare,
      'expertise': instance.expertise,
      'member_type': instance.memberType,
      'year_joined': instance.yearJoined,
      'profile_biography': instance.profileBiography,
      'about': instance.about,
      'other': instance.other,
      'identity_type': instance.identityType,
      'identity_number': instance.identityNumber,
      'identity_date': instance.identityDate,
      'identity_expired_date': instance.identityExpiredDate,
      'company_name': instance.companyName,
      'current_address': instance.currentAddress,
      'street_no': instance.streetNo,
      'house_no': instance.houseNo,
      'permanent_address': instance.permanentAddress,
      'permanent_street_no': instance.permanentStreetNo,
      'permanent_house_no': instance.permanentHouseNo,
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
