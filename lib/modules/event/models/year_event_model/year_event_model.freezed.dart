// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'year_event_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EventYearModel _$EventYearModelFromJson(Map<String, dynamic> json) {
  return _EventYearModel.fromJson(json);
}

/// @nodoc
mixin _$EventYearModel {
  int? get year => throw _privateConstructorUsedError;
  List<EventMonthlyModel>? get month => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EventYearModelCopyWith<EventYearModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventYearModelCopyWith<$Res> {
  factory $EventYearModelCopyWith(
          EventYearModel value, $Res Function(EventYearModel) then) =
      _$EventYearModelCopyWithImpl<$Res, EventYearModel>;
  @useResult
  $Res call({int? year, List<EventMonthlyModel>? month});
}

/// @nodoc
class _$EventYearModelCopyWithImpl<$Res, $Val extends EventYearModel>
    implements $EventYearModelCopyWith<$Res> {
  _$EventYearModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? year = freezed,
    Object? month = freezed,
  }) {
    return _then(_value.copyWith(
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int?,
      month: freezed == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as List<EventMonthlyModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EventYearModelCopyWith<$Res>
    implements $EventYearModelCopyWith<$Res> {
  factory _$$_EventYearModelCopyWith(
          _$_EventYearModel value, $Res Function(_$_EventYearModel) then) =
      __$$_EventYearModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? year, List<EventMonthlyModel>? month});
}

/// @nodoc
class __$$_EventYearModelCopyWithImpl<$Res>
    extends _$EventYearModelCopyWithImpl<$Res, _$_EventYearModel>
    implements _$$_EventYearModelCopyWith<$Res> {
  __$$_EventYearModelCopyWithImpl(
      _$_EventYearModel _value, $Res Function(_$_EventYearModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? year = freezed,
    Object? month = freezed,
  }) {
    return _then(_$_EventYearModel(
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int?,
      month: freezed == month
          ? _value._month
          : month // ignore: cast_nullable_to_non_nullable
              as List<EventMonthlyModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EventYearModel implements _EventYearModel {
  _$_EventYearModel({this.year, final List<EventMonthlyModel>? month})
      : _month = month;

  factory _$_EventYearModel.fromJson(Map<String, dynamic> json) =>
      _$$_EventYearModelFromJson(json);

  @override
  final int? year;
  final List<EventMonthlyModel>? _month;
  @override
  List<EventMonthlyModel>? get month {
    final value = _month;
    if (value == null) return null;
    if (_month is EqualUnmodifiableListView) return _month;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'EventYearModel(year: $year, month: $month)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventYearModel &&
            (identical(other.year, year) || other.year == year) &&
            const DeepCollectionEquality().equals(other._month, _month));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, year, const DeepCollectionEquality().hash(_month));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventYearModelCopyWith<_$_EventYearModel> get copyWith =>
      __$$_EventYearModelCopyWithImpl<_$_EventYearModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EventYearModelToJson(
      this,
    );
  }
}

abstract class _EventYearModel implements EventYearModel {
  factory _EventYearModel(
      {final int? year,
      final List<EventMonthlyModel>? month}) = _$_EventYearModel;

  factory _EventYearModel.fromJson(Map<String, dynamic> json) =
      _$_EventYearModel.fromJson;

  @override
  int? get year;
  @override
  List<EventMonthlyModel>? get month;
  @override
  @JsonKey(ignore: true)
  _$$_EventYearModelCopyWith<_$_EventYearModel> get copyWith =>
      throw _privateConstructorUsedError;
}
