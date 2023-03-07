// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserDetailModel _$$_UserDetailModelFromJson(Map<String, dynamic> json) =>
    _$_UserDetailModel(
      id: json['id'] as int?,
      code: json['code'] as String?,
      isCustomer: json['is_customer'] as int?,
      customerId: json['customer_id'] as int?,
      profile: json['profile'] as String?,
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      fullName: json['full_name'] as String?,
      secondName: json['second_name'] as String?,
      dateOfBirth: json['date_of_birth'] as String?,
      phone: json['phone'] as String?,
      email: json['email'] as String?,
      pinCode: json['pin_code'] as String?,
      companyName: json['company_name'] as String?,
      title: json['title'] as String?,
      position: json['position'] == null
          ? null
          : Position.fromJson(json['position'] as Map<String, dynamic>),
      screenLock: json['screen_lock'] == null
          ? null
          : ScreenLock.fromJson(json['screen_lock'] as Map<String, dynamic>),
      enableNotification: json['enable_notification'] as bool?,
      isAgree: json['is_agree'] as bool?,
      recommended: json['recommended'] as String?,
      percentage: json['percentage'] as int?,
      numberShare: json['number_share'] as int?,
      blockShare: json['block_share'] as String?,
      memberType: (json['member_type'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      investorType: json['investor_type'] as String?,
      qiid: json['qiid'] as String?,
      about: json['about'] as String?,
      address: json['address'] as String?,
      companies: json['companies'] == null
          ? null
          : Companies.fromJson(json['companies'] as Map<String, dynamic>),
      gender: json['gender'] == null
          ? null
          : Gender.fromJson(json['gender'] as Map<String, dynamic>),
      employmentStatus: json['employment_status'] == null
          ? null
          : Position.fromJson(
              json['employment_status'] as Map<String, dynamic>),
      income: json['income'] as String?,
      company: json['company'] as String?,
      houseNo: json['house_no'] as String?,
      streetNo: json['street_no'] as String?,
      currentAddress: json['current_address'] == null
          ? null
          : CurrentAddress.fromJson(
              json['current_address'] as Map<String, dynamic>),
      permanentHouseNo: json['permanent_house_no'] as String?,
      permanentStreetNo: json['permanent_street_no'] as String?,
      permanentAddress: json['permanent_address'] == null
          ? null
          : Position.fromJson(
              json['permanent_address'] as Map<String, dynamic>),
      idCard: json['id_card'] as String?,
      familyBook: json['family_book'] as String?,
      residenceBook: json['residence_book'] as String?,
      selfiesPhoto: json['selfies_photo'] as String?,
      letterOfBirthPhoto: json['letter_of_birth_photo'] as String?,
      numberOfChildren: json['number_of_children'] as int?,
      numberOfFamilyMember: json['number_of_family_member'] as int?,
      cbcCheck: json['cbc_check'] as String?,
      cbcScores: json['cbc_scores'] as int?,
      shiftWorks: json['shift_works'] == null
          ? null
          : Position.fromJson(json['shift_works'] as Map<String, dynamic>),
      businessesIncome: json['businesses_income'] as String?,
      typeOfBusinessActivities: json['type_of_business_activities'] == null
          ? null
          : Position.fromJson(
              json['type_of_business_activities'] as Map<String, dynamic>),
      generalExpenses: json['general_expenses'] as String?,
      yesOrNoLoanLeasingRepaymentExpenses:
          json['yes_or_no_loan_leasing_repayment_expenses'] as int?,
      loanLeasingRepaymentExpenses:
          json['loan_leasing_repayment_expenses'] as String?,
      certificateOrContractOfEmployment:
          json['certificate_or_contract_of_employment'] as String?,
      salarySlip: json['salary_slip'] as String?,
      backIdCard: json['back_id_card'] as String?,
      nameOfInstitution: json['name_of_institution'] as String?,
      confirmationAllInformation: json['confirmation_all_information'] as int?,
      purpose: json['purpose'] == null
          ? null
          : Purpose.fromJson(json['purpose'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_UserDetailModelToJson(_$_UserDetailModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'is_customer': instance.isCustomer,
      'customer_id': instance.customerId,
      'profile': instance.profile,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'full_name': instance.fullName,
      'second_name': instance.secondName,
      'date_of_birth': instance.dateOfBirth,
      'phone': instance.phone,
      'email': instance.email,
      'pin_code': instance.pinCode,
      'company_name': instance.companyName,
      'title': instance.title,
      'position': instance.position,
      'screen_lock': instance.screenLock,
      'enable_notification': instance.enableNotification,
      'is_agree': instance.isAgree,
      'recommended': instance.recommended,
      'percentage': instance.percentage,
      'number_share': instance.numberShare,
      'block_share': instance.blockShare,
      'member_type': instance.memberType,
      'investor_type': instance.investorType,
      'qiid': instance.qiid,
      'about': instance.about,
      'address': instance.address,
      'companies': instance.companies,
      'gender': instance.gender,
      'employment_status': instance.employmentStatus,
      'income': instance.income,
      'company': instance.company,
      'house_no': instance.houseNo,
      'street_no': instance.streetNo,
      'current_address': instance.currentAddress,
      'permanent_house_no': instance.permanentHouseNo,
      'permanent_street_no': instance.permanentStreetNo,
      'permanent_address': instance.permanentAddress,
      'id_card': instance.idCard,
      'family_book': instance.familyBook,
      'residence_book': instance.residenceBook,
      'selfies_photo': instance.selfiesPhoto,
      'letter_of_birth_photo': instance.letterOfBirthPhoto,
      'number_of_children': instance.numberOfChildren,
      'number_of_family_member': instance.numberOfFamilyMember,
      'cbc_check': instance.cbcCheck,
      'cbc_scores': instance.cbcScores,
      'shift_works': instance.shiftWorks,
      'businesses_income': instance.businessesIncome,
      'type_of_business_activities': instance.typeOfBusinessActivities,
      'general_expenses': instance.generalExpenses,
      'yes_or_no_loan_leasing_repayment_expenses':
          instance.yesOrNoLoanLeasingRepaymentExpenses,
      'loan_leasing_repayment_expenses': instance.loanLeasingRepaymentExpenses,
      'certificate_or_contract_of_employment':
          instance.certificateOrContractOfEmployment,
      'salary_slip': instance.salarySlip,
      'back_id_card': instance.backIdCard,
      'name_of_institution': instance.nameOfInstitution,
      'confirmation_all_information': instance.confirmationAllInformation,
      'purpose': instance.purpose,
    };
