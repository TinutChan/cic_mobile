// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_company_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Data _$$_DataFromJson(Map<String, dynamic> json) => _$_Data(
      id: json['id'] as int?,
      memberId: json['memberId'] as int?,
      companyName: json['companyName'] as String?,
      khmerName: json['khmerName'] as String?,
      majorOfBusiness: json['majorOfBusiness'] == null
          ? null
          : MajorOfBusiness.fromJson(
              json['majorOfBusiness'] as Map<String, dynamic>),
      position: json['position'] as String?,
      legalStatus: json['legalStatus'] == null
          ? null
          : MajorOfBusiness.fromJson(
              json['legalStatus'] as Map<String, dynamic>),
      registeredBusiness: json['registeredBusiness'] == null
          ? null
          : MajorOfBusiness.fromJson(
              json['registeredBusiness'] as Map<String, dynamic>),
      companySize: json['companySize'] as int?,
      numberOfBranches: json['numberOfBranches'] as int?,
      businessModel: json['businessModel'] == null
          ? null
          : MajorOfBusiness.fromJson(
              json['businessModel'] as Map<String, dynamic>),
      capitalInvestment: json['capitalInvestment'] as String?,
      yearFounded: json['yearFounded'] as String?,
      isPrimary: json['isPrimary'] as int?,
      companyDiagnosticReport: json['companyDiagnosticReport'] as String?,
      companyMilestones: json['companyMilestones'] as String?,
      companyLogo: json['companyLogo'] as String?,
      serviceImages: json['serviceImages'] as String?,
      companySlogan: json['companySlogan'] as String?,
      personalInterest: json['personalInterest'] as String?,
      companyProfile: json['companyProfile'] as String?,
      companyProductAndService: json['companyProductAndService'] as String?,
      houseNo: json['houseNo'] as String?,
      streetNo: json['streetNo'] as String?,
      address: json['address'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      email: json['email'] as String?,
      whatApp: json['whatApp'] as String?,
      telegram: json['telegram'] as String?,
      messenger: json['messenger'] as String?,
      skype: json['skype'] as String?,
      weChat: json['weChat'] as String?,
      website: json['website'] as String?,
      facebook: json['facebook'] as String?,
      linkedin: json['linkedin'] as String?,
      twitter: json['twitter'] as String?,
      typeOfOrganization: json['typeOfOrganization'] == null
          ? null
          : MajorOfBusiness.fromJson(
              json['typeOfOrganization'] as Map<String, dynamic>),
      industry: json['industry'] == null
          ? null
          : MajorOfBusiness.fromJson(json['industry'] as Map<String, dynamic>),
      industry1: json['industry1'] as String?,
      taxIdentificationNumber: json['taxIdentificationNumber'] as String?,
      numberOfStaff: json['numberOfStaff'] as int?,
      ownerName: json['ownerName'] as String?,
      companyActivityImages: (json['companyActivityImages'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      companyFiles: json['companyFiles'] == null
          ? null
          : CompanyFiles.fromJson(json['companyFiles'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DataToJson(_$_Data instance) => <String, dynamic>{
      'id': instance.id,
      'memberId': instance.memberId,
      'companyName': instance.companyName,
      'khmerName': instance.khmerName,
      'majorOfBusiness': instance.majorOfBusiness,
      'position': instance.position,
      'legalStatus': instance.legalStatus,
      'registeredBusiness': instance.registeredBusiness,
      'companySize': instance.companySize,
      'numberOfBranches': instance.numberOfBranches,
      'businessModel': instance.businessModel,
      'capitalInvestment': instance.capitalInvestment,
      'yearFounded': instance.yearFounded,
      'isPrimary': instance.isPrimary,
      'companyDiagnosticReport': instance.companyDiagnosticReport,
      'companyMilestones': instance.companyMilestones,
      'companyLogo': instance.companyLogo,
      'serviceImages': instance.serviceImages,
      'companySlogan': instance.companySlogan,
      'personalInterest': instance.personalInterest,
      'companyProfile': instance.companyProfile,
      'companyProductAndService': instance.companyProductAndService,
      'houseNo': instance.houseNo,
      'streetNo': instance.streetNo,
      'address': instance.address,
      'phoneNumber': instance.phoneNumber,
      'email': instance.email,
      'whatApp': instance.whatApp,
      'telegram': instance.telegram,
      'messenger': instance.messenger,
      'skype': instance.skype,
      'weChat': instance.weChat,
      'website': instance.website,
      'facebook': instance.facebook,
      'linkedin': instance.linkedin,
      'twitter': instance.twitter,
      'typeOfOrganization': instance.typeOfOrganization,
      'industry': instance.industry,
      'industry1': instance.industry1,
      'taxIdentificationNumber': instance.taxIdentificationNumber,
      'numberOfStaff': instance.numberOfStaff,
      'ownerName': instance.ownerName,
      'companyActivityImages': instance.companyActivityImages,
      'companyFiles': instance.companyFiles,
    };
