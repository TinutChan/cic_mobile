// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import 'company_file/company_file_model.dart';
import 'mayjor_business/major_business_model.dart';

part 'data_company_model.freezed.dart';
part 'data_company_model.g.dart';

@freezed
class CompanyDataModel with _$CompanyDataModel {
  factory CompanyDataModel({
    int? id,
    @JsonKey(name: 'member_id') int? memberId,
    @JsonKey(name: 'company_name') String? companyName,
    @JsonKey(name: 'khmer_name') String? khmerName,
    @JsonKey(name: 'major_of_business') MajorOfBusiness? majorOfBusiness,
    String? position,
    @JsonKey(name: 'legal_status') MajorOfBusiness? legalStatus,
    @JsonKey(name: 'registered_business') MajorOfBusiness? registeredBusiness,
    @JsonKey(name: 'company_size') int? companySize,
    @JsonKey(name: 'number_of_branches') int? numberOfBranches,
    @JsonKey(name: 'business_model') MajorOfBusiness? businessModel,
    @JsonKey(name: 'capital_investment') String? capitalInvestment,
    @JsonKey(name: 'year_founded') String? yearFounded,
    @JsonKey(name: 'is_primary') int? isPrimary,
    @JsonKey(name: 'company_diagnostic_report') String? companyDiagnosticReport,
    @JsonKey(name: 'companymilestones') String? companyMilestones,
    @JsonKey(name: 'company_logo') String? companyLogo,
    @JsonKey(name: 'service_images') String? serviceImages,
    @JsonKey(name: 'company_slogan') String? companySlogan,
    @JsonKey(name: 'personal_interest') String? personalInterest,
    @JsonKey(name: 'company_profile') String? companyProfile,
    @JsonKey(name: 'company_product_and_service')
        String? companyProductAndService,
    @JsonKey(name: 'house_no') String? houseNo,
    @JsonKey(name: 'street_no') String? streetNo,
    String? address,
    @JsonKey(name: 'phone_number') String? phoneNumber,
    String? email,
    @JsonKey(name: 'what_app') String? whatApp,
    String? telegram,
    String? messenger,
    String? skype,
    @JsonKey(name: 'we_chat') String? weChat,
    String? website,
    String? facebook,
    String? linkedin,
    String? twitter,
    @JsonKey(name: 'type_of_organization') MajorOfBusiness? typeOfOrganization,
    MajorOfBusiness? industry,
    String? industry1,
    @JsonKey(name: 'tax_identification_number') String? taxIdentificationNumber,
    @JsonKey(name: 'number_of_staff') int? numberOfStaff,
    @JsonKey(name: 'owner_name') String? ownerName,
    @JsonKey(name: 'company_activity_images')
        List<String>? companyActivityImages,
    @JsonKey(name: 'company_files') CompanyFiles? companyFiles,
  }) = _CompanyDataModel;

  factory CompanyDataModel.fromJson(Map<String, dynamic> json) => _$CompanyDataModelFromJson(json);
}
