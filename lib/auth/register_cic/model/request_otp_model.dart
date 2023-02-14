import 'package:freezed_annotation/freezed_annotation.dart';

import 'message_models/messager_model.dart';

part 'request_otp_model.freezed.dart';
part 'request_otp_model.g.dart';

@freezed
class RequestOTPModel with _$RequestOTPModel {
  factory RequestOTPModel({
    final Message? message,
    final bool? password,
    final bool? success,
  }) = _RequestOTPModel;

  factory RequestOTPModel.fromJson(Map<String, dynamic> json) =>
      _$RequestOTPModelFromJson(json);
}
