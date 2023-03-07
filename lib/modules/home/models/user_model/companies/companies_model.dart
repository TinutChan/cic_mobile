import 'package:freezed_annotation/freezed_annotation.dart';

part 'companies_model.freezed.dart';
part 'companies_model.g.dart';

@freezed
class Companies with _$Companies {
  factory Companies({
    String? name,
    String? logo,
    String? website,
    int? founded,
    String? size,
    String? address,
  }) = _Companies;

  factory Companies.fromJson(Map<String, dynamic> json) =>
      _$CompaniesFromJson(json);
}
