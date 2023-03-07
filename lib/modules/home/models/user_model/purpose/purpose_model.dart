import 'package:freezed_annotation/freezed_annotation.dart';

part 'purpose_model.freezed.dart';
part 'purpose_model.g.dart';

@freezed
class Purpose with _$Purpose {
  factory Purpose({
    int? id,
    String? display,
  }) = _Purpose;

  factory Purpose.fromJson(Map<String, dynamic> json) =>
      _$PurposeFromJson(json);
}
