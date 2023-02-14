// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_otp_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RequestOTPModel _$RequestOTPModelFromJson(Map<String, dynamic> json) {
  return _RequestOTPModel.fromJson(json);
}

/// @nodoc
mixin _$RequestOTPModel {
  Message? get message => throw _privateConstructorUsedError;
  bool? get password => throw _privateConstructorUsedError;
  bool? get success => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequestOTPModelCopyWith<RequestOTPModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestOTPModelCopyWith<$Res> {
  factory $RequestOTPModelCopyWith(
          RequestOTPModel value, $Res Function(RequestOTPModel) then) =
      _$RequestOTPModelCopyWithImpl<$Res, RequestOTPModel>;
  @useResult
  $Res call({Message? message, bool? password, bool? success});

  $MessageCopyWith<$Res>? get message;
}

/// @nodoc
class _$RequestOTPModelCopyWithImpl<$Res, $Val extends RequestOTPModel>
    implements $RequestOTPModelCopyWith<$Res> {
  _$RequestOTPModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? password = freezed,
    Object? success = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as Message?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as bool?,
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MessageCopyWith<$Res>? get message {
    if (_value.message == null) {
      return null;
    }

    return $MessageCopyWith<$Res>(_value.message!, (value) {
      return _then(_value.copyWith(message: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_RequestOTPModelCopyWith<$Res>
    implements $RequestOTPModelCopyWith<$Res> {
  factory _$$_RequestOTPModelCopyWith(
          _$_RequestOTPModel value, $Res Function(_$_RequestOTPModel) then) =
      __$$_RequestOTPModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Message? message, bool? password, bool? success});

  @override
  $MessageCopyWith<$Res>? get message;
}

/// @nodoc
class __$$_RequestOTPModelCopyWithImpl<$Res>
    extends _$RequestOTPModelCopyWithImpl<$Res, _$_RequestOTPModel>
    implements _$$_RequestOTPModelCopyWith<$Res> {
  __$$_RequestOTPModelCopyWithImpl(
      _$_RequestOTPModel _value, $Res Function(_$_RequestOTPModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? password = freezed,
    Object? success = freezed,
  }) {
    return _then(_$_RequestOTPModel(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as Message?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as bool?,
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RequestOTPModel implements _RequestOTPModel {
  _$_RequestOTPModel({this.message, this.password, this.success});

  factory _$_RequestOTPModel.fromJson(Map<String, dynamic> json) =>
      _$$_RequestOTPModelFromJson(json);

  @override
  final Message? message;
  @override
  final bool? password;
  @override
  final bool? success;

  @override
  String toString() {
    return 'RequestOTPModel(message: $message, password: $password, success: $success)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RequestOTPModel &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.success, success) || other.success == success));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, password, success);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RequestOTPModelCopyWith<_$_RequestOTPModel> get copyWith =>
      __$$_RequestOTPModelCopyWithImpl<_$_RequestOTPModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RequestOTPModelToJson(
      this,
    );
  }
}

abstract class _RequestOTPModel implements RequestOTPModel {
  factory _RequestOTPModel(
      {final Message? message,
      final bool? password,
      final bool? success}) = _$_RequestOTPModel;

  factory _RequestOTPModel.fromJson(Map<String, dynamic> json) =
      _$_RequestOTPModel.fromJson;

  @override
  Message? get message;
  @override
  bool? get password;
  @override
  bool? get success;
  @override
  @JsonKey(ignore: true)
  _$$_RequestOTPModelCopyWith<_$_RequestOTPModel> get copyWith =>
      throw _privateConstructorUsedError;
}
