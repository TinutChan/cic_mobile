// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'screen_lock_model.freezed.dart';
part 'screen_lock_model.g.dart';

@freezed
class ScreenLock with _$ScreenLock {
  factory ScreenLock({
    bool? temporary,
    @JsonKey(name: "try_in") int? tryIn,
  }) = _ScreenLock;

  factory ScreenLock.fromJson(Map<String, dynamic> json) =>
      _$ScreenLockFromJson(json);
}
