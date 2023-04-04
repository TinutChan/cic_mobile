// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'request_otp_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RequestOTPModel _$$_RequestOTPModelFromJson(Map<String, dynamic> json) =>
    _$_RequestOTPModel(
      message: json['message'] == null
          ? null
          : Message.fromJson(json['message'] as Map<String, dynamic>),
      password: json['password'] as bool?,
      success: json['success'] as bool?,
    );

Map<String, dynamic> _$$_RequestOTPModelToJson(_$_RequestOTPModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'password': instance.password,
      'success': instance.success,
    };
