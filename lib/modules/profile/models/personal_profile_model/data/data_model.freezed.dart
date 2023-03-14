// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DataProfileDetail _$DataProfileDetailFromJson(Map<String, dynamic> json) {
  return _DataProfileDetail.fromJson(json);
}

/// @nodoc
mixin _$DataProfileDetail {
  int? get id => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  String? get display => throw _privateConstructorUsedError;
  String? get position => throw _privateConstructorUsedError;
  String? get profile => throw _privateConstructorUsedError;
  @JsonKey(name: 'default_photo')
  String? get defaultPhoto => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  Gender? get gender => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_of_birth')
  String? get dateOfBirth => throw _privateConstructorUsedError;
  Gender? get nationality => throw _privateConstructorUsedError;
  String? get recommended => throw _privateConstructorUsedError;
  @JsonKey(name: 'number_share')
  int? get numberShare => throw _privateConstructorUsedError;
  String? get expertise => throw _privateConstructorUsedError;
  @JsonKey(name: 'member_type')
  List<String>? get memberType => throw _privateConstructorUsedError;
  @JsonKey(name: 'year_joined')
  String? get yearJoined => throw _privateConstructorUsedError;
  @JsonKey(name: "profile_biography")
  String? get profileBiography => throw _privateConstructorUsedError;
  String? get about => throw _privateConstructorUsedError;
  String? get other => throw _privateConstructorUsedError;
  @JsonKey(name: 'identity_type')
  Gender? get identityType => throw _privateConstructorUsedError;
  @JsonKey(name: 'identity_number')
  String? get identityNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'identity_date')
  String? get identityDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'identity_expired_date')
  String? get identityExpiredDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'company_name')
  String? get companyName => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_address')
  CurrentAddress? get currentAddress => throw _privateConstructorUsedError;
  @JsonKey(name: 'street_no')
  String? get streetNo => throw _privateConstructorUsedError;
  @JsonKey(name: 'house_no')
  String? get houseNo => throw _privateConstructorUsedError;
  @JsonKey(name: 'permanent_address')
  CurrentAddress? get permanentAddress => throw _privateConstructorUsedError;
  @JsonKey(name: 'permanent_street_no')
  String? get permanentStreetNo => throw _privateConstructorUsedError;
  @JsonKey(name: 'permanent_house_no')
  String? get permanentHouseNo => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get whatapp => throw _privateConstructorUsedError;
  String? get telegram => throw _privateConstructorUsedError;
  String? get messenger => throw _privateConstructorUsedError;
  String? get skype => throw _privateConstructorUsedError;
  String? get website => throw _privateConstructorUsedError;
  String? get facebook => throw _privateConstructorUsedError;
  String? get linkedin => throw _privateConstructorUsedError;
  String? get twitter => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataProfileDetailCopyWith<DataProfileDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataProfileDetailCopyWith<$Res> {
  factory $DataProfileDetailCopyWith(
          DataProfileDetail value, $Res Function(DataProfileDetail) then) =
      _$DataProfileDetailCopyWithImpl<$Res, DataProfileDetail>;
  @useResult
  $Res call(
      {int? id,
      String? code,
      String? display,
      String? position,
      String? profile,
      @JsonKey(name: 'default_photo') String? defaultPhoto,
      String? name,
      Gender? gender,
      @JsonKey(name: 'date_of_birth') String? dateOfBirth,
      Gender? nationality,
      String? recommended,
      @JsonKey(name: 'number_share') int? numberShare,
      String? expertise,
      @JsonKey(name: 'member_type') List<String>? memberType,
      @JsonKey(name: 'year_joined') String? yearJoined,
      @JsonKey(name: "profile_biography") String? profileBiography,
      String? about,
      String? other,
      @JsonKey(name: 'identity_type') Gender? identityType,
      @JsonKey(name: 'identity_number') String? identityNumber,
      @JsonKey(name: 'identity_date') String? identityDate,
      @JsonKey(name: 'identity_expired_date') String? identityExpiredDate,
      @JsonKey(name: 'company_name') String? companyName,
      @JsonKey(name: 'current_address') CurrentAddress? currentAddress,
      @JsonKey(name: 'street_no') String? streetNo,
      @JsonKey(name: 'house_no') String? houseNo,
      @JsonKey(name: 'permanent_address') CurrentAddress? permanentAddress,
      @JsonKey(name: 'permanent_street_no') String? permanentStreetNo,
      @JsonKey(name: 'permanent_house_no') String? permanentHouseNo,
      String? phone,
      String? email,
      String? whatapp,
      String? telegram,
      String? messenger,
      String? skype,
      String? website,
      String? facebook,
      String? linkedin,
      String? twitter});

  $GenderCopyWith<$Res>? get gender;
  $GenderCopyWith<$Res>? get nationality;
  $GenderCopyWith<$Res>? get identityType;
  $CurrentAddressCopyWith<$Res>? get currentAddress;
  $CurrentAddressCopyWith<$Res>? get permanentAddress;
}

