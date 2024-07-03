// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'catalog_menu.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CatalogMenu _$CatalogMenuFromJson(Map<String, dynamic> json) {
  return _CatalogMenu.fromJson(json);
}

/// @nodoc
mixin _$CatalogMenu {
  bool? get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  int? get code => throw _privateConstructorUsedError;
  GetAllCatalogMenu? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CatalogMenuCopyWith<CatalogMenu> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatalogMenuCopyWith<$Res> {
  factory $CatalogMenuCopyWith(
          CatalogMenu value, $Res Function(CatalogMenu) then) =
      _$CatalogMenuCopyWithImpl<$Res, CatalogMenu>;
  @useResult
  $Res call(
      {bool? success, String? message, int? code, GetAllCatalogMenu? data});

  $GetAllCatalogMenuCopyWith<$Res>? get data;
}

/// @nodoc
class _$CatalogMenuCopyWithImpl<$Res, $Val extends CatalogMenu>
    implements $CatalogMenuCopyWith<$Res> {
  _$CatalogMenuCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? code = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as GetAllCatalogMenu?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GetAllCatalogMenuCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $GetAllCatalogMenuCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CatalogMenuImplCopyWith<$Res>
    implements $CatalogMenuCopyWith<$Res> {
  factory _$$CatalogMenuImplCopyWith(
          _$CatalogMenuImpl value, $Res Function(_$CatalogMenuImpl) then) =
      __$$CatalogMenuImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? success, String? message, int? code, GetAllCatalogMenu? data});

  @override
  $GetAllCatalogMenuCopyWith<$Res>? get data;
}

