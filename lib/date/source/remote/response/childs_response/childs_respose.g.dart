// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'childs_respose.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChildsResposeImpl _$$ChildsResposeImplFromJson(Map<String, dynamic> json) =>
    _$ChildsResposeImpl(
      json['success'] as bool?,
      json['message'] as String?,
      (json['code'] as num?)?.toInt(),
      json['data'] == null
          ? null
          : Datums.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ChildsResposeImplToJson(_$ChildsResposeImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'code': instance.code,
      'data': instance.data?.toJson(),
    };

_$DatumsImpl _$$DatumsImplFromJson(Map<String, dynamic> json) => _$DatumsImpl(
      (json['data'] as List<dynamic>)
          .map((e) => ChildData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DatumsImplToJson(_$DatumsImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$ChildDataImpl _$$ChildDataImplFromJson(Map<String, dynamic> json) =>
    _$ChildDataImpl(
      json['slug'] as String?,
      json['name'] as String?,
      json['icon'] as String?,
      json['showChildsInWebMobile'] as bool?,
      (json['childs'] as List<dynamic>?)
          ?.map((e) => Childs.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ChildDataImplToJson(_$ChildDataImpl instance) =>
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
    );

Map<String, dynamic> _$$ChildsImplToJson(_$ChildsImpl instance) =>
    <String, dynamic>{
      'slug': instance.slug,
      'name': instance.name,
      'showChildsInWebMobile': instance.showChildsInWebMobile,
    };
