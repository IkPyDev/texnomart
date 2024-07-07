// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sliders_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SlidersResponse _$SlidersResponseFromJson(Map<String, dynamic> json) {
  return _SlidersResponse.fromJson(json);
}

/// @nodoc
mixin _$SlidersResponse {
  bool? get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  int? get code => throw _privateConstructorUsedError;
  SlidersData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SlidersResponseCopyWith<SlidersResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SlidersResponseCopyWith<$Res> {
  factory $SlidersResponseCopyWith(
          SlidersResponse value, $Res Function(SlidersResponse) then) =
      _$SlidersResponseCopyWithImpl<$Res, SlidersResponse>;
  @useResult
  $Res call({bool? success, String? message, int? code, SlidersData? data});

  $SlidersDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$SlidersResponseCopyWithImpl<$Res, $Val extends SlidersResponse>
    implements $SlidersResponseCopyWith<$Res> {
  _$SlidersResponseCopyWithImpl(this._value, this._then);

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
              as SlidersData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SlidersDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $SlidersDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SlidersResponseImplCopyWith<$Res>
    implements $SlidersResponseCopyWith<$Res> {
  factory _$$SlidersResponseImplCopyWith(_$SlidersResponseImpl value,
          $Res Function(_$SlidersResponseImpl) then) =
      __$$SlidersResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? success, String? message, int? code, SlidersData? data});

  @override
  $SlidersDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$SlidersResponseImplCopyWithImpl<$Res>
    extends _$SlidersResponseCopyWithImpl<$Res, _$SlidersResponseImpl>
    implements _$$SlidersResponseImplCopyWith<$Res> {
  __$$SlidersResponseImplCopyWithImpl(
      _$SlidersResponseImpl _value, $Res Function(_$SlidersResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? code = freezed,
    Object? data = freezed,
  }) {
    return _then(_$SlidersResponseImpl(
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
              as SlidersData?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$SlidersResponseImpl implements _SlidersResponse {
  const _$SlidersResponseImpl(this.success, this.message, this.code, this.data);

  factory _$SlidersResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SlidersResponseImplFromJson(json);

  @override
  final bool? success;
  @override
  final String? message;
  @override
  final int? code;
  @override
  final SlidersData? data;

  @override
  String toString() {
    return 'SlidersResponse(success: $success, message: $message, code: $code, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SlidersResponseImpl &&
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
  _$$SlidersResponseImplCopyWith<_$SlidersResponseImpl> get copyWith =>
      __$$SlidersResponseImplCopyWithImpl<_$SlidersResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SlidersResponseImplToJson(
      this,
    );
  }
}

abstract class _SlidersResponse implements SlidersResponse {
  const factory _SlidersResponse(final bool? success, final String? message,
      final int? code, final SlidersData? data) = _$SlidersResponseImpl;

  factory _SlidersResponse.fromJson(Map<String, dynamic> json) =
      _$SlidersResponseImpl.fromJson;

  @override
  bool? get success;
  @override
  String? get message;
  @override
  int? get code;
  @override
  SlidersData? get data;
  @override
  @JsonKey(ignore: true)
  _$$SlidersResponseImplCopyWith<_$SlidersResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SlidersData _$SlidersDataFromJson(Map<String, dynamic> json) {
  return _SlidersDate.fromJson(json);
}

/// @nodoc
mixin _$SlidersData {
  @JsonKey(name: "data")
  List<SlidersDatum>? get datum => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SlidersDataCopyWith<SlidersData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SlidersDataCopyWith<$Res> {
  factory $SlidersDataCopyWith(
          SlidersData value, $Res Function(SlidersData) then) =
      _$SlidersDataCopyWithImpl<$Res, SlidersData>;
  @useResult
  $Res call({@JsonKey(name: "data") List<SlidersDatum>? datum});
}

/// @nodoc
class _$SlidersDataCopyWithImpl<$Res, $Val extends SlidersData>
    implements $SlidersDataCopyWith<$Res> {
  _$SlidersDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? datum = freezed,
  }) {
    return _then(_value.copyWith(
      datum: freezed == datum
          ? _value.datum
          : datum // ignore: cast_nullable_to_non_nullable
              as List<SlidersDatum>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SlidersDateImplCopyWith<$Res>
    implements $SlidersDataCopyWith<$Res> {
  factory _$$SlidersDateImplCopyWith(
          _$SlidersDateImpl value, $Res Function(_$SlidersDateImpl) then) =
      __$$SlidersDateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "data") List<SlidersDatum>? datum});
}

/// @nodoc
class __$$SlidersDateImplCopyWithImpl<$Res>
    extends _$SlidersDataCopyWithImpl<$Res, _$SlidersDateImpl>
    implements _$$SlidersDateImplCopyWith<$Res> {
  __$$SlidersDateImplCopyWithImpl(
      _$SlidersDateImpl _value, $Res Function(_$SlidersDateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? datum = freezed,
  }) {
    return _then(_$SlidersDateImpl(
      freezed == datum
          ? _value._datum
          : datum // ignore: cast_nullable_to_non_nullable
              as List<SlidersDatum>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$SlidersDateImpl implements _SlidersDate {
  const _$SlidersDateImpl(
      @JsonKey(name: "data") final List<SlidersDatum>? datum)
      : _datum = datum;

  factory _$SlidersDateImpl.fromJson(Map<String, dynamic> json) =>
      _$$SlidersDateImplFromJson(json);

  final List<SlidersDatum>? _datum;
  @override
  @JsonKey(name: "data")
  List<SlidersDatum>? get datum {
    final value = _datum;
    if (value == null) return null;
    if (_datum is EqualUnmodifiableListView) return _datum;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SlidersData(datum: $datum)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SlidersDateImpl &&
            const DeepCollectionEquality().equals(other._datum, _datum));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_datum));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SlidersDateImplCopyWith<_$SlidersDateImpl> get copyWith =>
      __$$SlidersDateImplCopyWithImpl<_$SlidersDateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SlidersDateImplToJson(
      this,
    );
  }
}

abstract class _SlidersDate implements SlidersData {
  const factory _SlidersDate(
          @JsonKey(name: "data") final List<SlidersDatum>? datum) =
      _$SlidersDateImpl;

  factory _SlidersDate.fromJson(Map<String, dynamic> json) =
      _$SlidersDateImpl.fromJson;

  @override
  @JsonKey(name: "data")
  List<SlidersDatum>? get datum;
  @override
  @JsonKey(ignore: true)
  _$$SlidersDateImplCopyWith<_$SlidersDateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SlidersDatum _$SlidersDatumFromJson(Map<String, dynamic> json) {
  return _SlidersDatum.fromJson(json);
}

/// @nodoc
mixin _$SlidersDatum {
  int? get id => throw _privateConstructorUsedError;
  String? get link => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get imageWeb => throw _privateConstructorUsedError;
  String? get imageMobileWeb => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SlidersDatumCopyWith<SlidersDatum> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SlidersDatumCopyWith<$Res> {
  factory $SlidersDatumCopyWith(
          SlidersDatum value, $Res Function(SlidersDatum) then) =
      _$SlidersDatumCopyWithImpl<$Res, SlidersDatum>;
  @useResult
  $Res call(
      {int? id,
      String? link,
      String? title,
      String? imageWeb,
      String? imageMobileWeb});
}

/// @nodoc
class _$SlidersDatumCopyWithImpl<$Res, $Val extends SlidersDatum>
    implements $SlidersDatumCopyWith<$Res> {
  _$SlidersDatumCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? link = freezed,
    Object? title = freezed,
    Object? imageWeb = freezed,
    Object? imageMobileWeb = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      imageWeb: freezed == imageWeb
          ? _value.imageWeb
          : imageWeb // ignore: cast_nullable_to_non_nullable
              as String?,
      imageMobileWeb: freezed == imageMobileWeb
          ? _value.imageMobileWeb
          : imageMobileWeb // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SlidersDatumImplCopyWith<$Res>
    implements $SlidersDatumCopyWith<$Res> {
  factory _$$SlidersDatumImplCopyWith(
          _$SlidersDatumImpl value, $Res Function(_$SlidersDatumImpl) then) =
      __$$SlidersDatumImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? link,
      String? title,
      String? imageWeb,
      String? imageMobileWeb});
}

/// @nodoc
class __$$SlidersDatumImplCopyWithImpl<$Res>
    extends _$SlidersDatumCopyWithImpl<$Res, _$SlidersDatumImpl>
    implements _$$SlidersDatumImplCopyWith<$Res> {
  __$$SlidersDatumImplCopyWithImpl(
      _$SlidersDatumImpl _value, $Res Function(_$SlidersDatumImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? link = freezed,
    Object? title = freezed,
    Object? imageWeb = freezed,
    Object? imageMobileWeb = freezed,
  }) {
    return _then(_$SlidersDatumImpl(
      freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == imageWeb
          ? _value.imageWeb
          : imageWeb // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == imageMobileWeb
          ? _value.imageMobileWeb
          : imageMobileWeb // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$SlidersDatumImpl implements _SlidersDatum {
  const _$SlidersDatumImpl(
      this.id, this.link, this.title, this.imageWeb, this.imageMobileWeb);

  factory _$SlidersDatumImpl.fromJson(Map<String, dynamic> json) =>
      _$$SlidersDatumImplFromJson(json);

  @override
  final int? id;
  @override
  final String? link;
  @override
  final String? title;
  @override
  final String? imageWeb;
  @override
  final String? imageMobileWeb;

  @override
  String toString() {
    return 'SlidersDatum(id: $id, link: $link, title: $title, imageWeb: $imageWeb, imageMobileWeb: $imageMobileWeb)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SlidersDatumImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.imageWeb, imageWeb) ||
                other.imageWeb == imageWeb) &&
            (identical(other.imageMobileWeb, imageMobileWeb) ||
                other.imageMobileWeb == imageMobileWeb));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, link, title, imageWeb, imageMobileWeb);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SlidersDatumImplCopyWith<_$SlidersDatumImpl> get copyWith =>
      __$$SlidersDatumImplCopyWithImpl<_$SlidersDatumImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SlidersDatumImplToJson(
      this,
    );
  }
}

abstract class _SlidersDatum implements SlidersDatum {
  const factory _SlidersDatum(
      final int? id,
      final String? link,
      final String? title,
      final String? imageWeb,
      final String? imageMobileWeb) = _$SlidersDatumImpl;

  factory _SlidersDatum.fromJson(Map<String, dynamic> json) =
      _$SlidersDatumImpl.fromJson;

  @override
  int? get id;
  @override
  String? get link;
  @override
  String? get title;
  @override
  String? get imageWeb;
  @override
  String? get imageMobileWeb;
  @override
  @JsonKey(ignore: true)
  _$$SlidersDatumImplCopyWith<_$SlidersDatumImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
