// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'childs_respose.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChildsRespose _$ChildsResposeFromJson(Map<String, dynamic> json) {
  return _ChildsRespose.fromJson(json);
}

/// @nodoc
mixin _$ChildsRespose {
  bool? get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  int? get code => throw _privateConstructorUsedError;
  Datums? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChildsResposeCopyWith<ChildsRespose> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChildsResposeCopyWith<$Res> {
  factory $ChildsResposeCopyWith(
          ChildsRespose value, $Res Function(ChildsRespose) then) =
      _$ChildsResposeCopyWithImpl<$Res, ChildsRespose>;
  @useResult
  $Res call({bool? success, String? message, int? code, Datums? data});

  $DatumsCopyWith<$Res>? get data;
}

/// @nodoc
class _$ChildsResposeCopyWithImpl<$Res, $Val extends ChildsRespose>
    implements $ChildsResposeCopyWith<$Res> {
  _$ChildsResposeCopyWithImpl(this._value, this._then);

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
              as Datums?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DatumsCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DatumsCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChildsResposeImplCopyWith<$Res>
    implements $ChildsResposeCopyWith<$Res> {
  factory _$$ChildsResposeImplCopyWith(
          _$ChildsResposeImpl value, $Res Function(_$ChildsResposeImpl) then) =
      __$$ChildsResposeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? success, String? message, int? code, Datums? data});

  @override
  $DatumsCopyWith<$Res>? get data;
}

