// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'privilage_pagination_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PrivilagePagination _$PrivilagePaginationFromJson(Map<String, dynamic> json) {
  return _PrivilagePagination.fromJson(json);
}

/// @nodoc
mixin _$PrivilagePagination {
  @JsonKey(name: 'data')
  List<PrivilegeData>? get data => throw _privateConstructorUsedError;
  @JsonKey(name: 'meta')
  PrivilageMetaModel? get meta => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PrivilagePaginationCopyWith<PrivilagePagination> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrivilagePaginationCopyWith<$Res> {
  factory $PrivilagePaginationCopyWith(
          PrivilagePagination value, $Res Function(PrivilagePagination) then) =
      _$PrivilagePaginationCopyWithImpl<$Res, PrivilagePagination>;
  @useResult
  $Res call(
      {@JsonKey(name: 'data') List<PrivilegeData>? data,
      @JsonKey(name: 'meta') PrivilageMetaModel? meta});

  $PrivilageMetaModelCopyWith<$Res>? get meta;
}

/// @nodoc
class _$PrivilagePaginationCopyWithImpl<$Res, $Val extends PrivilagePagination>
    implements $PrivilagePaginationCopyWith<$Res> {
  _$PrivilagePaginationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? meta = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<PrivilegeData>?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as PrivilageMetaModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PrivilageMetaModelCopyWith<$Res>? get meta {
    if (_value.meta == null) {
      return null;
    }

    return $PrivilageMetaModelCopyWith<$Res>(_value.meta!, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PrivilagePaginationCopyWith<$Res>
    implements $PrivilagePaginationCopyWith<$Res> {
  factory _$$_PrivilagePaginationCopyWith(_$_PrivilagePagination value,
          $Res Function(_$_PrivilagePagination) then) =
      __$$_PrivilagePaginationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'data') List<PrivilegeData>? data,
      @JsonKey(name: 'meta') PrivilageMetaModel? meta});

  @override
  $PrivilageMetaModelCopyWith<$Res>? get meta;
}

/// @nodoc
class __$$_PrivilagePaginationCopyWithImpl<$Res>
    extends _$PrivilagePaginationCopyWithImpl<$Res, _$_PrivilagePagination>
    implements _$$_PrivilagePaginationCopyWith<$Res> {
  __$$_PrivilagePaginationCopyWithImpl(_$_PrivilagePagination _value,
      $Res Function(_$_PrivilagePagination) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? meta = freezed,
  }) {
    return _then(_$_PrivilagePagination(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<PrivilegeData>?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as PrivilageMetaModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PrivilagePagination implements _PrivilagePagination {
  _$_PrivilagePagination(
      {@JsonKey(name: 'data') final List<PrivilegeData>? data,
      @JsonKey(name: 'meta') this.meta})
      : _data = data;

  factory _$_PrivilagePagination.fromJson(Map<String, dynamic> json) =>
      _$$_PrivilagePaginationFromJson(json);

  final List<PrivilegeData>? _data;
  @override
  @JsonKey(name: 'data')
  List<PrivilegeData>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'meta')
  final PrivilageMetaModel? meta;

  @override
  String toString() {
    return 'PrivilagePagination(data: $data, meta: $meta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PrivilagePagination &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.meta, meta) || other.meta == meta));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_data), meta);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PrivilagePaginationCopyWith<_$_PrivilagePagination> get copyWith =>
      __$$_PrivilagePaginationCopyWithImpl<_$_PrivilagePagination>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PrivilagePaginationToJson(
      this,
    );
  }
}

abstract class _PrivilagePagination implements PrivilagePagination {
  factory _PrivilagePagination(
          {@JsonKey(name: 'data') final List<PrivilegeData>? data,
          @JsonKey(name: 'meta') final PrivilageMetaModel? meta}) =
      _$_PrivilagePagination;

  factory _PrivilagePagination.fromJson(Map<String, dynamic> json) =
      _$_PrivilagePagination.fromJson;

  @override
  @JsonKey(name: 'data')
  List<PrivilegeData>? get data;
  @override
  @JsonKey(name: 'meta')
  PrivilageMetaModel? get meta;
  @override
  @JsonKey(ignore: true)
  _$$_PrivilagePaginationCopyWith<_$_PrivilagePagination> get copyWith =>
      throw _privateConstructorUsedError;
}
