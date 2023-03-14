// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'company_file_model.freezed.dart';
part 'company_file_model.g.dart';

@freezed
class CompanyFiles with _$CompanyFiles {
  factory CompanyFiles({
    @JsonKey(name: 'company_patent_doc') List<String>? companyPatentDoc,
    @JsonKey(name: 'company_licence_doc') List<String>? companyLicenceDoc,
    @JsonKey(name: 'company_MoC_certificate')
        List<String>? companyMoCCertificate,
  }) = _CompanyFiles;

  factory CompanyFiles.fromJson(Map<String, dynamic> json) =>
      _$CompanyFilesFromJson(json);
}
