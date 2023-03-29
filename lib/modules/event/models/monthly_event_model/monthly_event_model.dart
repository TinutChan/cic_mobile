import 'package:freezed_annotation/freezed_annotation.dart';

part 'monthly_event_model.freezed.dart';
part 'monthly_event_model.g.dart';

@freezed
class EventMonthlyModel with _$EventMonthlyModel {
  factory EventMonthlyModel({
    String? name,
    String? date,
  }) = _EventMonthlyModel;

  factory EventMonthlyModel.fromJson(Map<String, dynamic> json) =>
      _$EventMonthlyModelFromJson(json);
}
