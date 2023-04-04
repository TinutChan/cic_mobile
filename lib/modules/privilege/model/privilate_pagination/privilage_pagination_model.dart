// ignore_for_file: invalid_annotation_target

import 'package:cic_mobile/modules/privilege/model/privilage_meta/privilage_meta_model.dart';
import 'package:cic_mobile/modules/privilege/model/privilege_data/privilege_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'privilage_pagination_model.freezed.dart';
part 'privilage_pagination_model.g.dart';

@freezed
class PrivilagePagination with _$PrivilagePagination {
  factory PrivilagePagination({
    @JsonKey(name: 'data') List<PrivilegeData>? data,
    @JsonKey(name: 'meta') PrivilageMetaModel? meta,
  }) = _PrivilagePagination;

  factory PrivilagePagination.fromJson(Map<String, dynamic> json) =>
      _$PrivilagePaginationFromJson(json);
}
