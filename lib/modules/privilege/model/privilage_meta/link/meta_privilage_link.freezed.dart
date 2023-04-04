// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meta_privilage_link.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MetaPrivilageLink _$MetaPrivilageLinkFromJson(Map<String, dynamic> json) {
  return _MetaPrivilageLink.fromJson(json);
}

/// @nodoc
mixin _$MetaPrivilageLink {
  String? get url => throw _privateConstructorUsedError;
  String? get label => throw _privateConstructorUsedError;
  bool? get active => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MetaPrivilageLinkCopyWith<MetaPrivilageLink> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetaPrivilageLinkCopyWith<$Res> {
  factory $MetaPrivilageLinkCopyWith(
          MetaPrivilageLink value, $Res Function(MetaPrivilageLink) then) =
      _$MetaPrivilageLinkCopyWithImpl<$Res, MetaPrivilageLink>;
  @useResult
  $Res call({String? url, String? label, bool? active});
}

/// @nodoc
class _$MetaPrivilageLinkCopyWithImpl<$Res, $Val extends MetaPrivilageLink>
    implements $MetaPrivilageLinkCopyWith<$Res> {
  _$MetaPrivilageLinkCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? label = freezed,
    Object? active = freezed,
  }) {
    return _then(_value.copyWith(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MetaPrivilageLinkCopyWith<$Res>
    implements $MetaPrivilageLinkCopyWith<$Res> {
  factory _$$_MetaPrivilageLinkCopyWith(_$_MetaPrivilageLink value,
          $Res Function(_$_MetaPrivilageLink) then) =
      __$$_MetaPrivilageLinkCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? url, String? label, bool? active});
}

/// @nodoc
class __$$_MetaPrivilageLinkCopyWithImpl<$Res>
    extends _$MetaPrivilageLinkCopyWithImpl<$Res, _$_MetaPrivilageLink>
    implements _$$_MetaPrivilageLinkCopyWith<$Res> {
  __$$_MetaPrivilageLinkCopyWithImpl(
      _$_MetaPrivilageLink _value, $Res Function(_$_MetaPrivilageLink) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? label = freezed,
    Object? active = freezed,
  }) {
    return _then(_$_MetaPrivilageLink(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MetaPrivilageLink implements _MetaPrivilageLink {
  _$_MetaPrivilageLink({this.url, this.label, this.active});

  factory _$_MetaPrivilageLink.fromJson(Map<String, dynamic> json) =>
      _$$_MetaPrivilageLinkFromJson(json);

  @override
  final String? url;
  @override
  final String? label;
  @override
  final bool? active;

  @override
  String toString() {
    return 'MetaPrivilageLink(url: $url, label: $label, active: $active)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MetaPrivilageLink &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.active, active) || other.active == active));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url, label, active);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MetaPrivilageLinkCopyWith<_$_MetaPrivilageLink> get copyWith =>
      __$$_MetaPrivilageLinkCopyWithImpl<_$_MetaPrivilageLink>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MetaPrivilageLinkToJson(
      this,
    );
  }
}

abstract class _MetaPrivilageLink implements MetaPrivilageLink {
  factory _MetaPrivilageLink(
      {final String? url,
      final String? label,
      final bool? active}) = _$_MetaPrivilageLink;

  factory _MetaPrivilageLink.fromJson(Map<String, dynamic> json) =
      _$_MetaPrivilageLink.fromJson;

  @override
  String? get url;
  @override
  String? get label;
  @override
  bool? get active;
  @override
  @JsonKey(ignore: true)
  _$$_MetaPrivilageLinkCopyWith<_$_MetaPrivilageLink> get copyWith =>
      throw _privateConstructorUsedError;
}
