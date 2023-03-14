import 'package:freezed_annotation/freezed_annotation.dart';

import '../data_company_model.dart';

part 'zin.freezed.dart';
part 'zin.g.dart';

@freezed
class Zin with _$Zin {
  factory Zin({
    List<CompanyDataModel>? companyDataModel,
  }) = _Zin;

  factory Zin.fromJson(Map<String, dynamic> json) => _$ZinFromJson(json);
}