/// @nodoc
class _$DataProfileDetailCopyWithImpl<$Res, $Val extends DataProfileDetail>
    implements $DataProfileDetailCopyWith<$Res> {
  _$DataProfileDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? display = freezed,
    Object? position = freezed,
    Object? profile = freezed,
    Object? defaultPhoto = freezed,
    Object? name = freezed,
    Object? gender = freezed,
    Object? dateOfBirth = freezed,
    Object? nationality = freezed,
    Object? recommended = freezed,
    Object? numberShare = freezed,
    Object? expertise = freezed,
    Object? memberType = freezed,
    Object? yearJoined = freezed,
    Object? profileBiography = freezed,
    Object? about = freezed,
    Object? other = freezed,
    Object? identityType = freezed,
    Object? identityNumber = freezed,
    Object? identityDate = freezed,
    Object? identityExpiredDate = freezed,
    Object? companyName = freezed,
    Object? currentAddress = freezed,
    Object? streetNo = freezed,
    Object? houseNo = freezed,
    Object? permanentAddress = freezed,
    Object? permanentStreetNo = freezed,
    Object? permanentHouseNo = freezed,
    Object? phone = freezed,
    Object? email = freezed,
    Object? whatapp = freezed,
    Object? telegram = freezed,
    Object? messenger = freezed,
    Object? skype = freezed,
    Object? website = freezed,
    Object? facebook = freezed,
    Object? linkedin = freezed,
    Object? twitter = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      display: freezed == display
          ? _value.display
          : display // ignore: cast_nullable_to_non_nullable
              as String?,
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as String?,
      profile: freezed == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as String?,
      defaultPhoto: freezed == defaultPhoto
          ? _value.defaultPhoto
          : defaultPhoto // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender?,
      dateOfBirth: freezed == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as String?,
      nationality: freezed == nationality
          ? _value.nationality
          : nationality // ignore: cast_nullable_to_non_nullable
              as Gender?,
      recommended: freezed == recommended
          ? _value.recommended
          : recommended // ignore: cast_nullable_to_non_nullable
              as String?,
      numberShare: freezed == numberShare
          ? _value.numberShare
          : numberShare // ignore: cast_nullable_to_non_nullable
              as int?,
      expertise: freezed == expertise
          ? _value.expertise
          : expertise // ignore: cast_nullable_to_non_nullable
              as String?,
      memberType: freezed == memberType
          ? _value.memberType
          : memberType // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      yearJoined: freezed == yearJoined
          ? _value.yearJoined
          : yearJoined // ignore: cast_nullable_to_non_nullable
              as String?,
      profileBiography: freezed == profileBiography
          ? _value.profileBiography
          : profileBiography // ignore: cast_nullable_to_non_nullable
              as String?,
      about: freezed == about
          ? _value.about
          : about // ignore: cast_nullable_to_non_nullable
              as String?,
      other: freezed == other
          ? _value.other
          : other // ignore: cast_nullable_to_non_nullable
              as String?,
      identityType: freezed == identityType
          ? _value.identityType
          : identityType // ignore: cast_nullable_to_non_nullable
              as Gender?,
      identityNumber: freezed == identityNumber
          ? _value.identityNumber
          : identityNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      identityDate: freezed == identityDate
          ? _value.identityDate
          : identityDate // ignore: cast_nullable_to_non_nullable
              as String?,
      identityExpiredDate: freezed == identityExpiredDate
          ? _value.identityExpiredDate
          : identityExpiredDate // ignore: cast_nullable_to_non_nullable
              as String?,
      companyName: freezed == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String?,
      currentAddress: freezed == currentAddress
          ? _value.currentAddress
          : currentAddress // ignore: cast_nullable_to_non_nullable
              as CurrentAddress?,
      streetNo: freezed == streetNo
          ? _value.streetNo
          : streetNo // ignore: cast_nullable_to_non_nullable
              as String?,
      houseNo: freezed == houseNo
          ? _value.houseNo
          : houseNo // ignore: cast_nullable_to_non_nullable
              as String?,
      permanentAddress: freezed == permanentAddress
          ? _value.permanentAddress
          : permanentAddress // ignore: cast_nullable_to_non_nullable
              as CurrentAddress?,
      permanentStreetNo: freezed == permanentStreetNo
          ? _value.permanentStreetNo
          : permanentStreetNo // ignore: cast_nullable_to_non_nullable
              as String?,
      permanentHouseNo: freezed == permanentHouseNo
          ? _value.permanentHouseNo
          : permanentHouseNo // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      whatapp: freezed == whatapp
          ? _value.whatapp
          : whatapp // ignore: cast_nullable_to_non_nullable
              as String?,
      telegram: freezed == telegram
          ? _value.telegram
          : telegram // ignore: cast_nullable_to_non_nullable
              as String?,
      messenger: freezed == messenger
          ? _value.messenger
          : messenger // ignore: cast_nullable_to_non_nullable
              as String?,
      skype: freezed == skype
          ? _value.skype
          : skype // ignore: cast_nullable_to_non_nullable
              as String?,
      website: freezed == website
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String?,
      facebook: freezed == facebook
          ? _value.facebook
          : facebook // ignore: cast_nullable_to_non_nullable
              as String?,
      linkedin: freezed == linkedin
          ? _value.linkedin
          : linkedin // ignore: cast_nullable_to_non_nullable
              as String?,
      twitter: freezed == twitter
          ? _value.twitter
          : twitter // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GenderCopyWith<$Res>? get gender {
    if (_value.gender == null) {
      return null;
    }

    return $GenderCopyWith<$Res>(_value.gender!, (value) {
      return _then(_value.copyWith(gender: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $GenderCopyWith<$Res>? get nationality {
    if (_value.nationality == null) {
      return null;
    }

    return $GenderCopyWith<$Res>(_value.nationality!, (value) {
      return _then(_value.copyWith(nationality: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $GenderCopyWith<$Res>? get identityType {
    if (_value.identityType == null) {
      return null;
    }

    return $GenderCopyWith<$Res>(_value.identityType!, (value) {
      return _then(_value.copyWith(identityType: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CurrentAddressCopyWith<$Res>? get currentAddress {
    if (_value.currentAddress == null) {
      return null;
    }

    return $CurrentAddressCopyWith<$Res>(_value.currentAddress!, (value) {
      return _then(_value.copyWith(currentAddress: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CurrentAddressCopyWith<$Res>? get permanentAddress {
    if (_value.permanentAddress == null) {
      return null;
    }

    return $CurrentAddressCopyWith<$Res>(_value.permanentAddress!, (value) {
      return _then(_value.copyWith(permanentAddress: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DataProfileDetailCopyWith<$Res>
    implements $DataProfileDetailCopyWith<$Res> {
  factory _$$_DataProfileDetailCopyWith(_$_DataProfileDetail value,
          $Res Function(_$_DataProfileDetail) then) =
      __$$_DataProfileDetailCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? code,
      String? display,
      String? position,
      String? profile,
      @JsonKey(name: 'default_photo') String? defaultPhoto,
      String? name,
      Gender? gender,
      @JsonKey(name: 'date_of_birth') String? dateOfBirth,
      Gender? nationality,
      String? recommended,
      @JsonKey(name: 'number_share') int? numberShare,
      String? expertise,
      @JsonKey(name: 'member_type') List<String>? memberType,
      @JsonKey(name: 'year_joined') String? yearJoined,
      @JsonKey(name: "profile_biography") String? profileBiography,
      String? about,
      String? other,
      @JsonKey(name: 'identity_type') Gender? identityType,
      @JsonKey(name: 'identity_number') String? identityNumber,
      @JsonKey(name: 'identity_date') String? identityDate,
      @JsonKey(name: 'identity_expired_date') String? identityExpiredDate,
      @JsonKey(name: 'company_name') String? companyName,
      @JsonKey(name: 'current_address') CurrentAddress? currentAddress,
      @JsonKey(name: 'street_no') String? streetNo,
      @JsonKey(name: 'house_no') String? houseNo,
      @JsonKey(name: 'permanent_address') CurrentAddress? permanentAddress,
      @JsonKey(name: 'permanent_street_no') String? permanentStreetNo,
      @JsonKey(name: 'permanent_house_no') String? permanentHouseNo,
      String? phone,
      String? email,
      String? whatapp,
      String? telegram,
      String? messenger,
      String? skype,
      String? website,
      String? facebook,
      String? linkedin,
      String? twitter});

  @override
  $GenderCopyWith<$Res>? get gender;
  @override
  $GenderCopyWith<$Res>? get nationality;
  @override
  $GenderCopyWith<$Res>? get identityType;
  @override
  $CurrentAddressCopyWith<$Res>? get currentAddress;
  @override
  $CurrentAddressCopyWith<$Res>? get permanentAddress;
}

/// @nodoc
class __$$_DataProfileDetailCopyWithImpl<$Res>
    extends _$DataProfileDetailCopyWithImpl<$Res, _$_DataProfileDetail>
    implements _$$_DataProfileDetailCopyWith<$Res> {
  __$$_DataProfileDetailCopyWithImpl(
      _$_DataProfileDetail _value, $Res Function(_$_DataProfileDetail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? display = freezed,
    Object? position = freezed,
    Object? profile = freezed,
    Object? defaultPhoto = freezed,
    Object? name = freezed,
    Object? gender = freezed,
    Object? dateOfBirth = freezed,
    Object? nationality = freezed,
    Object? recommended = freezed,
    Object? numberShare = freezed,
    Object? expertise = freezed,
    Object? memberType = freezed,
    Object? yearJoined = freezed,
    Object? profileBiography = freezed,
    Object? about = freezed,
    Object? other = freezed,
    Object? identityType = freezed,
    Object? identityNumber = freezed,
    Object? identityDate = freezed,
    Object? identityExpiredDate = freezed,
    Object? companyName = freezed,
    Object? currentAddress = freezed,
    Object? streetNo = freezed,
    Object? houseNo = freezed,
    Object? permanentAddress = freezed,
    Object? permanentStreetNo = freezed,
    Object? permanentHouseNo = freezed,
    Object? phone = freezed,
    Object? email = freezed,
    Object? whatapp = freezed,
    Object? telegram = freezed,
    Object? messenger = freezed,
    Object? skype = freezed,
    Object? website = freezed,
    Object? facebook = freezed,
    Object? linkedin = freezed,
    Object? twitter = freezed,
  }) {
    return _then(_$_DataProfileDetail(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      display: freezed == display
          ? _value.display
          : display // ignore: cast_nullable_to_non_nullable
              as String?,
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as String?,
      profile: freezed == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as String?,
      defaultPhoto: freezed == defaultPhoto
          ? _value.defaultPhoto
          : defaultPhoto // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender?,
      dateOfBirth: freezed == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as String?,
      nationality: freezed == nationality
          ? _value.nationality
          : nationality // ignore: cast_nullable_to_non_nullable
              as Gender?,
      recommended: freezed == recommended
          ? _value.recommended
          : recommended // ignore: cast_nullable_to_non_nullable
              as String?,
      numberShare: freezed == numberShare
          ? _value.numberShare
          : numberShare // ignore: cast_nullable_to_non_nullable
              as int?,
      expertise: freezed == expertise
          ? _value.expertise
          : expertise // ignore: cast_nullable_to_non_nullable
              as String?,
      memberType: freezed == memberType
          ? _value._memberType
          : memberType // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      yearJoined: freezed == yearJoined
          ? _value.yearJoined
          : yearJoined // ignore: cast_nullable_to_non_nullable
              as String?,
      profileBiography: freezed == profileBiography
          ? _value.profileBiography
          : profileBiography // ignore: cast_nullable_to_non_nullable
              as String?,
      about: freezed == about
          ? _value.about
          : about // ignore: cast_nullable_to_non_nullable
              as String?,
      other: freezed == other
          ? _value.other
          : other // ignore: cast_nullable_to_non_nullable
              as String?,
      identityType: freezed == identityType
          ? _value.identityType
          : identityType // ignore: cast_nullable_to_non_nullable
              as Gender?,
      identityNumber: freezed == identityNumber
          ? _value.identityNumber
          : identityNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      identityDate: freezed == identityDate
          ? _value.identityDate
          : identityDate // ignore: cast_nullable_to_non_nullable
              as String?,
      identityExpiredDate: freezed == identityExpiredDate
          ? _value.identityExpiredDate
          : identityExpiredDate // ignore: cast_nullable_to_non_nullable
              as String?,
      companyName: freezed == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String?,
      currentAddress: freezed == currentAddress
          ? _value.currentAddress
          : currentAddress // ignore: cast_nullable_to_non_nullable
              as CurrentAddress?,
      streetNo: freezed == streetNo
          ? _value.streetNo
          : streetNo // ignore: cast_nullable_to_non_nullable
              as String?,
      houseNo: freezed == houseNo
          ? _value.houseNo
          : houseNo // ignore: cast_nullable_to_non_nullable
              as String?,
      permanentAddress: freezed == permanentAddress
          ? _value.permanentAddress
          : permanentAddress // ignore: cast_nullable_to_non_nullable
              as CurrentAddress?,
      permanentStreetNo: freezed == permanentStreetNo
          ? _value.permanentStreetNo
          : permanentStreetNo // ignore: cast_nullable_to_non_nullable
              as String?,
      permanentHouseNo: freezed == permanentHouseNo
          ? _value.permanentHouseNo
          : permanentHouseNo // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      whatapp: freezed == whatapp
          ? _value.whatapp
          : whatapp // ignore: cast_nullable_to_non_nullable
              as String?,
      telegram: freezed == telegram
          ? _value.telegram
          : telegram // ignore: cast_nullable_to_non_nullable
              as String?,
      messenger: freezed == messenger
          ? _value.messenger
          : messenger // ignore: cast_nullable_to_non_nullable
              as String?,
      skype: freezed == skype
          ? _value.skype
          : skype // ignore: cast_nullable_to_non_nullable
              as String?,
      website: freezed == website
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String?,
      facebook: freezed == facebook
          ? _value.facebook
          : facebook // ignore: cast_nullable_to_non_nullable
              as String?,
      linkedin: freezed == linkedin
          ? _value.linkedin
          : linkedin // ignore: cast_nullable_to_non_nullable
              as String?,
      twitter: freezed == twitter
          ? _value.twitter
          : twitter // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DataProfileDetail implements _DataProfileDetail {
  _$_DataProfileDetail(
      {this.id,
      this.code,
      this.display,
      this.position,
      this.profile,
      @JsonKey(name: 'default_photo') this.defaultPhoto,
      this.name,
      this.gender,
      @JsonKey(name: 'date_of_birth') this.dateOfBirth,
      this.nationality,
      this.recommended,
      @JsonKey(name: 'number_share') this.numberShare,
      this.expertise,
      @JsonKey(name: 'member_type') final List<String>? memberType,
      @JsonKey(name: 'year_joined') this.yearJoined,
      @JsonKey(name: "profile_biography") this.profileBiography,
      this.about,
      this.other,
      @JsonKey(name: 'identity_type') this.identityType,
      @JsonKey(name: 'identity_number') this.identityNumber,
      @JsonKey(name: 'identity_date') this.identityDate,
      @JsonKey(name: 'identity_expired_date') this.identityExpiredDate,
      @JsonKey(name: 'company_name') this.companyName,
      @JsonKey(name: 'current_address') this.currentAddress,
      @JsonKey(name: 'street_no') this.streetNo,
      @JsonKey(name: 'house_no') this.houseNo,
      @JsonKey(name: 'permanent_address') this.permanentAddress,
      @JsonKey(name: 'permanent_street_no') this.permanentStreetNo,
      @JsonKey(name: 'permanent_house_no') this.permanentHouseNo,
      this.phone,
      this.email,
      this.whatapp,
      this.telegram,
      this.messenger,
      this.skype,
      this.website,
      this.facebook,
      this.linkedin,
      this.twitter})
      : _memberType = memberType;

  factory _$_DataProfileDetail.fromJson(Map<String, dynamic> json) =>
      _$$_DataProfileDetailFromJson(json);

  @override
  final int? id;
  @override
  final String? code;
  @override
  final String? display;
  @override
  final String? position;
  @override
  final String? profile;
  @override
  @JsonKey(name: 'default_photo')
  final String? defaultPhoto;
  @override
  final String? name;
  @override
  final Gender? gender;
  @override
  @JsonKey(name: 'date_of_birth')
  final String? dateOfBirth;
  @override
  final Gender? nationality;
  @override
  final String? recommended;
  @override
  @JsonKey(name: 'number_share')
  final int? numberShare;
  @override
  final String? expertise;
  final List<String>? _memberType;
  @override
  @JsonKey(name: 'member_type')
  List<String>? get memberType {
    final value = _memberType;
    if (value == null) return null;
    if (_memberType is EqualUnmodifiableListView) return _memberType;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'year_joined')
  final String? yearJoined;
  @override
  @JsonKey(name: "profile_biography")
  final String? profileBiography;
  @override
  final String? about;
  @override
  final String? other;
  @override
  @JsonKey(name: 'identity_type')
  final Gender? identityType;
  @override
  @JsonKey(name: 'identity_number')
  final String? identityNumber;
  @override
  @JsonKey(name: 'identity_date')
  final String? identityDate;
  @override
  @JsonKey(name: 'identity_expired_date')
  final String? identityExpiredDate;
  @override
  @JsonKey(name: 'company_name')
  final String? companyName;
  @override
  @JsonKey(name: 'current_address')
  final CurrentAddress? currentAddress;
  @override
  @JsonKey(name: 'street_no')
  final String? streetNo;
  @override
  @JsonKey(name: 'house_no')
  final String? houseNo;
  @override
  @JsonKey(name: 'permanent_address')
  final CurrentAddress? permanentAddress;
  @override
  @JsonKey(name: 'permanent_street_no')
  final String? permanentStreetNo;
  @override
  @JsonKey(name: 'permanent_house_no')
  final String? permanentHouseNo;
  @override
  final String? phone;
  @override
  final String? email;
  @override
  final String? whatapp;
  @override
  final String? telegram;
  @override
  final String? messenger;
  @override
  final String? skype;
  @override
  final String? website;
  @override
  final String? facebook;
  @override
  final String? linkedin;
  @override
  final String? twitter;

  @override
  String toString() {
    return 'DataProfileDetail(id: $id, code: $code, display: $display, position: $position, profile: $profile, defaultPhoto: $defaultPhoto, name: $name, gender: $gender, dateOfBirth: $dateOfBirth, nationality: $nationality, recommended: $recommended, numberShare: $numberShare, expertise: $expertise, memberType: $memberType, yearJoined: $yearJoined, profileBiography: $profileBiography, about: $about, other: $other, identityType: $identityType, identityNumber: $identityNumber, identityDate: $identityDate, identityExpiredDate: $identityExpiredDate, companyName: $companyName, currentAddress: $currentAddress, streetNo: $streetNo, houseNo: $houseNo, permanentAddress: $permanentAddress, permanentStreetNo: $permanentStreetNo, permanentHouseNo: $permanentHouseNo, phone: $phone, email: $email, whatapp: $whatapp, telegram: $telegram, messenger: $messenger, skype: $skype, website: $website, facebook: $facebook, linkedin: $linkedin, twitter: $twitter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataProfileDetail &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.display, display) || other.display == display) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.profile, profile) || other.profile == profile) &&
            (identical(other.defaultPhoto, defaultPhoto) ||
                other.defaultPhoto == defaultPhoto) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth) &&
            (identical(other.nationality, nationality) ||
                other.nationality == nationality) &&
            (identical(other.recommended, recommended) ||
                other.recommended == recommended) &&
            (identical(other.numberShare, numberShare) ||
                other.numberShare == numberShare) &&
            (identical(other.expertise, expertise) ||
                other.expertise == expertise) &&
            const DeepCollectionEquality()
                .equals(other._memberType, _memberType) &&
            (identical(other.yearJoined, yearJoined) ||
                other.yearJoined == yearJoined) &&
            (identical(other.profileBiography, profileBiography) ||
                other.profileBiography == profileBiography) &&
            (identical(other.about, about) || other.about == about) &&
            (identical(other.other, this.other) || other.other == this.other) &&
            (identical(other.identityType, identityType) ||
                other.identityType == identityType) &&
            (identical(other.identityNumber, identityNumber) ||
                other.identityNumber == identityNumber) &&
            (identical(other.identityDate, identityDate) ||
                other.identityDate == identityDate) &&
            (identical(other.identityExpiredDate, identityExpiredDate) ||
                other.identityExpiredDate == identityExpiredDate) &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName) &&
            (identical(other.currentAddress, currentAddress) ||
                other.currentAddress == currentAddress) &&
            (identical(other.streetNo, streetNo) ||
                other.streetNo == streetNo) &&
            (identical(other.houseNo, houseNo) || other.houseNo == houseNo) &&
            (identical(other.permanentAddress, permanentAddress) ||
                other.permanentAddress == permanentAddress) &&
            (identical(other.permanentStreetNo, permanentStreetNo) ||
                other.permanentStreetNo == permanentStreetNo) &&
            (identical(other.permanentHouseNo, permanentHouseNo) ||
                other.permanentHouseNo == permanentHouseNo) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.whatapp, whatapp) || other.whatapp == whatapp) &&
            (identical(other.telegram, telegram) ||
                other.telegram == telegram) &&
            (identical(other.messenger, messenger) ||
                other.messenger == messenger) &&
            (identical(other.skype, skype) || other.skype == skype) &&
            (identical(other.website, website) || other.website == website) &&
            (identical(other.facebook, facebook) ||
                other.facebook == facebook) &&
            (identical(other.linkedin, linkedin) ||
                other.linkedin == linkedin) &&
            (identical(other.twitter, twitter) || other.twitter == twitter));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        code,
        display,
        position,
        profile,
        defaultPhoto,
        name,
        gender,
        dateOfBirth,
        nationality,
        recommended,
        numberShare,
        expertise,
        const DeepCollectionEquality().hash(_memberType),
        yearJoined,
        profileBiography,
        about,
        other,
        identityType,
        identityNumber,
        identityDate,
        identityExpiredDate,
        companyName,
        currentAddress,
        streetNo,
        houseNo,
        permanentAddress,
        permanentStreetNo,
        permanentHouseNo,
        phone,
        email,
        whatapp,
        telegram,
        messenger,
        skype,
        website,
        facebook,
        linkedin,
        twitter
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataProfileDetailCopyWith<_$_DataProfileDetail> get copyWith =>
      __$$_DataProfileDetailCopyWithImpl<_$_DataProfileDetail>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataProfileDetailToJson(
      this,
    );
  }
}

abstract class _DataProfileDetail implements DataProfileDetail {
  factory _DataProfileDetail(
      {final int? id,
      final String? code,
      final String? display,
      final String? position,
      final String? profile,
      @JsonKey(name: 'default_photo')
          final String? defaultPhoto,
      final String? name,
      final Gender? gender,
      @JsonKey(name: 'date_of_birth')
          final String? dateOfBirth,
      final Gender? nationality,
      final String? recommended,
      @JsonKey(name: 'number_share')
          final int? numberShare,
      final String? expertise,
      @JsonKey(name: 'member_type')
          final List<String>? memberType,
      @JsonKey(name: 'year_joined')
          final String? yearJoined,
      @JsonKey(name: "profile_biography")
          final String? profileBiography,
      final String? about,
      final String? other,
      @JsonKey(name: 'identity_type')
          final Gender? identityType,
      @JsonKey(name: 'identity_number')
          final String? identityNumber,
      @JsonKey(name: 'identity_date')
          final String? identityDate,
      @JsonKey(name: 'identity_expired_date')
          final String? identityExpiredDate,
      @JsonKey(name: 'company_name')
          final String? companyName,
      @JsonKey(name: 'current_address')
          final CurrentAddress? currentAddress,
      @JsonKey(name: 'street_no')
          final String? streetNo,
      @JsonKey(name: 'house_no')
          final String? houseNo,
      @JsonKey(name: 'permanent_address')
          final CurrentAddress? permanentAddress,
      @JsonKey(name: 'permanent_street_no')
          final String? permanentStreetNo,
      @JsonKey(name: 'permanent_house_no')
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
      final String? twitter}) = _$_DataProfileDetail;

  factory _DataProfileDetail.fromJson(Map<String, dynamic> json) =
      _$_DataProfileDetail.fromJson;

  @override
  int? get id;
  @override
  String? get code;
  @override
  String? get display;
  @override
  String? get position;
  @override
  String? get profile;
  @override
  @JsonKey(name: 'default_photo')
  String? get defaultPhoto;
  @override
  String? get name;
  @override
  Gender? get gender;
  @override
  @JsonKey(name: 'date_of_birth')
  String? get dateOfBirth;
  @override
  Gender? get nationality;
  @override
  String? get recommended;
  @override
  @JsonKey(name: 'number_share')
  int? get numberShare;
  @override
  String? get expertise;
  @override
  @JsonKey(name: 'member_type')
  List<String>? get memberType;
  @override
  @JsonKey(name: 'year_joined')
  String? get yearJoined;
  @override
  @JsonKey(name: "profile_biography")
  String? get profileBiography;
  @override
  String? get about;
  @override
  String? get other;
  @override
  @JsonKey(name: 'identity_type')
  Gender? get identityType;
  @override
  @JsonKey(name: 'identity_number')
  String? get identityNumber;
  @override
  @JsonKey(name: 'identity_date')
  String? get identityDate;
  @override
  @JsonKey(name: 'identity_expired_date')
  String? get identityExpiredDate;
  @override
  @JsonKey(name: 'company_name')
  String? get companyName;
  @override
  @JsonKey(name: 'current_address')
  CurrentAddress? get currentAddress;
  @override
  @JsonKey(name: 'street_no')
  String? get streetNo;
  @override
  @JsonKey(name: 'house_no')
  String? get houseNo;
  @override
  @JsonKey(name: 'permanent_address')
  CurrentAddress? get permanentAddress;
  @override
  @JsonKey(name: 'permanent_street_no')
  String? get permanentStreetNo;
  @override
  @JsonKey(name: 'permanent_house_no')
  String? get permanentHouseNo;
  @override
  String? get phone;
  @override
  String? get email;
  @override
  String? get whatapp;
  @override
  String? get telegram;
  @override
  String? get messenger;
  @override
  String? get skype;
  @override
  String? get website;
  @override
  String? get facebook;
  @override
  String? get linkedin;
  @override
  String? get twitter;
  @override
  @JsonKey(ignore: true)
  _$$_DataProfileDetailCopyWith<_$_DataProfileDetail> get copyWith =>
      throw _privateConstructorUsedError;
}
