import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_gender_model.freezed.dart';
part 'user_gender_model.g.dart';

@freezed
class Gender with _$Gender {
  factory Gender({
   final int? id,
   final String? display,
   final String? displayKhmer,
  }) = _Gender;

  factory Gender.fromJson(Map<String, dynamic> json) => _$GenderFromJson(json);
}
