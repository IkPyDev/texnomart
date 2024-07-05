// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_responce.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DetailResponseImpl _$$DetailResponseImplFromJson(Map<String, dynamic> json) =>
    _$DetailResponseImpl(
      json['success'] as bool?,
      json['message'] as String?,
      (json['code'] as num?)?.toInt(),
      json['data'] == null
          ? null
          : GetDataDetail.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DetailResponseImplToJson(
        _$DetailResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'code': instance.code,
      'data': instance.data?.toJson(),
    };

_$GetDataDetailImpl _$$GetDataDetailImplFromJson(Map<String, dynamic> json) =>
    _$GetDataDetailImpl(
      json['data'] == null
          ? null
          : GetDetail.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GetDataDetailImplToJson(_$GetDataDetailImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$GetDetailImpl _$$GetDetailImplFromJson(Map<String, dynamic> json) =>
    _$GetDetailImpl(
      (json['id'] as num?)?.toInt(),
      json['name'] as String?,
      json['guarantee'] as String?,
      json['catalog'] == null
          ? null
          : Catalog.fromJson(json['catalog'] as Map<String, dynamic>),
      (json['small_images'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      (json['large_images'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      json['availability'] as String?,
      json['model'] as String?,
      json['brand'] as String?,
      (json['sale_price'] as num?)?.toInt(),
      (json['loan_price'] as num?)?.toInt(),
      json['old_price'] as String?,
      json['minimal_loan_price'] as String?,
      json['code'] as String?,
      (json['sale_months'] as List<dynamic>?)
          ?.map((e) => SaleMonths.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['reviews_count'] as num?)?.toInt(),
      json['reviews_middle_rating'] as String?,
      json['seo'] == null
          ? null
          : Seo.fromJson(json['seo'] as Map<String, dynamic>),
      (json['stickers'] as List<dynamic>?)
          ?.map((e) => Stickers.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['main_characters'] as List<dynamic>?)
          ?.map((e) => MainCharacters.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['breadcrumbs'] as List<dynamic>?)
          ?.map((e) => Breadcrumbs.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['description'] as String?,
      json['overview'] as String?,
      (json['characters'] as List<dynamic>?)
          ?.map((e) => Characters.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['available_stores'] as List<dynamic>?)
          ?.map((e) => AvailableStores.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['accessories'] as List<dynamic>?)
          ?.map((e) => Accessories.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['promotion0012_price'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$GetDetailImplToJson(_$GetDetailImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'guarantee': instance.guarantee,
      'catalog': instance.catalog?.toJson(),
      'small_images': instance.smallImages,
      'large_images': instance.largeImages,
      'availability': instance.availability,
      'model': instance.model,
      'brand': instance.brand,
      'sale_price': instance.salePrice,
      'loan_price': instance.loanPrice,
      'old_price': instance.oldPrice,
      'minimal_loan_price': instance.minimalLoanPrice,
      'code': instance.code,
      'sale_months': instance.saleMonths?.map((e) => e.toJson()).toList(),
      'reviews_count': instance.reviewsCount,
      'reviews_middle_rating': instance.reviewsMiddleRating,
      'seo': instance.seo?.toJson(),
      'stickers': instance.stickers?.map((e) => e.toJson()).toList(),
      'main_characters':
          instance.mainCharacters?.map((e) => e.toJson()).toList(),
      'breadcrumbs': instance.breadcrumbs?.map((e) => e.toJson()).toList(),
      'description': instance.description,
      'overview': instance.overview,
      'characters': instance.characters?.map((e) => e.toJson()).toList(),
      'available_stores':
          instance.availableStores?.map((e) => e.toJson()).toList(),
      'accessories': instance.accessories?.map((e) => e.toJson()).toList(),
      'promotion0012_price': instance.promotion0012Price,
    };

_$CatalogImpl _$$CatalogImplFromJson(Map<String, dynamic> json) =>
    _$CatalogImpl(
      json['name'] as String?,
      (json['min_price'] as num?)?.toInt(),
      (json['max_price'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$CatalogImplToJson(_$CatalogImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'min_price': instance.minPrice,
      'max_price': instance.maxPrice,
    };

_$SaleMonthsImpl _$$SaleMonthsImplFromJson(Map<String, dynamic> json) =>
    _$SaleMonthsImpl(
      (json['id'] as num?)?.toInt(),
      json['name'] as String?,
      json['key'] as String?,
      json['image'] as String?,
    );

Map<String, dynamic> _$$SaleMonthsImplToJson(_$SaleMonthsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'key': instance.key,
      'image': instance.image,
    };

_$SeoImpl _$$SeoImplFromJson(Map<String, dynamic> json) => _$SeoImpl(
      json['title'] as String?,
      json['description'] as String?,
      json['keywords'] as String?,
      json['image'] as String?,
      json['script_seo'] as String?,
    );

Map<String, dynamic> _$$SeoImplToJson(_$SeoImpl instance) => <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'keywords': instance.keywords,
      'image': instance.image,
      'script_seo': instance.scriptSeo,
    };

_$StickersImpl _$$StickersImplFromJson(Map<String, dynamic> json) =>
    _$StickersImpl(
      json['name'] as String?,
      json['background_color'] as String?,
      json['text_color'] as String?,
      json['is_image'] as bool?,
      json['show_in_card'] as bool?,
      json['image'] as String?,
    );

Map<String, dynamic> _$$StickersImplToJson(_$StickersImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'background_color': instance.backgroundColor,
      'text_color': instance.textColor,
      'is_image': instance.isImage,
      'show_in_card': instance.showInCard,
      'image': instance.image,
    };

_$MainCharactersImpl _$$MainCharactersImplFromJson(Map<String, dynamic> json) =>
    _$MainCharactersImpl(
      json['name'] as String?,
      json['value'] as String?,
    );

Map<String, dynamic> _$$MainCharactersImplToJson(
        _$MainCharactersImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'value': instance.value,
    };

_$BreadcrumbsImpl _$$BreadcrumbsImplFromJson(Map<String, dynamic> json) =>
    _$BreadcrumbsImpl(
      json['name'] as String?,
      json['slug'] as String?,
      (json['id'] as num?)?.toInt(),
      json['type'] as String?,
    );

Map<String, dynamic> _$$BreadcrumbsImplToJson(_$BreadcrumbsImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'slug': instance.slug,
      'id': instance.id,
      'type': instance.type,
    };

_$CharactersImpl _$$CharactersImplFromJson(Map<String, dynamic> json) =>
    _$CharactersImpl(
      json['name'] as String?,
      (json['characters'] as List<dynamic>?)
          ?.map((e) => Characters.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CharactersImplToJson(_$CharactersImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'characters': instance.characters?.map((e) => e.toJson()).toList(),
    };

_$AvailableStoresImpl _$$AvailableStoresImplFromJson(
        Map<String, dynamic> json) =>
    _$AvailableStoresImpl(
      (json['id'] as num?)?.toInt(),
      json['name'] as String?,
      json['lat'] as String?,
      json['long'] as String?,
      json['phone'] as String?,
      json['address'] as String?,
      json['description'] as String?,
      json['work_time'] as String?,
    );

Map<String, dynamic> _$$AvailableStoresImplToJson(
        _$AvailableStoresImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'lat': instance.lat,
      'long': instance.long,
      'phone': instance.phone,
      'address': instance.address,
      'description': instance.description,
      'work_time': instance.workTime,
    };

_$AccessoriesImpl _$$AccessoriesImplFromJson(Map<String, dynamic> json) =>
    _$AccessoriesImpl(
      json['name'] as String?,
      (json['products'] as List<dynamic>?)
          ?.map((e) => Products.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AccessoriesImplToJson(_$AccessoriesImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'products': instance.products?.map((e) => e.toJson()).toList(),
    };

_$ProductsImpl _$$ProductsImplFromJson(Map<String, dynamic> json) =>
    _$ProductsImpl(
      (json['id'] as num?)?.toInt(),
      json['name'] as String?,
      json['image'] as String?,
      (json['sale_months'] as List<dynamic>?)
          ?.map((e) => SaleMonths.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['stickers'] as List<dynamic>?)
          ?.map((e) => Stickers.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['availability'] as String?,
      json['discount'] as String?,
      json['code'] as String?,
      (json['main_characters'] as List<dynamic>?)
          ?.map((e) => MainCharacters.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['sale_price'] as num?)?.toInt(),
      json['f_sale_price'] as String?,
      json['old_price'] as String?,
      json['f_old_price'] as String?,
      (json['loan_price'] as num?)?.toDouble(),
      json['f_loan_price'] as String?,
      json['axiom_monthly_price'] as String?,
      (json['reviews_count'] as num?)?.toInt(),
      (json['reviews_average'] as num?)?.toInt(),
      (json['all_count'] as num?)?.toInt(),
      json['brand'] == null
          ? null
          : Brand.fromJson(json['brand'] as Map<String, dynamic>),
      json['low_price'] as String?,
      json['category_id'] as String?,
    );

Map<String, dynamic> _$$ProductsImplToJson(_$ProductsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'sale_months': instance.saleMonths?.map((e) => e.toJson()).toList(),
      'stickers': instance.stickers?.map((e) => e.toJson()).toList(),
      'availability': instance.availability,
      'discount': instance.discount,
      'code': instance.code,
      'main_characters':
          instance.mainCharacters?.map((e) => e.toJson()).toList(),
      'sale_price': instance.salePrice,
      'f_sale_price': instance.fSalePrice,
      'old_price': instance.oldPrice,
      'f_old_price': instance.fOldPrice,
      'loan_price': instance.loanPrice,
      'f_loan_price': instance.fLoanPrice,
      'axiom_monthly_price': instance.axiomMonthlyPrice,
      'reviews_count': instance.reviewsCount,
      'reviews_average': instance.reviewsAverage,
      'all_count': instance.allCount,
      'brand': instance.brand?.toJson(),
      'low_price': instance.lowPrice,
      'category_id': instance.categoryId,
    };

_$BrandImpl _$$BrandImplFromJson(Map<String, dynamic> json) => _$BrandImpl(
      (json['id'] as num?)?.toInt(),
      json['slug'] as String?,
      json['name'] as String?,
    );

Map<String, dynamic> _$$BrandImplToJson(_$BrandImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'slug': instance.slug,
      'name': instance.name,
    };
