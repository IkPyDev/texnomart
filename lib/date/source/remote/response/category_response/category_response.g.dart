// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoryResponseImpl _$$CategoryResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CategoryResponseImpl(
      json['success'] as bool?,
      json['message'] as String?,
      (json['code'] as num?)?.toInt(),
      json['data'] == null
          ? null
          : CategoryData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CategoryResponseImplToJson(
        _$CategoryResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'code': instance.code,
      'data': instance.data?.toJson(),
    };

_$CategoryDataImpl _$$CategoryDataImplFromJson(Map<String, dynamic> json) =>
    _$CategoryDataImpl(
      (json['data'] as List<dynamic>?)
          ?.map((e) => CategoryItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CategoryDataImplToJson(_$CategoryDataImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$CategoryItemImpl _$$CategoryItemImplFromJson(Map<String, dynamic> json) =>
    _$CategoryItemImpl(
      json['title'] as String?,
      json['image'] as String?,
      json['slug'] as String?,
    );

Map<String, dynamic> _$$CategoryItemImplToJson(_$CategoryItemImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'image': instance.image,
      'slug': instance.slug,
    };
