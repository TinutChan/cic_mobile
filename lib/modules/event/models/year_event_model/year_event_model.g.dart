// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'year_event_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EventYearModel _$$_EventYearModelFromJson(Map<String, dynamic> json) =>
    _$_EventYearModel(
      year: json['year'] as int?,
      month: (json['month'] as List<dynamic>?)
          ?.map((e) => EventMonthlyModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_EventYearModelToJson(_$_EventYearModel instance) =>
    <String, dynamic>{
      'year': instance.year,
      'month': instance.month,
    };
