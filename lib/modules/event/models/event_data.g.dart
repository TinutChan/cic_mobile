// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EventData _$$_EventDataFromJson(Map<String, dynamic> json) => _$_EventData(
      year: json['year'] as int?,
      month: (json['month'] as List<dynamic>?)
          ?.map((e) => Month.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_EventDataToJson(_$_EventData instance) =>
    <String, dynamic>{
      'year': instance.year,
      'month': instance.month,
    };

_$_Month _$$_MonthFromJson(Map<String, dynamic> json) => _$_Month(
      name: json['name'] as String?,
      date: json['date'] as String?,
    );

Map<String, dynamic> _$$_MonthToJson(_$_Month instance) => <String, dynamic>{
      'name': instance.name,
      'date': instance.date,
    };
