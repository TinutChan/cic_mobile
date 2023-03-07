// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'screen_lock_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ScreenLock _$ScreenLockFromJson(Map<String, dynamic> json) {
  return _ScreenLock.fromJson(json);
}

/// @nodoc
mixin _$ScreenLock {
  bool? get temporary => throw _privateConstructorUsedError;
  @JsonKey(name: "try_in")
  int? get tryIn => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ScreenLockCopyWith<ScreenLock> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScreenLockCopyWith<$Res> {
  factory $ScreenLockCopyWith(
          ScreenLock value, $Res Function(ScreenLock) then) =
      _$ScreenLockCopyWithImpl<$Res, ScreenLock>;
  @useResult
  $Res call({bool? temporary, @JsonKey(name: "try_in") int? tryIn});
}

/// @nodoc
class _$ScreenLockCopyWithImpl<$Res, $Val extends ScreenLock>
    implements $ScreenLockCopyWith<$Res> {
  _$ScreenLockCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temporary = freezed,
    Object? tryIn = freezed,
  }) {
    return _then(_value.copyWith(
      temporary: freezed == temporary
          ? _value.temporary
          : temporary // ignore: cast_nullable_to_non_nullable
              as bool?,
      tryIn: freezed == tryIn
          ? _value.tryIn
          : tryIn // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ScreenLockCopyWith<$Res>
    implements $ScreenLockCopyWith<$Res> {
  factory _$$_ScreenLockCopyWith(
          _$_ScreenLock value, $Res Function(_$_ScreenLock) then) =
      __$$_ScreenLockCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? temporary, @JsonKey(name: "try_in") int? tryIn});
}

/// @nodoc
class __$$_ScreenLockCopyWithImpl<$Res>
    extends _$ScreenLockCopyWithImpl<$Res, _$_ScreenLock>
    implements _$$_ScreenLockCopyWith<$Res> {
  __$$_ScreenLockCopyWithImpl(
      _$_ScreenLock _value, $Res Function(_$_ScreenLock) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temporary = freezed,
    Object? tryIn = freezed,
  }) {
    return _then(_$_ScreenLock(
      temporary: freezed == temporary
          ? _value.temporary
          : temporary // ignore: cast_nullable_to_non_nullable
              as bool?,
      tryIn: freezed == tryIn
          ? _value.tryIn
          : tryIn // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ScreenLock implements _ScreenLock {
  _$_ScreenLock({this.temporary, @JsonKey(name: "try_in") this.tryIn});

  factory _$_ScreenLock.fromJson(Map<String, dynamic> json) =>
      _$$_ScreenLockFromJson(json);

  @override
  final bool? temporary;
  @override
  @JsonKey(name: "try_in")
  final int? tryIn;

  @override
  String toString() {
    return 'ScreenLock(temporary: $temporary, tryIn: $tryIn)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ScreenLock &&
            (identical(other.temporary, temporary) ||
                other.temporary == temporary) &&
            (identical(other.tryIn, tryIn) || other.tryIn == tryIn));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, temporary, tryIn);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ScreenLockCopyWith<_$_ScreenLock> get copyWith =>
      __$$_ScreenLockCopyWithImpl<_$_ScreenLock>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ScreenLockToJson(
      this,
    );
  }
}

abstract class _ScreenLock implements ScreenLock {
  factory _ScreenLock(
      {final bool? temporary,
      @JsonKey(name: "try_in") final int? tryIn}) = _$_ScreenLock;

  factory _ScreenLock.fromJson(Map<String, dynamic> json) =
      _$_ScreenLock.fromJson;

  @override
  bool? get temporary;
  @override
  @JsonKey(name: "try_in")
  int? get tryIn;
  @override
  @JsonKey(ignore: true)
  _$$_ScreenLockCopyWith<_$_ScreenLock> get copyWith =>
      throw _privateConstructorUsedError;
}
