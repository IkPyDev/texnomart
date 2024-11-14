import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_all_category.freezed.dart';

part 'product_all_category.g.dart';

@freezed
class ProductAllCategory with _$ProductAllCategory {
  const factory ProductAllCategory({
     bool? success,
     String? message,
     int? code,
     Datas? data,
  }) = _ProductAllCategory;

  factory ProductAllCategory.fromJson(Map<String, Object?> json) =>
      _$ProductAllCategoryFromJson(json);
}

@freezed
class Datas with _$Datas {
  const factory Datas({
     List<Products>? products,
     Price? price,
     int? saleMonthsCount,
     int? brandsCount,
     Pagination? pagination,
  }) = _Datas;

  factory Datas.fromJson(Map<String, Object?> json) => _$DatasFromJson(json);
}

@freezed
class Products with _$Products {
  const factory Products({
     int? id,
     String? name,
     String? image,
     dynamic availability,
     int? discount,
     String? code,
     int? salePrice,
     String? fSalePrice,
     int? oldPrice,
     String? fOldPrice,
     int? loanPrice,
     String? axiomMonthlyPrice,
     int? reviewsCount,
     int? reviewsAverage,
     int? allCount,
     String? createdAt,
     Brand? brand,
     String? lowPrice,
     int? benefit,
     int? orderCount,
     int? viewed,
     int? rating,
     String? categoryId,
  }) = _Products;

  factory Products.fromJson(Map<String, Object?> json) =>
      _$ProductsFromJson(json);
}

@freezed
class MainCharacters with _$MainCharacters {
  const factory MainCharacters({
     String? name,
     String? value,
     int? order,
  }) = _MainCharacters;

  factory MainCharacters.fromJson(Map<String, Object?> json) =>
      _$MainCharactersFromJson(json);
}

@freezed
class Brand with _$Brand {
  const factory Brand({
     int? id,
     String? slug,
     String? name,
  }) = _Brand;

  factory Brand.fromJson(Map<String, Object?> json) => _$BrandFromJson(json);
}

@freezed
class Filter with _$Filter {
  const factory Filter({
     int? id,
     String? name,
     int? count,
     List<Values>? values,
  }) = _Filter;

  factory Filter.fromJson(Map<String, Object?> json) => _$FilterFromJson(json);
}

@freezed
class Values with _$Values {
  const factory Values({
     int? id,
     String? value,
     int? count,
  }) = _Values;

  factory Values.fromJson(Map<String, Object?> json) => _$ValuesFromJson(json);
}

@freezed
class Price with _$Price {
  const factory Price({
     int? maxPrice,
     int? minPrice,
  }) = _Price;

  factory Price.fromJson(Map<String, Object?> json) => _$PriceFromJson(json);
}

@freezed
class Stickers with _$Stickers {
  const factory Stickers({
     int? id,
     String? name,
     int? count,
  }) = _Stickers;

  factory Stickers.fromJson(Map<String, Object?> json) =>
      _$StickersFromJson(json);
}

@freezed
class Brands with _$Brands {
  const factory Brands({
     int? id,
     String? name,
     int? count,
  }) = _Brands;

  factory Brands.fromJson(Map<String, Object?> json) => _$BrandsFromJson(json);
}


@freezed
class Pagination with _$Pagination {
  const factory Pagination({
     int? totalCount,
     int? currentPage,
     int? totalPage,
     int? pageSize,
  }) = _Pagination;

  factory Pagination.fromJson(Map<String, Object?> json) =>
      _$PaginationFromJson(json);
}
