import 'package:freezed_annotation/freezed_annotation.dart';

part 'messager_model.freezed.dart';
part 'messager_model.g.dart';

@freezed
class Message with _$Message {
  factory Message({
    final int? id,
    final String? phone,
    final String? code,
    final String? codeExpire,
    final String? retryIn,
    final int? retryTimes,
    final String? deletedAt,
    final String? createdAt,
    final String? updatedAt,
    final String? deletedBy,
  }) = _Message;

  factory Message.fromJson(Map<String, dynamic> json) =>
      _$MessageFromJson(json);
}
