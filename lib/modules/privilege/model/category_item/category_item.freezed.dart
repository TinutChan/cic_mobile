// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CategoryItem _$CategoryItemFromJson(Map<String, dynamic> json) {
  return _CategoryItem.fromJson(json);
}

/// @nodoc
mixin _$CategoryItem {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'count_shop')
  int? get countShop => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'mime_type')
  String? get mimeType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryItemCopyWith<CategoryItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryItemCopyWith<$Res> {
  factory $CategoryItemCopyWith(
          CategoryItem value, $Res Function(CategoryItem) then) =
      _$CategoryItemCopyWithImpl<$Res, CategoryItem>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'count_shop') int? countShop,
      String? name,
      String? image,
      @JsonKey(name: 'mime_type') String? mimeType});
}

/// @nodoc
class _$CategoryItemCopyWithImpl<$Res, $Val extends CategoryItem>
    implements $CategoryItemCopyWith<$Res> {
  _$CategoryItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? countShop = freezed,
    Object? name = freezed,
    Object? image = freezed,
    Object? mimeType = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      countShop: freezed == countShop
          ? _value.countShop
          : countShop // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      mimeType: freezed == mimeType
          ? _value.mimeType
          : mimeType // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CategoryItemCopyWith<$Res>
    implements $CategoryItemCopyWith<$Res> {
  factory _$$_CategoryItemCopyWith(
          _$_CategoryItem value, $Res Function(_$_CategoryItem) then) =
      __$$_CategoryItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'count_shop') int? countShop,
      String? name,
      String? image,
      @JsonKey(name: 'mime_type') String? mimeType});
}

/// @nodoc
class __$$_CategoryItemCopyWithImpl<$Res>
    extends _$CategoryItemCopyWithImpl<$Res, _$_CategoryItem>
    implements _$$_CategoryItemCopyWith<$Res> {
  __$$_CategoryItemCopyWithImpl(
      _$_CategoryItem _value, $Res Function(_$_CategoryItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? countShop = freezed,
    Object? name = freezed,
    Object? image = freezed,
    Object? mimeType = freezed,
  }) {
    return _then(_$_CategoryItem(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      countShop: freezed == countShop
          ? _value.countShop
          : countShop // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      mimeType: freezed == mimeType
          ? _value.mimeType
          : mimeType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CategoryItem implements _CategoryItem {
  _$_CategoryItem(
      {this.id,
      @JsonKey(name: 'count_shop') this.countShop,
      this.name,
      this.image,
      @JsonKey(name: 'mime_type') this.mimeType});

  factory _$_CategoryItem.fromJson(Map<String, dynamic> json) =>
      _$$_CategoryItemFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'count_shop')
  final int? countShop;
  @override
  final String? name;
  @override
  final String? image;
  @override
  @JsonKey(name: 'mime_type')
  final String? mimeType;

  @override
  String toString() {
    return 'CategoryItem(id: $id, countShop: $countShop, name: $name, image: $image, mimeType: $mimeType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CategoryItem &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.countShop, countShop) ||
                other.countShop == countShop) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.mimeType, mimeType) ||
                other.mimeType == mimeType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, countShop, name, image, mimeType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CategoryItemCopyWith<_$_CategoryItem> get copyWith =>
      __$$_CategoryItemCopyWithImpl<_$_CategoryItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CategoryItemToJson(
      this,
    );
  }
}

abstract class _CategoryItem implements CategoryItem {
  factory _CategoryItem(
      {final int? id,
      @JsonKey(name: 'count_shop') final int? countShop,
      final String? name,
      final String? image,
      @JsonKey(name: 'mime_type') final String? mimeType}) = _$_CategoryItem;

  factory _CategoryItem.fromJson(Map<String, dynamic> json) =
      _$_CategoryItem.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'count_shop')
  int? get countShop;
  @override
  String? get name;
  @override
  String? get image;
  @override
  @JsonKey(name: 'mime_type')
  String? get mimeType;
  @override
  @JsonKey(ignore: true)
  _$$_CategoryItemCopyWith<_$_CategoryItem> get copyWith =>
      throw _privateConstructorUsedError;
}
