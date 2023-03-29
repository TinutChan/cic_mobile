import 'package:cic_mobile/modules/event/models/monthly_event_model/monthly_event_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'year_event_model.freezed.dart';
part 'year_event_model.g.dart';

@freezed
class EventYearModel with _$EventYearModel {
  factory EventYearModel({
    int? year,
    List<EventMonthlyModel>? month,
  }) = _EventYearModel;

  factory EventYearModel.fromJson(Map<String, dynamic> json) =>
      _$EventYearModelFromJson(json);
}
