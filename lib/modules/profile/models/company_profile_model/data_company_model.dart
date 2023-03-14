import 'package:freezed_annotation/freezed_annotation.dart';

import 'data_profile_detail_model/data_company_model.dart';

part 'data_company_model.freezed.dart';
part 'data_company_model.g.dart';

@freezed
class DataCompanyProfileModel with _$DataCompanyProfileModel {
  factory DataCompanyProfileModel({
    List<CompanyDataModel>? data,
  }) = _DataCompanyProfileModel;

  factory DataCompanyProfileModel.fromJson(Map<String, dynamic> json) =>
      _$DataCompanyProfileModelFromJson(json);
}
