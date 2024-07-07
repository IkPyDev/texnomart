// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products_all_category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductAllCategoryImpl _$$ProductAllCategoryImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductAllCategoryImpl(
      json['success'] as bool?,
      json['message'] as String?,
      (json['code'] as num?)?.toInt(),
      json['data'] == null
          ? null
          : GetProductAllCategoryData.fromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ProductAllCategoryImplToJson(
        _$ProductAllCategoryImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'code': instance.code,
      'data': instance.data?.toJson(),
    };

_$GetProductAllCategoryDataImpl _$$GetProductAllCategoryDataImplFromJson(
        Map<String, dynamic> json) =>
    _$GetProductAllCategoryDataImpl(
      (json['products'] as List<dynamic>?)
          ?.map((e) => Products.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['categories'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      (json['filter'] as List<dynamic>?)
          ?.map((e) => Filter.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['price'] == null
          ? null
          : Price.fromJson(json['price'] as Map<String, dynamic>),
      (json['stickers'] as List<dynamic>?)
          ?.map((e) => Stickers.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['brands'] as List<dynamic>?)
          ?.map((e) => Brand.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['sale_months'] as List<dynamic>?)
          ?.map((e) => SaleMonths.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['sale_months_count'] as num?)?.toInt(),
      (json['brands_count'] as num?)?.toInt(),
      json['pagination'] == null
          ? null
          : Pagination.fromJson(json['pagination'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GetProductAllCategoryDataImplToJson(
        _$GetProductAllCategoryDataImpl instance) =>
    <String, dynamic>{
      'products': instance.products?.map((e) => e.toJson()).toList(),
      'categories': instance.categories,
      'filter': instance.filter?.map((e) => e.toJson()).toList(),
      'price': instance.price?.toJson(),
      'stickers': instance.stickers?.map((e) => e.toJson()).toList(),
      'brands': instance.brands?.map((e) => e.toJson()).toList(),
      'sale_months': instance.saleMonths?.map((e) => e.toJson()).toList(),
      'sale_months_count': instance.saleMonthsCount,
      'brands_count': instance.brandsCount,
      'pagination': instance.pagination?.toJson(),
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

_$StickersImpl _$$StickersImplFromJson(Map<String, dynamic> json) =>
    _$StickersImpl(
      json['name'] as String?,
      json['text_color'] as String?,
      json['background_color'] as String?,
      json['key'] as String?,
      json['is_image'] as bool?,
      json['image'] as String?,
    );

Map<String, dynamic> _$$StickersImplToJson(_$StickersImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'text_color': instance.textColor,
      'background_color': instance.backgroundColor,
      'key': instance.key,
      'is_image': instance.isImage,
      'image': instance.image,
    };

_$MainCharactersImpl _$$MainCharactersImplFromJson(Map<String, dynamic> json) =>
    _$MainCharactersImpl(
      json['name'] as String?,
      json['value'] as String?,
      (json['order'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$MainCharactersImplToJson(
        _$MainCharactersImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'value': instance.value,
      'order': instance.order,
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

_$FilterImpl _$$FilterImplFromJson(Map<String, dynamic> json) => _$FilterImpl(
      (json['id'] as num?)?.toInt(),
      json['name'] as String?,
      (json['count'] as num?)?.toInt(),
      (json['values'] as List<dynamic>?)
          ?.map((e) => Values.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$FilterImplToJson(_$FilterImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'count': instance.count,
      'values': instance.values?.map((e) => e.toJson()).toList(),
    };

_$ValuesImpl _$$ValuesImplFromJson(Map<String, dynamic> json) => _$ValuesImpl(
      (json['id'] as num?)?.toInt(),
      json['value'] as String?,
      (json['count'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ValuesImplToJson(_$ValuesImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'value': instance.value,
      'count': instance.count,
    };

_$PriceImpl _$$PriceImplFromJson(Map<String, dynamic> json) => _$PriceImpl(
      (json['max_price'] as num?)?.toInt(),
      (json['min_price'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$PriceImplToJson(_$PriceImpl instance) =>
    <String, dynamic>{
      'max_price': instance.maxPrice,
      'min_price': instance.minPrice,
    };

_$GetStickersImpl _$$GetStickersImplFromJson(Map<String, dynamic> json) =>
    _$GetStickersImpl(
      (json['id'] as num?)?.toInt(),
      json['name'] as String?,
      (json['count'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$GetStickersImplToJson(_$GetStickersImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'count': instance.count,
    };

_$PaginationImpl _$$PaginationImplFromJson(Map<String, dynamic> json) =>
    _$PaginationImpl(
      (json['total_count'] as num?)?.toInt(),
      (json['current_page'] as num?)?.toInt(),
      (json['total_page'] as num?)?.toInt(),
      (json['page_size'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$PaginationImplToJson(_$PaginationImpl instance) =>
    <String, dynamic>{
      'total_count': instance.totalCount,
      'current_page': instance.currentPage,
      'total_page': instance.totalPage,
      'page_size': instance.pageSize,
    };
