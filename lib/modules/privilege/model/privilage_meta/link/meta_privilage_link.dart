import 'package:freezed_annotation/freezed_annotation.dart';

part 'meta_privilage_link.freezed.dart';
part 'meta_privilage_link.g.dart';

@freezed
class MetaPrivilageLink with _$MetaPrivilageLink {
  factory MetaPrivilageLink({
    String? url,
    String? label,
    bool? active,
  }) = _MetaPrivilageLink;

  factory MetaPrivilageLink.fromJson(Map<String, dynamic> json) =>
      _$MetaPrivilageLinkFromJson(json);
}
