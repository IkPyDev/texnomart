// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalog_menu.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CatalogMenuImpl _$$CatalogMenuImplFromJson(Map<String, dynamic> json) =>
    _$CatalogMenuImpl(
      json['success'] as bool?,
      json['message'] as String?,
      (json['code'] as num?)?.toInt(),
      json['data'] == null
          ? null
          : GetAllCatalogMenu.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CatalogMenuImplToJson(_$CatalogMenuImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'code': instance.code,
      'data': instance.data,
    };

_$GetAllCatalogMenuImpl _$$GetAllCatalogMenuImplFromJson(
        Map<String, dynamic> json) =>
    _$GetAllCatalogMenuImpl(
      (json['data'] as List<dynamic>?)
          ?.map((e) => GetCatalogMenu.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GetAllCatalogMenuImplToJson(
        _$GetAllCatalogMenuImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$GetCatalogMenuImpl _$$GetCatalogMenuImplFromJson(Map<String, dynamic> json) =>
    _$GetCatalogMenuImpl(
      json['slug'] as String?,
      json['name'] as String?,
      json['icon'] as String?,
      json['showChildsInWebMobile'] as bool?,
      (json['childs'] as List<dynamic>?)
          ?.map((e) => Childs.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GetCatalogMenuImplToJson(
        _$GetCatalogMenuImpl instance) =>
    <String, dynamic>{
      'slug': instance.slug,
      'name': instance.name,
      'icon': instance.icon,
      'showChildsInWebMobile': instance.showChildsInWebMobile,
      'childs': instance.childs,
    };

_$ChildsImpl _$$ChildsImplFromJson(Map<String, dynamic> json) => _$ChildsImpl(
      json['slug'] as String?,
      json['name'] as String?,
      json['showChildsInWebMobile'] as bool?,
      (json['childs'] as List<dynamic>?)
          ?.map((e) => Childs.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ChildsImplToJson(_$ChildsImpl instance) =>
    <String, dynamic>{
      'slug': instance.slug,
      'name': instance.name,
      'showChildsInWebMobile': instance.showChildsInWebMobile,
      'childs': instance.childs,
    };
