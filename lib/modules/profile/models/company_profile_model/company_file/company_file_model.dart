import 'package:freezed_annotation/freezed_annotation.dart';

part 'company_file_model.freezed.dart';
part 'company_file_model.g.dart';

@freezed
class CompanyFiles with _$CompanyFiles {
  factory CompanyFiles({
    List<String>? companyPatentDoc,
    List<String>? companyLicenceDoc,
    List<String>? companyMoCCertificate,
  }) = _CompanyFiles;

  factory CompanyFiles.fromJson(Map<String, dynamic> json) =>
      _$CompanyFilesFromJson(json);
}
