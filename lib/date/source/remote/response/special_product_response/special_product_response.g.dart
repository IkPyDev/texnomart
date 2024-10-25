// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'special_product_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SpecialProductResponseImpl _$$SpecialProductResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$SpecialProductResponseImpl(
      json['success'] as bool?,
      json['message'] as String?,
      (json['code'] as num?)?.toInt(),
      json['data'] == null
          ? null
          : SpPrData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SpecialProductResponseImplToJson(
        _$SpecialProductResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'code': instance.code,
      'data': instance.data?.toJson(),
    };

_$SpPrDataImpl _$$SpPrDataImplFromJson(Map<String, dynamic> json) =>
    _$SpPrDataImpl(
      (json['data'] as List<dynamic>)
          .map((e) => SpPrItems.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SpPrDataImplToJson(_$SpPrDataImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$SpPrItemsImpl _$$SpPrItemsImplFromJson(Map<String, dynamic> json) =>
    _$SpPrItemsImpl(
      (json['id'] as num?)?.toInt(),
      json['name'] as String?,
      json['image'] as String?,
      json['availability'] as String?,
      json['axiomMonthlyPrice'] as String?,
      (json['sale_price'] as num?)?.toInt(),
      json['oldPrice'] as String?,
      (json['finishPrice'] as num?)?.toInt(),
      (json['discountPrice'] as num?)?.toInt(),
      (json['reviewsCount'] as num?)?.toInt(),
      (json['reviewsAverage'] as num?)?.toInt(),
      (json['allCount'] as num?)?.toInt(),
      (json['stickers'] as List<dynamic>?)
          ?.map((e) => SpPrdDataStickers.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['sale_months'] as List<dynamic>?)
          ?.map((e) => SpPrDateSaleMonths.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SpPrItemsImplToJson(_$SpPrItemsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'availability': instance.availability,
      'axiomMonthlyPrice': instance.axiomMonthlyPrice,
      'sale_price': instance.salePrice,
      'oldPrice': instance.oldPrice,
      'finishPrice': instance.finishPrice,
      'discountPrice': instance.discountPrice,
      'reviewsCount': instance.reviewsCount,
      'reviewsAverage': instance.reviewsAverage,
      'allCount': instance.allCount,
      'stickers': instance.stickers,
      'sale_months': instance.saleMonths,
    };

_$SpPrdDataStickersImpl _$$SpPrdDataStickersImplFromJson(
        Map<String, dynamic> json) =>
    _$SpPrdDataStickersImpl(
      json['name'] as String?,
      json['backgroundColor'] as String?,
      json['textColor'] as String?,
      json['isImage'] as bool?,
      json['showInCard'] as bool?,
      json['image'] as String?,
    );

Map<String, dynamic> _$$SpPrdDataStickersImplToJson(
        _$SpPrdDataStickersImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'backgroundColor': instance.backgroundColor,
      'textColor': instance.textColor,
      'isImage': instance.isImage,
      'showInCard': instance.showInCard,
      'image': instance.image,
    };

_$SpPrDateSaleMonthsImpl _$$SpPrDateSaleMonthsImplFromJson(
        Map<String, dynamic> json) =>
    _$SpPrDateSaleMonthsImpl(
      (json['id'] as num?)?.toInt(),
      json['key'] as String?,
      json['name'] as String?,
      json['image'] as String?,
    );

Map<String, dynamic> _$$SpPrDateSaleMonthsImplToJson(
        _$SpPrDateSaleMonthsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'key': instance.key,
      'name': instance.name,
      'image': instance.image,
    };
