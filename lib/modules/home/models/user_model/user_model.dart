// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../profile/models/personal_profile_model/current_address/user_current_address_model.dart';
import '../../../profile/models/personal_profile_model/gender/user_gender_model.dart';
import 'companies/companies_model.dart';
import 'position/position_model.dart';
import 'purpose/purpose_model.dart';
import 'screen_lock/screen_lock_model.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserDetailModel with _$UserDetailModel {
  factory UserDetailModel({
    int? id,
    String? code,
    @JsonKey(name: "is_customer") int? isCustomer,
    @JsonKey(name: "customer_id") int? customerId,
    String? profile,
    @JsonKey(name: "first_name") String? firstName,
    @JsonKey(name: "last_name") String? lastName,
    @JsonKey(name: "full_name") String? fullName,
    @JsonKey(name: "second_name") String? secondName,
    @JsonKey(name: "date_of_birth") String? dateOfBirth,
    String? phone,
    String? email,
    @JsonKey(name: "pin_code") String? pinCode,
    @JsonKey(name: "company_name") String? companyName,
    String? title,
    Position? position,
    @JsonKey(name: "screen_lock") ScreenLock? screenLock,
    @JsonKey(name: "enable_notification") bool? enableNotification,
    @JsonKey(name: "is_agree") bool? isAgree,
    String? recommended,
    int? percentage,
    @JsonKey(name: "number_share") int? numberShare,
    @JsonKey(name: "block_share") String? blockShare,
    @JsonKey(name: "member_type") List<String>? memberType,
    @JsonKey(name: "investor_type") String? investorType,
    String? qiid,
    String? about,
    String? address,
    Companies? companies,
    Gender? gender,
    @JsonKey(name: "employment_status") Position? employmentStatus,
    String? income,
    String? company,
    @JsonKey(name: "house_no") String? houseNo,
    @JsonKey(name: "street_no") String? streetNo,
    @JsonKey(name: "current_address") CurrentAddress? currentAddress,
    @JsonKey(name: "permanent_house_no") String? permanentHouseNo,
    @JsonKey(name: "permanent_street_no") String? permanentStreetNo,
    @JsonKey(name: "permanent_address") Position? permanentAddress,
    @JsonKey(name: "id_card") String? idCard,
    @JsonKey(name: "family_book") String? familyBook,
    @JsonKey(name: "residence_book") String? residenceBook,
    @JsonKey(name: "selfies_photo") String? selfiesPhoto,
    @JsonKey(name: "letter_of_birth_photo") String? letterOfBirthPhoto,
    @JsonKey(name: "number_of_children") int? numberOfChildren,
    @JsonKey(name: "number_of_family_member") int? numberOfFamilyMember,
    @JsonKey(name: "cbc_check") String? cbcCheck,
    @JsonKey(name: "cbc_scores") int? cbcScores,
    @JsonKey(name: "shift_works") Position? shiftWorks,
    @JsonKey(name: "businesses_income") String? businessesIncome,
    @JsonKey(name: "type_of_business_activities")
        Position? typeOfBusinessActivities,
    @JsonKey(name: "general_expenses") String? generalExpenses,
    @JsonKey(name: "yes_or_no_loan_leasing_repayment_expenses")
        int? yesOrNoLoanLeasingRepaymentExpenses,
    @JsonKey(name: "loan_leasing_repayment_expenses")
        String? loanLeasingRepaymentExpenses,
    @JsonKey(name: "certificate_or_contract_of_employment")
        String? certificateOrContractOfEmployment,
    @JsonKey(name: "salary_slip") String? salarySlip,
    @JsonKey(name: "back_id_card") String? backIdCard,
    @JsonKey(name: "name_of_institution") String? nameOfInstitution,
    @JsonKey(name: "confirmation_all_information")
        int? confirmationAllInformation,
    Purpose? purpose,
  }) = _UserDetailModel;

  factory UserDetailModel.fromJson(Map<String, dynamic> json) =>
      _$UserDetailModelFromJson(json);
}
