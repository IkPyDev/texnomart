// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'special_product_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SpecialProductResponse _$SpecialProductResponseFromJson(
    Map<String, dynamic> json) {
  return _SpecialProductResponse.fromJson(json);
}

/// @nodoc
mixin _$SpecialProductResponse {
  bool? get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  int? get code => throw _privateConstructorUsedError;
  SpPrData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpecialProductResponseCopyWith<SpecialProductResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpecialProductResponseCopyWith<$Res> {
  factory $SpecialProductResponseCopyWith(SpecialProductResponse value,
          $Res Function(SpecialProductResponse) then) =
      _$SpecialProductResponseCopyWithImpl<$Res, SpecialProductResponse>;
  @useResult
  $Res call({bool? success, String? message, int? code, SpPrData? data});

  $SpPrDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$SpecialProductResponseCopyWithImpl<$Res,
        $Val extends SpecialProductResponse>
    implements $SpecialProductResponseCopyWith<$Res> {
  _$SpecialProductResponseCopyWithImpl(this._value, this._then);

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
              as SpPrData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SpPrDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $SpPrDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SpecialProductResponseImplCopyWith<$Res>
    implements $SpecialProductResponseCopyWith<$Res> {
  factory _$$SpecialProductResponseImplCopyWith(
          _$SpecialProductResponseImpl value,
          $Res Function(_$SpecialProductResponseImpl) then) =
      __$$SpecialProductResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? success, String? message, int? code, SpPrData? data});

  @override
  $SpPrDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$SpecialProductResponseImplCopyWithImpl<$Res>
    extends _$SpecialProductResponseCopyWithImpl<$Res,
        _$SpecialProductResponseImpl>
    implements _$$SpecialProductResponseImplCopyWith<$Res> {
  __$$SpecialProductResponseImplCopyWithImpl(
      _$SpecialProductResponseImpl _value,
      $Res Function(_$SpecialProductResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? code = freezed,
    Object? data = freezed,
  }) {
    return _then(_$SpecialProductResponseImpl(
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
              as SpPrData?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$SpecialProductResponseImpl implements _SpecialProductResponse {
  const _$SpecialProductResponseImpl(
      this.success, this.message, this.code, this.data);

  factory _$SpecialProductResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpecialProductResponseImplFromJson(json);

  @override
  final bool? success;
  @override
  final String? message;
  @override
  final int? code;
  @override
  final SpPrData? data;

  @override
  String toString() {
    return 'SpecialProductResponse(success: $success, message: $message, code: $code, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpecialProductResponseImpl &&
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
  _$$SpecialProductResponseImplCopyWith<_$SpecialProductResponseImpl>
      get copyWith => __$$SpecialProductResponseImplCopyWithImpl<
          _$SpecialProductResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpecialProductResponseImplToJson(
      this,
    );
  }
}

abstract class _SpecialProductResponse implements SpecialProductResponse {
  const factory _SpecialProductResponse(
      final bool? success,
      final String? message,
      final int? code,
      final SpPrData? data) = _$SpecialProductResponseImpl;

  factory _SpecialProductResponse.fromJson(Map<String, dynamic> json) =
      _$SpecialProductResponseImpl.fromJson;

  @override
  bool? get success;
  @override
  String? get message;
  @override
  int? get code;
  @override
  SpPrData? get data;
  @override
  @JsonKey(ignore: true)
  _$$SpecialProductResponseImplCopyWith<_$SpecialProductResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SpPrData _$SpPrDataFromJson(Map<String, dynamic> json) {
  return _SpPrData.fromJson(json);
}

/// @nodoc
mixin _$SpPrData {
  List<SpPrItems> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpPrDataCopyWith<SpPrData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpPrDataCopyWith<$Res> {
  factory $SpPrDataCopyWith(SpPrData value, $Res Function(SpPrData) then) =
      _$SpPrDataCopyWithImpl<$Res, SpPrData>;
  @useResult
  $Res call({List<SpPrItems> data});
}

/// @nodoc
class _$SpPrDataCopyWithImpl<$Res, $Val extends SpPrData>
    implements $SpPrDataCopyWith<$Res> {
  _$SpPrDataCopyWithImpl(this._value, this._then);

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
              as List<SpPrItems>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SpPrDataImplCopyWith<$Res>
    implements $SpPrDataCopyWith<$Res> {
  factory _$$SpPrDataImplCopyWith(
          _$SpPrDataImpl value, $Res Function(_$SpPrDataImpl) then) =
      __$$SpPrDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<SpPrItems> data});
}

/// @nodoc
class __$$SpPrDataImplCopyWithImpl<$Res>
    extends _$SpPrDataCopyWithImpl<$Res, _$SpPrDataImpl>
    implements _$$SpPrDataImplCopyWith<$Res> {
  __$$SpPrDataImplCopyWithImpl(
      _$SpPrDataImpl _value, $Res Function(_$SpPrDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$SpPrDataImpl(
      null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<SpPrItems>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SpPrDataImpl implements _SpPrData {
  const _$SpPrDataImpl(final List<SpPrItems> data) : _data = data;

  factory _$SpPrDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpPrDataImplFromJson(json);

  final List<SpPrItems> _data;
  @override
  List<SpPrItems> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'SpPrData(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpPrDataImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SpPrDataImplCopyWith<_$SpPrDataImpl> get copyWith =>
      __$$SpPrDataImplCopyWithImpl<_$SpPrDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpPrDataImplToJson(
      this,
    );
  }
}

abstract class _SpPrData implements SpPrData {
  const factory _SpPrData(final List<SpPrItems> data) = _$SpPrDataImpl;

  factory _SpPrData.fromJson(Map<String, dynamic> json) =
      _$SpPrDataImpl.fromJson;

  @override
  List<SpPrItems> get data;
  @override
  @JsonKey(ignore: true)
  _$$SpPrDataImplCopyWith<_$SpPrDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SpPrItems _$SpPrItemsFromJson(Map<String, dynamic> json) {
  return _SpPrItems.fromJson(json);
}

/// @nodoc
mixin _$SpPrItems {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get availability => throw _privateConstructorUsedError;
  String? get axiomMonthlyPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "sale_price")
  int? get salePrice => throw _privateConstructorUsedError;
  String? get oldPrice => throw _privateConstructorUsedError;
  int? get finishPrice => throw _privateConstructorUsedError;
  int? get discountPrice => throw _privateConstructorUsedError;
  int? get reviewsCount => throw _privateConstructorUsedError;
  int? get reviewsAverage => throw _privateConstructorUsedError;
  int? get allCount => throw _privateConstructorUsedError;
  List<SpPrdDataStickers>? get stickers => throw _privateConstructorUsedError;
  @JsonKey(name: "sale_months")
  List<SpPrDateSaleMonths>? get saleMonths =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpPrItemsCopyWith<SpPrItems> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpPrItemsCopyWith<$Res> {
  factory $SpPrItemsCopyWith(SpPrItems value, $Res Function(SpPrItems) then) =
      _$SpPrItemsCopyWithImpl<$Res, SpPrItems>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? image,
      String? availability,
      String? axiomMonthlyPrice,
      @JsonKey(name: "sale_price") int? salePrice,
      String? oldPrice,
      int? finishPrice,
      int? discountPrice,
      int? reviewsCount,
      int? reviewsAverage,
      int? allCount,
      List<SpPrdDataStickers>? stickers,
      @JsonKey(name: "sale_months") List<SpPrDateSaleMonths>? saleMonths});
}

/// @nodoc
class _$SpPrItemsCopyWithImpl<$Res, $Val extends SpPrItems>
    implements $SpPrItemsCopyWith<$Res> {
  _$SpPrItemsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? image = freezed,
    Object? availability = freezed,
    Object? axiomMonthlyPrice = freezed,
    Object? salePrice = freezed,
    Object? oldPrice = freezed,
    Object? finishPrice = freezed,
    Object? discountPrice = freezed,
    Object? reviewsCount = freezed,
    Object? reviewsAverage = freezed,
    Object? allCount = freezed,
    Object? stickers = freezed,
    Object? saleMonths = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      availability: freezed == availability
          ? _value.availability
          : availability // ignore: cast_nullable_to_non_nullable
              as String?,
      axiomMonthlyPrice: freezed == axiomMonthlyPrice
          ? _value.axiomMonthlyPrice
          : axiomMonthlyPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      salePrice: freezed == salePrice
          ? _value.salePrice
          : salePrice // ignore: cast_nullable_to_non_nullable
              as int?,
      oldPrice: freezed == oldPrice
          ? _value.oldPrice
          : oldPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      finishPrice: freezed == finishPrice
          ? _value.finishPrice
          : finishPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      discountPrice: freezed == discountPrice
          ? _value.discountPrice
          : discountPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      reviewsCount: freezed == reviewsCount
          ? _value.reviewsCount
          : reviewsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      reviewsAverage: freezed == reviewsAverage
          ? _value.reviewsAverage
          : reviewsAverage // ignore: cast_nullable_to_non_nullable
              as int?,
      allCount: freezed == allCount
          ? _value.allCount
          : allCount // ignore: cast_nullable_to_non_nullable
              as int?,
      stickers: freezed == stickers
          ? _value.stickers
          : stickers // ignore: cast_nullable_to_non_nullable
              as List<SpPrdDataStickers>?,
      saleMonths: freezed == saleMonths
          ? _value.saleMonths
          : saleMonths // ignore: cast_nullable_to_non_nullable
              as List<SpPrDateSaleMonths>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SpPrItemsImplCopyWith<$Res>
    implements $SpPrItemsCopyWith<$Res> {
  factory _$$SpPrItemsImplCopyWith(
          _$SpPrItemsImpl value, $Res Function(_$SpPrItemsImpl) then) =
      __$$SpPrItemsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? image,
      String? availability,
      String? axiomMonthlyPrice,
      @JsonKey(name: "sale_price") int? salePrice,
      String? oldPrice,
      int? finishPrice,
      int? discountPrice,
      int? reviewsCount,
      int? reviewsAverage,
      int? allCount,
      List<SpPrdDataStickers>? stickers,
      @JsonKey(name: "sale_months") List<SpPrDateSaleMonths>? saleMonths});
}

/// @nodoc
class __$$SpPrItemsImplCopyWithImpl<$Res>
    extends _$SpPrItemsCopyWithImpl<$Res, _$SpPrItemsImpl>
    implements _$$SpPrItemsImplCopyWith<$Res> {
  __$$SpPrItemsImplCopyWithImpl(
      _$SpPrItemsImpl _value, $Res Function(_$SpPrItemsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? image = freezed,
    Object? availability = freezed,
    Object? axiomMonthlyPrice = freezed,
    Object? salePrice = freezed,
    Object? oldPrice = freezed,
    Object? finishPrice = freezed,
    Object? discountPrice = freezed,
    Object? reviewsCount = freezed,
    Object? reviewsAverage = freezed,
    Object? allCount = freezed,
    Object? stickers = freezed,
    Object? saleMonths = freezed,
  }) {
    return _then(_$SpPrItemsImpl(
      freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == availability
          ? _value.availability
          : availability // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == axiomMonthlyPrice
          ? _value.axiomMonthlyPrice
          : axiomMonthlyPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == salePrice
          ? _value.salePrice
          : salePrice // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == oldPrice
          ? _value.oldPrice
          : oldPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == finishPrice
          ? _value.finishPrice
          : finishPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == discountPrice
          ? _value.discountPrice
          : discountPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == reviewsCount
          ? _value.reviewsCount
          : reviewsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == reviewsAverage
          ? _value.reviewsAverage
          : reviewsAverage // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == allCount
          ? _value.allCount
          : allCount // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == stickers
          ? _value._stickers
          : stickers // ignore: cast_nullable_to_non_nullable
              as List<SpPrdDataStickers>?,
      freezed == saleMonths
          ? _value._saleMonths
          : saleMonths // ignore: cast_nullable_to_non_nullable
              as List<SpPrDateSaleMonths>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SpPrItemsImpl implements _SpPrItems {
  const _$SpPrItemsImpl(
      this.id,
      this.name,
      this.image,
      this.availability,
      this.axiomMonthlyPrice,
      @JsonKey(name: "sale_price") this.salePrice,
      this.oldPrice,
      this.finishPrice,
      this.discountPrice,
      this.reviewsCount,
      this.reviewsAverage,
      this.allCount,
      final List<SpPrdDataStickers>? stickers,
      @JsonKey(name: "sale_months") final List<SpPrDateSaleMonths>? saleMonths)
      : _stickers = stickers,
        _saleMonths = saleMonths;

  factory _$SpPrItemsImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpPrItemsImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? image;
  @override
  final String? availability;
  @override
  final String? axiomMonthlyPrice;
  @override
  @JsonKey(name: "sale_price")
  final int? salePrice;
  @override
  final String? oldPrice;
  @override
  final int? finishPrice;
  @override
  final int? discountPrice;
  @override
  final int? reviewsCount;
  @override
  final int? reviewsAverage;
  @override
  final int? allCount;
  final List<SpPrdDataStickers>? _stickers;
  @override
  List<SpPrdDataStickers>? get stickers {
    final value = _stickers;
    if (value == null) return null;
    if (_stickers is EqualUnmodifiableListView) return _stickers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<SpPrDateSaleMonths>? _saleMonths;
  @override
  @JsonKey(name: "sale_months")
  List<SpPrDateSaleMonths>? get saleMonths {
    final value = _saleMonths;
    if (value == null) return null;
    if (_saleMonths is EqualUnmodifiableListView) return _saleMonths;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SpPrItems(id: $id, name: $name, image: $image, availability: $availability, axiomMonthlyPrice: $axiomMonthlyPrice, salePrice: $salePrice, oldPrice: $oldPrice, finishPrice: $finishPrice, discountPrice: $discountPrice, reviewsCount: $reviewsCount, reviewsAverage: $reviewsAverage, allCount: $allCount, stickers: $stickers, saleMonths: $saleMonths)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpPrItemsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.availability, availability) ||
                other.availability == availability) &&
            (identical(other.axiomMonthlyPrice, axiomMonthlyPrice) ||
                other.axiomMonthlyPrice == axiomMonthlyPrice) &&
            (identical(other.salePrice, salePrice) ||
                other.salePrice == salePrice) &&
            (identical(other.oldPrice, oldPrice) ||
                other.oldPrice == oldPrice) &&
            (identical(other.finishPrice, finishPrice) ||
                other.finishPrice == finishPrice) &&
            (identical(other.discountPrice, discountPrice) ||
                other.discountPrice == discountPrice) &&
            (identical(other.reviewsCount, reviewsCount) ||
                other.reviewsCount == reviewsCount) &&
            (identical(other.reviewsAverage, reviewsAverage) ||
                other.reviewsAverage == reviewsAverage) &&
            (identical(other.allCount, allCount) ||
                other.allCount == allCount) &&
            const DeepCollectionEquality().equals(other._stickers, _stickers) &&
            const DeepCollectionEquality()
                .equals(other._saleMonths, _saleMonths));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      image,
      availability,
      axiomMonthlyPrice,
      salePrice,
      oldPrice,
      finishPrice,
      discountPrice,
      reviewsCount,
      reviewsAverage,
      allCount,
      const DeepCollectionEquality().hash(_stickers),
      const DeepCollectionEquality().hash(_saleMonths));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SpPrItemsImplCopyWith<_$SpPrItemsImpl> get copyWith =>
      __$$SpPrItemsImplCopyWithImpl<_$SpPrItemsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpPrItemsImplToJson(
      this,
    );
  }
}

abstract class _SpPrItems implements SpPrItems {
  const factory _SpPrItems(
      final int? id,
      final String? name,
      final String? image,
      final String? availability,
      final String? axiomMonthlyPrice,
      @JsonKey(name: "sale_price") final int? salePrice,
      final String? oldPrice,
      final int? finishPrice,
      final int? discountPrice,
      final int? reviewsCount,
      final int? reviewsAverage,
      final int? allCount,
      final List<SpPrdDataStickers>? stickers,
      @JsonKey(name: "sale_months")
      final List<SpPrDateSaleMonths>? saleMonths) = _$SpPrItemsImpl;

  factory _SpPrItems.fromJson(Map<String, dynamic> json) =
      _$SpPrItemsImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get image;
  @override
  String? get availability;
  @override
  String? get axiomMonthlyPrice;
  @override
  @JsonKey(name: "sale_price")
  int? get salePrice;
  @override
  String? get oldPrice;
  @override
  int? get finishPrice;
  @override
  int? get discountPrice;
  @override
  int? get reviewsCount;
  @override
  int? get reviewsAverage;
  @override
  int? get allCount;
  @override
  List<SpPrdDataStickers>? get stickers;
  @override
  @JsonKey(name: "sale_months")
  List<SpPrDateSaleMonths>? get saleMonths;
  @override
  @JsonKey(ignore: true)
  _$$SpPrItemsImplCopyWith<_$SpPrItemsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SpPrdDataStickers _$SpPrdDataStickersFromJson(Map<String, dynamic> json) {
  return _SpPrdDataStickers.fromJson(json);
}

/// @nodoc
mixin _$SpPrdDataStickers {
  String? get name => throw _privateConstructorUsedError;
  String? get backgroundColor => throw _privateConstructorUsedError;
  String? get textColor => throw _privateConstructorUsedError;
  bool? get isImage => throw _privateConstructorUsedError;
  bool? get showInCard => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpPrdDataStickersCopyWith<SpPrdDataStickers> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpPrdDataStickersCopyWith<$Res> {
  factory $SpPrdDataStickersCopyWith(
          SpPrdDataStickers value, $Res Function(SpPrdDataStickers) then) =
      _$SpPrdDataStickersCopyWithImpl<$Res, SpPrdDataStickers>;
  @useResult
  $Res call(
      {String? name,
      String? backgroundColor,
      String? textColor,
      bool? isImage,
      bool? showInCard,
      String? image});
}

/// @nodoc
class _$SpPrdDataStickersCopyWithImpl<$Res, $Val extends SpPrdDataStickers>
    implements $SpPrdDataStickersCopyWith<$Res> {
  _$SpPrdDataStickersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? backgroundColor = freezed,
    Object? textColor = freezed,
    Object? isImage = freezed,
    Object? showInCard = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      backgroundColor: freezed == backgroundColor
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
      textColor: freezed == textColor
          ? _value.textColor
          : textColor // ignore: cast_nullable_to_non_nullable
              as String?,
      isImage: freezed == isImage
          ? _value.isImage
          : isImage // ignore: cast_nullable_to_non_nullable
              as bool?,
      showInCard: freezed == showInCard
          ? _value.showInCard
          : showInCard // ignore: cast_nullable_to_non_nullable
              as bool?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SpPrdDataStickersImplCopyWith<$Res>
    implements $SpPrdDataStickersCopyWith<$Res> {
  factory _$$SpPrdDataStickersImplCopyWith(_$SpPrdDataStickersImpl value,
          $Res Function(_$SpPrdDataStickersImpl) then) =
      __$$SpPrdDataStickersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? backgroundColor,
      String? textColor,
      bool? isImage,
      bool? showInCard,
      String? image});
}

/// @nodoc
class __$$SpPrdDataStickersImplCopyWithImpl<$Res>
    extends _$SpPrdDataStickersCopyWithImpl<$Res, _$SpPrdDataStickersImpl>
    implements _$$SpPrdDataStickersImplCopyWith<$Res> {
  __$$SpPrdDataStickersImplCopyWithImpl(_$SpPrdDataStickersImpl _value,
      $Res Function(_$SpPrdDataStickersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? backgroundColor = freezed,
    Object? textColor = freezed,
    Object? isImage = freezed,
    Object? showInCard = freezed,
    Object? image = freezed,
  }) {
    return _then(_$SpPrdDataStickersImpl(
      freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == backgroundColor
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == textColor
          ? _value.textColor
          : textColor // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == isImage
          ? _value.isImage
          : isImage // ignore: cast_nullable_to_non_nullable
              as bool?,
      freezed == showInCard
          ? _value.showInCard
          : showInCard // ignore: cast_nullable_to_non_nullable
              as bool?,
      freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SpPrdDataStickersImpl implements _SpPrdDataStickers {
  const _$SpPrdDataStickersImpl(this.name, this.backgroundColor, this.textColor,
      this.isImage, this.showInCard, this.image);

  factory _$SpPrdDataStickersImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpPrdDataStickersImplFromJson(json);

  @override
  final String? name;
  @override
  final String? backgroundColor;
  @override
  final String? textColor;
  @override
  final bool? isImage;
  @override
  final bool? showInCard;
  @override
  final String? image;

  @override
  String toString() {
    return 'SpPrdDataStickers(name: $name, backgroundColor: $backgroundColor, textColor: $textColor, isImage: $isImage, showInCard: $showInCard, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpPrdDataStickersImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor) &&
            (identical(other.textColor, textColor) ||
                other.textColor == textColor) &&
            (identical(other.isImage, isImage) || other.isImage == isImage) &&
            (identical(other.showInCard, showInCard) ||
                other.showInCard == showInCard) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, backgroundColor, textColor,
      isImage, showInCard, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SpPrdDataStickersImplCopyWith<_$SpPrdDataStickersImpl> get copyWith =>
      __$$SpPrdDataStickersImplCopyWithImpl<_$SpPrdDataStickersImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpPrdDataStickersImplToJson(
      this,
    );
  }
}

abstract class _SpPrdDataStickers implements SpPrdDataStickers {
  const factory _SpPrdDataStickers(
      final String? name,
      final String? backgroundColor,
      final String? textColor,
      final bool? isImage,
      final bool? showInCard,
      final String? image) = _$SpPrdDataStickersImpl;

  factory _SpPrdDataStickers.fromJson(Map<String, dynamic> json) =
      _$SpPrdDataStickersImpl.fromJson;

  @override
  String? get name;
  @override
  String? get backgroundColor;
  @override
  String? get textColor;
  @override
  bool? get isImage;
  @override
  bool? get showInCard;
  @override
  String? get image;
  @override
  @JsonKey(ignore: true)
  _$$SpPrdDataStickersImplCopyWith<_$SpPrdDataStickersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SpPrDateSaleMonths _$SpPrDateSaleMonthsFromJson(Map<String, dynamic> json) {
  return _SpPrDateSaleMonths.fromJson(json);
}

/// @nodoc
mixin _$SpPrDateSaleMonths {
  int? get id => throw _privateConstructorUsedError;
  String? get key => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpPrDateSaleMonthsCopyWith<SpPrDateSaleMonths> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpPrDateSaleMonthsCopyWith<$Res> {
  factory $SpPrDateSaleMonthsCopyWith(
          SpPrDateSaleMonths value, $Res Function(SpPrDateSaleMonths) then) =
      _$SpPrDateSaleMonthsCopyWithImpl<$Res, SpPrDateSaleMonths>;
  @useResult
  $Res call({int? id, String? key, String? name, String? image});
}

/// @nodoc
class _$SpPrDateSaleMonthsCopyWithImpl<$Res, $Val extends SpPrDateSaleMonths>
    implements $SpPrDateSaleMonthsCopyWith<$Res> {
  _$SpPrDateSaleMonthsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? key = freezed,
    Object? name = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SpPrDateSaleMonthsImplCopyWith<$Res>
    implements $SpPrDateSaleMonthsCopyWith<$Res> {
  factory _$$SpPrDateSaleMonthsImplCopyWith(_$SpPrDateSaleMonthsImpl value,
          $Res Function(_$SpPrDateSaleMonthsImpl) then) =
      __$$SpPrDateSaleMonthsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? key, String? name, String? image});
}

/// @nodoc
class __$$SpPrDateSaleMonthsImplCopyWithImpl<$Res>
    extends _$SpPrDateSaleMonthsCopyWithImpl<$Res, _$SpPrDateSaleMonthsImpl>
    implements _$$SpPrDateSaleMonthsImplCopyWith<$Res> {
  __$$SpPrDateSaleMonthsImplCopyWithImpl(_$SpPrDateSaleMonthsImpl _value,
      $Res Function(_$SpPrDateSaleMonthsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? key = freezed,
    Object? name = freezed,
    Object? image = freezed,
  }) {
    return _then(_$SpPrDateSaleMonthsImpl(
      freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SpPrDateSaleMonthsImpl implements _SpPrDateSaleMonths {
  const _$SpPrDateSaleMonthsImpl(this.id, this.key, this.name, this.image);

  factory _$SpPrDateSaleMonthsImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpPrDateSaleMonthsImplFromJson(json);

  @override
  final int? id;
  @override
  final String? key;
  @override
  final String? name;
  @override
  final String? image;

  @override
  String toString() {
    return 'SpPrDateSaleMonths(id: $id, key: $key, name: $name, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpPrDateSaleMonthsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, key, name, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SpPrDateSaleMonthsImplCopyWith<_$SpPrDateSaleMonthsImpl> get copyWith =>
      __$$SpPrDateSaleMonthsImplCopyWithImpl<_$SpPrDateSaleMonthsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpPrDateSaleMonthsImplToJson(
      this,
    );
  }
}

abstract class _SpPrDateSaleMonths implements SpPrDateSaleMonths {
  const factory _SpPrDateSaleMonths(final int? id, final String? key,
      final String? name, final String? image) = _$SpPrDateSaleMonthsImpl;

  factory _SpPrDateSaleMonths.fromJson(Map<String, dynamic> json) =
      _$SpPrDateSaleMonthsImpl.fromJson;

  @override
  int? get id;
  @override
  String? get key;
  @override
  String? get name;
  @override
  String? get image;
  @override
  @JsonKey(ignore: true)
  _$$SpPrDateSaleMonthsImplCopyWith<_$SpPrDateSaleMonthsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
