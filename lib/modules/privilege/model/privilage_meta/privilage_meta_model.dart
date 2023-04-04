// ignore_for_file: invalid_annotation_target

import 'package:cic_mobile/modules/privilege/model/privilage_meta/link/meta_privilage_link.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'privilage_meta_model.freezed.dart';
part 'privilage_meta_model.g.dart';

@freezed
class PrivilageMetaModel with _$PrivilageMetaModel {
  factory PrivilageMetaModel({
    @JsonKey(name: 'current_page') int? currentPage,
    int? from,
    @JsonKey(name: 'last_page') int? lastPage,
    List<MetaPrivilageLink>? links,
    String? path,
    @JsonKey(name: 'per_page') int? perPage,
    int? to,
    int? total,
  }) = _PrivilageMetaModel;

  factory PrivilageMetaModel.fromJson(Map<String, dynamic> json) =>
      _$PrivilageMetaModelFromJson(json);
}