/// @nodoc
class __$$ChildsResposeImplCopyWithImpl<$Res>
    extends _$ChildsResposeCopyWithImpl<$Res, _$ChildsResposeImpl>
    implements _$$ChildsResposeImplCopyWith<$Res> {
  __$$ChildsResposeImplCopyWithImpl(
      _$ChildsResposeImpl _value, $Res Function(_$ChildsResposeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? code = freezed,
    Object? data = freezed,
  }) {
    return _then(_$ChildsResposeImpl(
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
              as Datums?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$ChildsResposeImpl implements _ChildsRespose {
  const _$ChildsResposeImpl(this.success, this.message, this.code, this.data);

  factory _$ChildsResposeImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChildsResposeImplFromJson(json);

  @override
  final bool? success;
  @override
  final String? message;
  @override
  final int? code;
  @override
  final Datums? data;

  @override
  String toString() {
    return 'ChildsRespose(success: $success, message: $message, code: $code, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChildsResposeImpl &&
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
  _$$ChildsResposeImplCopyWith<_$ChildsResposeImpl> get copyWith =>
      __$$ChildsResposeImplCopyWithImpl<_$ChildsResposeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChildsResposeImplToJson(
      this,
    );
  }
}

abstract class _ChildsRespose implements ChildsRespose {
  const factory _ChildsRespose(final bool? success, final String? message,
      final int? code, final Datums? data) = _$ChildsResposeImpl;

  factory _ChildsRespose.fromJson(Map<String, dynamic> json) =
      _$ChildsResposeImpl.fromJson;

  @override
  bool? get success;
  @override
  String? get message;
  @override
  int? get code;
  @override
  Datums? get data;
  @override
  @JsonKey(ignore: true)
  _$$ChildsResposeImplCopyWith<_$ChildsResposeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Datums _$DatumsFromJson(Map<String, dynamic> json) {
  return _Datums.fromJson(json);
}

/// @nodoc
mixin _$Datums {
  List<ChildData> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DatumsCopyWith<Datums> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DatumsCopyWith<$Res> {
  factory $DatumsCopyWith(Datums value, $Res Function(Datums) then) =
      _$DatumsCopyWithImpl<$Res, Datums>;
  @useResult
  $Res call({List<ChildData> data});
}

/// @nodoc
class _$DatumsCopyWithImpl<$Res, $Val extends Datums>
    implements $DatumsCopyWith<$Res> {
  _$DatumsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ChildData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DatumsImplCopyWith<$Res> implements $DatumsCopyWith<$Res> {
  factory _$$DatumsImplCopyWith(
          _$DatumsImpl value, $Res Function(_$DatumsImpl) then) =
      __$$DatumsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ChildData> data});
}

/// @nodoc
class __$$DatumsImplCopyWithImpl<$Res>
    extends _$DatumsCopyWithImpl<$Res, _$DatumsImpl>
    implements _$$DatumsImplCopyWith<$Res> {
  __$$DatumsImplCopyWithImpl(
      _$DatumsImpl _value, $Res Function(_$DatumsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$DatumsImpl(
      null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ChildData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DatumsImpl implements _Datums {
  const _$DatumsImpl(final List<ChildData> data) : _data = data;

  factory _$DatumsImpl.fromJson(Map<String, dynamic> json) =>
      _$$DatumsImplFromJson(json);

  final List<ChildData> _data;
  @override
  List<ChildData> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'Datums(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DatumsImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DatumsImplCopyWith<_$DatumsImpl> get copyWith =>
      __$$DatumsImplCopyWithImpl<_$DatumsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DatumsImplToJson(
      this,
    );
  }
}

abstract class _Datums implements Datums {
  const factory _Datums(final List<ChildData> data) = _$DatumsImpl;

  factory _Datums.fromJson(Map<String, dynamic> json) = _$DatumsImpl.fromJson;

  @override
  List<ChildData> get data;
  @override
  @JsonKey(ignore: true)
  _$$DatumsImplCopyWith<_$DatumsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ChildData _$ChildDataFromJson(Map<String, dynamic> json) {
  return _ChildData.fromJson(json);
}

/// @nodoc
mixin _$ChildData {
  String? get slug => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get icon => throw _privateConstructorUsedError;
  bool? get showChildsInWebMobile => throw _privateConstructorUsedError;
  List<Childs>? get childs => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChildDataCopyWith<ChildData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChildDataCopyWith<$Res> {
  factory $ChildDataCopyWith(ChildData value, $Res Function(ChildData) then) =
      _$ChildDataCopyWithImpl<$Res, ChildData>;
  @useResult
  $Res call(
      {String? slug,
      String? name,
      String? icon,
      bool? showChildsInWebMobile,
      List<Childs>? childs});
}

/// @nodoc
class _$ChildDataCopyWithImpl<$Res, $Val extends ChildData>
    implements $ChildDataCopyWith<$Res> {
  _$ChildDataCopyWithImpl(this._value, this._then);

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
abstract class _$$ChildDataImplCopyWith<$Res>
    implements $ChildDataCopyWith<$Res> {
  factory _$$ChildDataImplCopyWith(
          _$ChildDataImpl value, $Res Function(_$ChildDataImpl) then) =
      __$$ChildDataImplCopyWithImpl<$Res>;
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
class __$$ChildDataImplCopyWithImpl<$Res>
    extends _$ChildDataCopyWithImpl<$Res, _$ChildDataImpl>
    implements _$$ChildDataImplCopyWith<$Res> {
  __$$ChildDataImplCopyWithImpl(
      _$ChildDataImpl _value, $Res Function(_$ChildDataImpl) _then)
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
    return _then(_$ChildDataImpl(
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
class _$ChildDataImpl implements _ChildData {
  const _$ChildDataImpl(this.slug, this.name, this.icon,
      this.showChildsInWebMobile, final List<Childs>? childs)
      : _childs = childs;

  factory _$ChildDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChildDataImplFromJson(json);

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
    return 'ChildData(slug: $slug, name: $name, icon: $icon, showChildsInWebMobile: $showChildsInWebMobile, childs: $childs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChildDataImpl &&
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
  _$$ChildDataImplCopyWith<_$ChildDataImpl> get copyWith =>
      __$$ChildDataImplCopyWithImpl<_$ChildDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChildDataImplToJson(
      this,
    );
  }
}

abstract class _ChildData implements ChildData {
  const factory _ChildData(
      final String? slug,
      final String? name,
      final String? icon,
      final bool? showChildsInWebMobile,
      final List<Childs>? childs) = _$ChildDataImpl;

  factory _ChildData.fromJson(Map<String, dynamic> json) =
      _$ChildDataImpl.fromJson;

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
  _$$ChildDataImplCopyWith<_$ChildDataImpl> get copyWith =>
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

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChildsCopyWith<Childs> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChildsCopyWith<$Res> {
  factory $ChildsCopyWith(Childs value, $Res Function(Childs) then) =
      _$ChildsCopyWithImpl<$Res, Childs>;
  @useResult
  $Res call({String? slug, String? name, bool? showChildsInWebMobile});
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
  $Res call({String? slug, String? name, bool? showChildsInWebMobile});
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChildsImpl implements _Childs {
  const _$ChildsImpl(this.slug, this.name, this.showChildsInWebMobile);

  factory _$ChildsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChildsImplFromJson(json);

  @override
  final String? slug;
  @override
  final String? name;
  @override
  final bool? showChildsInWebMobile;

  @override
  String toString() {
    return 'Childs(slug: $slug, name: $name, showChildsInWebMobile: $showChildsInWebMobile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChildsImpl &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.showChildsInWebMobile, showChildsInWebMobile) ||
                other.showChildsInWebMobile == showChildsInWebMobile));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, slug, name, showChildsInWebMobile);

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
  const factory _Childs(final String? slug, final String? name,
      final bool? showChildsInWebMobile) = _$ChildsImpl;

  factory _Childs.fromJson(Map<String, dynamic> json) = _$ChildsImpl.fromJson;

  @override
  String? get slug;
  @override
  String? get name;
  @override
  bool? get showChildsInWebMobile;
  @override
  @JsonKey(ignore: true)
  _$$ChildsImplCopyWith<_$ChildsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
