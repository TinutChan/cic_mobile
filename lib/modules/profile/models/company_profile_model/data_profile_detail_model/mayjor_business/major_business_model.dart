// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'major_business_model.freezed.dart';
part 'major_business_model.g.dart';

@freezed
class MajorOfBusiness with _$MajorOfBusiness {
  factory MajorOfBusiness({
    final String? display,
    final int? id,
    @JsonKey(name: 'display_khmer') final String? displayKhmer,
  }) = _MajorOfBusiness;

  factory MajorOfBusiness.fromJson(Map<String, dynamic> json) =>
      _$MajorOfBusinessFromJson(json);
}
