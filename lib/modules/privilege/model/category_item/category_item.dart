// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_item.freezed.dart';
part 'category_item.g.dart';

@freezed
class CategoryItem with _$CategoryItem {
  factory CategoryItem({
    int? id,
    @JsonKey(name: 'count_shop') int? countShop,
    String? name,
    String? image,
    @JsonKey(name: 'mime_type') String? mimeType,
  }) = _CategoryItem;

  factory CategoryItem.fromJson(Map<String, dynamic> json) =>
      _$CategoryItemFromJson(json);
}