/// @nodoc
class __$$CatalogMenuImplCopyWithImpl<$Res>
    extends _$CatalogMenuCopyWithImpl<$Res, _$CatalogMenuImpl>
    implements _$$CatalogMenuImplCopyWith<$Res> {
  __$$CatalogMenuImplCopyWithImpl(
      _$CatalogMenuImpl _value, $Res Function(_$CatalogMenuImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? code = freezed,
    Object? data = freezed,
  }) {
    return _then(_$CatalogMenuImpl(
      freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as GetAllCatalogMenu?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CatalogMenuImpl implements _CatalogMenu {
  const _$CatalogMenuImpl(this.success, this.message, this.code, this.data);

  factory _$CatalogMenuImpl.fromJson(Map<String, dynamic> json) =>
      _$$CatalogMenuImplFromJson(json);

  @override
  final bool? success;
  @override
  final String? message;
  @override
  final int? code;
  @override
  final GetAllCatalogMenu? data;

  @override
  String toString() {
    return 'CatalogMenu(success: $success, message: $message, code: $code, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CatalogMenuImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, message, code, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CatalogMenuImplCopyWith<_$CatalogMenuImpl> get copyWith =>
      __$$CatalogMenuImplCopyWithImpl<_$CatalogMenuImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CatalogMenuImplToJson(
      this,
    );
  }
}

abstract class _CatalogMenu implements CatalogMenu {
  const factory _CatalogMenu(final bool? success, final String? message,
      final int? code, final GetAllCatalogMenu? data) = _$CatalogMenuImpl;

  factory _CatalogMenu.fromJson(Map<String, dynamic> json) =
      _$CatalogMenuImpl.fromJson;

  @override
  bool? get success;
  @override
  String? get message;
  @override
  int? get code;
  @override
  GetAllCatalogMenu? get data;
  @override
  @JsonKey(ignore: true)
  _$$CatalogMenuImplCopyWith<_$CatalogMenuImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GetAllCatalogMenu _$GetAllCatalogMenuFromJson(Map<String, dynamic> json) {
  return _GetAllCatalogMenu.fromJson(json);
}

/// @nodoc
mixin _$GetAllCatalogMenu {
  List<GetCatalogMenu>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetAllCatalogMenuCopyWith<GetAllCatalogMenu> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetAllCatalogMenuCopyWith<$Res> {
  factory $GetAllCatalogMenuCopyWith(
          GetAllCatalogMenu value, $Res Function(GetAllCatalogMenu) then) =
      _$GetAllCatalogMenuCopyWithImpl<$Res, GetAllCatalogMenu>;
  @useResult
  $Res call({List<GetCatalogMenu>? data});
}

/// @nodoc
class _$GetAllCatalogMenuCopyWithImpl<$Res, $Val extends GetAllCatalogMenu>
    implements $GetAllCatalogMenuCopyWith<$Res> {
  _$GetAllCatalogMenuCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<GetCatalogMenu>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetAllCatalogMenuImplCopyWith<$Res>
    implements $GetAllCatalogMenuCopyWith<$Res> {
  factory _$$GetAllCatalogMenuImplCopyWith(_$GetAllCatalogMenuImpl value,
          $Res Function(_$GetAllCatalogMenuImpl) then) =
      __$$GetAllCatalogMenuImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<GetCatalogMenu>? data});
}

/// @nodoc
class __$$GetAllCatalogMenuImplCopyWithImpl<$Res>
    extends _$GetAllCatalogMenuCopyWithImpl<$Res, _$GetAllCatalogMenuImpl>
    implements _$$GetAllCatalogMenuImplCopyWith<$Res> {
  __$$GetAllCatalogMenuImplCopyWithImpl(_$GetAllCatalogMenuImpl _value,
      $Res Function(_$GetAllCatalogMenuImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$GetAllCatalogMenuImpl(
      freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<GetCatalogMenu>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetAllCatalogMenuImpl implements _GetAllCatalogMenu {
  const _$GetAllCatalogMenuImpl(final List<GetCatalogMenu>? data)
      : _data = data;

  factory _$GetAllCatalogMenuImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetAllCatalogMenuImplFromJson(json);

  final List<GetCatalogMenu>? _data;
  @override
  List<GetCatalogMenu>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'GetAllCatalogMenu(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAllCatalogMenuImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAllCatalogMenuImplCopyWith<_$GetAllCatalogMenuImpl> get copyWith =>
      __$$GetAllCatalogMenuImplCopyWithImpl<_$GetAllCatalogMenuImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetAllCatalogMenuImplToJson(
      this,
    );
  }
}

abstract class _GetAllCatalogMenu implements GetAllCatalogMenu {
  const factory _GetAllCatalogMenu(final List<GetCatalogMenu>? data) =
      _$GetAllCatalogMenuImpl;

  factory _GetAllCatalogMenu.fromJson(Map<String, dynamic> json) =
      _$GetAllCatalogMenuImpl.fromJson;

  @override
  List<GetCatalogMenu>? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetAllCatalogMenuImplCopyWith<_$GetAllCatalogMenuImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GetCatalogMenu _$GetCatalogMenuFromJson(Map<String, dynamic> json) {
  return _GetCatalogMenu.fromJson(json);
}

/// @nodoc
mixin _$GetCatalogMenu {
  String? get slug => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get icon => throw _privateConstructorUsedError;
  bool? get showChildsInWebMobile => throw _privateConstructorUsedError;
  List<Childs>? get childs => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetCatalogMenuCopyWith<GetCatalogMenu> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetCatalogMenuCopyWith<$Res> {
  factory $GetCatalogMenuCopyWith(
          GetCatalogMenu value, $Res Function(GetCatalogMenu) then) =
      _$GetCatalogMenuCopyWithImpl<$Res, GetCatalogMenu>;
  @useResult
  $Res call(
      {String? slug,
      String? name,
      String? icon,
      bool? showChildsInWebMobile,
      List<Childs>? childs});
}

/// @nodoc
class _$GetCatalogMenuCopyWithImpl<$Res, $Val extends GetCatalogMenu>
    implements $GetCatalogMenuCopyWith<$Res> {
  _$GetCatalogMenuCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slug = freezed,
    Object? name = freezed,
    Object? icon = freezed,
    Object? showChildsInWebMobile = freezed,
    Object? childs = freezed,
  }) {
    return _then(_value.copyWith(
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      showChildsInWebMobile: freezed == showChildsInWebMobile
          ? _value.showChildsInWebMobile
          : showChildsInWebMobile // ignore: cast_nullable_to_non_nullable
              as bool?,
      childs: freezed == childs
          ? _value.childs
          : childs // ignore: cast_nullable_to_non_nullable
              as List<Childs>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetCatalogMenuImplCopyWith<$Res>
    implements $GetCatalogMenuCopyWith<$Res> {
  factory _$$GetCatalogMenuImplCopyWith(_$GetCatalogMenuImpl value,
          $Res Function(_$GetCatalogMenuImpl) then) =
      __$$GetCatalogMenuImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? slug,
      String? name,
      String? icon,
      bool? showChildsInWebMobile,
      List<Childs>? childs});
}

/// @nodoc
class __$$GetCatalogMenuImplCopyWithImpl<$Res>
    extends _$GetCatalogMenuCopyWithImpl<$Res, _$GetCatalogMenuImpl>
    implements _$$GetCatalogMenuImplCopyWith<$Res> {
  __$$GetCatalogMenuImplCopyWithImpl(
      _$GetCatalogMenuImpl _value, $Res Function(_$GetCatalogMenuImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slug = freezed,
    Object? name = freezed,
    Object? icon = freezed,
    Object? showChildsInWebMobile = freezed,
    Object? childs = freezed,
  }) {
    return _then(_$GetCatalogMenuImpl(
      freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == showChildsInWebMobile
          ? _value.showChildsInWebMobile
          : showChildsInWebMobile // ignore: cast_nullable_to_non_nullable
              as bool?,
      freezed == childs
          ? _value._childs
          : childs // ignore: cast_nullable_to_non_nullable
              as List<Childs>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetCatalogMenuImpl implements _GetCatalogMenu {
  const _$GetCatalogMenuImpl(this.slug, this.name, this.icon,
      this.showChildsInWebMobile, final List<Childs>? childs)
      : _childs = childs;

  factory _$GetCatalogMenuImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetCatalogMenuImplFromJson(json);

  @override
  final String? slug;
  @override
  final String? name;
  @override
  final String? icon;
  @override
  final bool? showChildsInWebMobile;
  final List<Childs>? _childs;
  @override
  List<Childs>? get childs {
    final value = _childs;
    if (value == null) return null;
    if (_childs is EqualUnmodifiableListView) return _childs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'GetCatalogMenu(slug: $slug, name: $name, icon: $icon, showChildsInWebMobile: $showChildsInWebMobile, childs: $childs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCatalogMenuImpl &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.showChildsInWebMobile, showChildsInWebMobile) ||
                other.showChildsInWebMobile == showChildsInWebMobile) &&
            const DeepCollectionEquality().equals(other._childs, _childs));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, slug, name, icon,
      showChildsInWebMobile, const DeepCollectionEquality().hash(_childs));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCatalogMenuImplCopyWith<_$GetCatalogMenuImpl> get copyWith =>
      __$$GetCatalogMenuImplCopyWithImpl<_$GetCatalogMenuImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetCatalogMenuImplToJson(
      this,
    );
  }
}

abstract class _GetCatalogMenu implements GetCatalogMenu {
  const factory _GetCatalogMenu(
      final String? slug,
      final String? name,
      final String? icon,
      final bool? showChildsInWebMobile,
      final List<Childs>? childs) = _$GetCatalogMenuImpl;

  factory _GetCatalogMenu.fromJson(Map<String, dynamic> json) =
      _$GetCatalogMenuImpl.fromJson;

  @override
  String? get slug;
  @override
  String? get name;
  @override
  String? get icon;
  @override
  bool? get showChildsInWebMobile;
  @override
  List<Childs>? get childs;
  @override
  @JsonKey(ignore: true)
  _$$GetCatalogMenuImplCopyWith<_$GetCatalogMenuImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Childs _$ChildsFromJson(Map<String, dynamic> json) {
  return _Childs.fromJson(json);
}

/// @nodoc
mixin _$Childs {
  String? get slug => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  bool? get showChildsInWebMobile => throw _privateConstructorUsedError;
  List<Childs>? get childs => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChildsCopyWith<Childs> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChildsCopyWith<$Res> {
  factory $ChildsCopyWith(Childs value, $Res Function(Childs) then) =
      _$ChildsCopyWithImpl<$Res, Childs>;
  @useResult
  $Res call(
      {String? slug,
      String? name,
      bool? showChildsInWebMobile,
      List<Childs>? childs});
}

/// @nodoc
class _$ChildsCopyWithImpl<$Res, $Val extends Childs>
    implements $ChildsCopyWith<$Res> {
  _$ChildsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slug = freezed,
    Object? name = freezed,
    Object? showChildsInWebMobile = freezed,
    Object? childs = freezed,
  }) {
    return _then(_value.copyWith(
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      showChildsInWebMobile: freezed == showChildsInWebMobile
          ? _value.showChildsInWebMobile
          : showChildsInWebMobile // ignore: cast_nullable_to_non_nullable
              as bool?,
      childs: freezed == childs
          ? _value.childs
          : childs // ignore: cast_nullable_to_non_nullable
              as List<Childs>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChildsImplCopyWith<$Res> implements $ChildsCopyWith<$Res> {
  factory _$$ChildsImplCopyWith(
          _$ChildsImpl value, $Res Function(_$ChildsImpl) then) =
      __$$ChildsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? slug,
      String? name,
      bool? showChildsInWebMobile,
      List<Childs>? childs});
}

/// @nodoc
class __$$ChildsImplCopyWithImpl<$Res>
    extends _$ChildsCopyWithImpl<$Res, _$ChildsImpl>
    implements _$$ChildsImplCopyWith<$Res> {
  __$$ChildsImplCopyWithImpl(
      _$ChildsImpl _value, $Res Function(_$ChildsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slug = freezed,
    Object? name = freezed,
    Object? showChildsInWebMobile = freezed,
    Object? childs = freezed,
  }) {
    return _then(_$ChildsImpl(
      freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == showChildsInWebMobile
          ? _value.showChildsInWebMobile
          : showChildsInWebMobile // ignore: cast_nullable_to_non_nullable
              as bool?,
      freezed == childs
          ? _value._childs
          : childs // ignore: cast_nullable_to_non_nullable
              as List<Childs>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChildsImpl implements _Childs {
  const _$ChildsImpl(this.slug, this.name, this.showChildsInWebMobile,
      final List<Childs>? childs)
      : _childs = childs;

  factory _$ChildsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChildsImplFromJson(json);

  @override
  final String? slug;
  @override
  final String? name;
  @override
  final bool? showChildsInWebMobile;
  final List<Childs>? _childs;
  @override
  List<Childs>? get childs {
    final value = _childs;
    if (value == null) return null;
    if (_childs is EqualUnmodifiableListView) return _childs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Childs(slug: $slug, name: $name, showChildsInWebMobile: $showChildsInWebMobile, childs: $childs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChildsImpl &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.showChildsInWebMobile, showChildsInWebMobile) ||
                other.showChildsInWebMobile == showChildsInWebMobile) &&
            const DeepCollectionEquality().equals(other._childs, _childs));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, slug, name,
      showChildsInWebMobile, const DeepCollectionEquality().hash(_childs));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChildsImplCopyWith<_$ChildsImpl> get copyWith =>
      __$$ChildsImplCopyWithImpl<_$ChildsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChildsImplToJson(
      this,
    );
  }
}

abstract class _Childs implements Childs {
  const factory _Childs(
      final String? slug,
      final String? name,
      final bool? showChildsInWebMobile,
      final List<Childs>? childs) = _$ChildsImpl;

  factory _Childs.fromJson(Map<String, dynamic> json) = _$ChildsImpl.fromJson;

  @override
  String? get slug;
  @override
  String? get name;
  @override
  bool? get showChildsInWebMobile;
  @override
  List<Childs>? get childs;
  @override
  @JsonKey(ignore: true)
  _$$ChildsImplCopyWith<_$ChildsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
