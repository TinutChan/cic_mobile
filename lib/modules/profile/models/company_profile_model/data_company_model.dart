import 'package:freezed_annotation/freezed_annotation.dart';

import 'company_file/company_file_model.dart';
import 'mayjor_business/major_business_model.dart';

part 'data_company_model.freezed.dart';
part 'data_company_model.g.dart';

@freezed
class Data with _$Data {
  factory Data({
    int? id,
    int? memberId,
    String? companyName,
    String? khmerName,
    MajorOfBusiness? majorOfBusiness,
    String? position,
    MajorOfBusiness? legalStatus,
    MajorOfBusiness? registeredBusiness,
    int? companySize,
    int? numberOfBranches,
    MajorOfBusiness? businessModel,
    String? capitalInvestment,
    String? yearFounded,
    int? isPrimary,
    String? companyDiagnosticReport,
    String? companyMilestones,
    String? companyLogo,
    String? serviceImages,
    String? companySlogan,
    String? personalInterest,
    String? companyProfile,
    String? companyProductAndService,
    String? houseNo,
    String? streetNo,
    String? address,
    String? phoneNumber,
    String? email,
    String? whatApp,
    String? telegram,
    String? messenger,
    String? skype,
    String? weChat,
    String? website,
    String? facebook,
    String? linkedin,
    String? twitter,
    MajorOfBusiness? typeOfOrganization,
    MajorOfBusiness? industry,
    String? industry1,
    String? taxIdentificationNumber,
    int? numberOfStaff,
    String? ownerName,
    List<String>? companyActivityImages,
    CompanyFiles? companyFiles,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
