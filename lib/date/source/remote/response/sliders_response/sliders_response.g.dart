// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sliders_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SlidersResponseImpl _$$SlidersResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$SlidersResponseImpl(
      json['success'] as bool?,
      json['message'] as String?,
      (json['code'] as num?)?.toInt(),
      json['data'] == null
          ? null
          : SlidersData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SlidersResponseImplToJson(
        _$SlidersResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'code': instance.code,
      'data': instance.data?.toJson(),
    };

_$SlidersDateImpl _$$SlidersDateImplFromJson(Map<String, dynamic> json) =>
    _$SlidersDateImpl(
      (json['data'] as List<dynamic>?)
          ?.map((e) => SlidersDatum.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SlidersDateImplToJson(_$SlidersDateImpl instance) =>
    <String, dynamic>{
      'data': instance.datum?.map((e) => e.toJson()).toList(),
    };

_$SlidersDatumImpl _$$SlidersDatumImplFromJson(Map<String, dynamic> json) =>
    _$SlidersDatumImpl(
      (json['id'] as num?)?.toInt(),
      json['link'] as String?,
      json['title'] as String?,
      json['image_web'] as String?,
      json['image_mobile_web'] as String?,
    );

Map<String, dynamic> _$$SlidersDatumImplToJson(_$SlidersDatumImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'link': instance.link,
      'title': instance.title,
      'image_web': instance.imageWeb,
      'image_mobile_web': instance.imageMobileWeb,
    };
