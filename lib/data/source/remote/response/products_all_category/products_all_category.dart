import 'package:freezed_annotation/freezed_annotation.dart';

part 'products_all_category.freezed.dart';
part 'products_all_category.g.dart';

@freezed
class ProductAllCategory with _$ProductAllCategory {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory ProductAllCategory(
      bool? success,
      String? message,
      int? code,
      GetProductAllCategoryData? data,
      ) = _ProductAllCategory;

  factory ProductAllCategory.fromJson(Map<String, dynamic> json) =>
      _$ProductAllCategoryFromJson(json);
}

@freezed
class GetProductAllCategoryData with _$GetProductAllCategoryData {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory GetProductAllCategoryData(
      List<Products>? products,
      List<int>? categories,
      List<Filter>? filter,
      Price? price,
      List<Stickers>? stickers,
      List<Brand>? brands,
      List<SaleMonths>? saleMonths,
      int? saleMonthsCount,
      int? brandsCount,
      Pagination? pagination,
      ) = _GetProductAllCategoryData;

  factory GetProductAllCategoryData.fromJson(Map<String, dynamic> json) =>
      _$GetProductAllCategoryDataFromJson(json);
}

@freezed
class Products with _$Products {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory Products(
      int? id,
      String? name,
      String? image,
      List<SaleMonths>? saleMonths,
      List<Stickers>? stickers,
      String? availability,
      String? discount,
      String? code,
      List<MainCharacters>? mainCharacters,
      int? salePrice,
      String? fSalePrice,
      String? oldPrice,
      String? fOldPrice,
      double? loanPrice,
      String? fLoanPrice,
      String? axiomMonthlyPrice,
      int? reviewsCount,
      int? reviewsAverage,
      int? allCount,
      Brand? brand,
      String? lowPrice,
      String? categoryId,
      ) = _Products;

  factory Products.fromJson(Map<String, dynamic> json) =>
      _$ProductsFromJson(json);
}

@freezed
class SaleMonths with _$SaleMonths {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory SaleMonths(
      int? id,
      String? name,
      String? key,
      String? image,
      ) = _SaleMonths;

  factory SaleMonths.fromJson(Map<String, dynamic> json) =>
      _$SaleMonthsFromJson(json);
}

@freezed
class Stickers with _$Stickers {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory Stickers(
      String? name,
      String? textColor,
      String? backgroundColor,
      String? key,
      bool? isImage,
      String? image,
      ) = _Stickers;

  factory Stickers.fromJson(Map<String, dynamic> json) =>
      _$StickersFromJson(json);
}

@freezed
class MainCharacters with _$MainCharacters {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory MainCharacters(
      String? name,
      String? value,
      int? order,
      ) = _MainCharacters;

  factory MainCharacters.fromJson(Map<String, dynamic> json) =>
      _$MainCharactersFromJson(json);
}

@freezed
class Brand with _$Brand {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory Brand(
      int? id,
      String? slug,
      String? name,
      ) = _Brand;

  factory Brand.fromJson(Map<String, dynamic> json) => _$BrandFromJson(json);
}

@freezed
class Filter with _$Filter {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory Filter(
      int? id,
      String? name,
      int? count,
      List<Values>? values,
      ) = _Filter;

  factory Filter.fromJson(Map<String, dynamic> json) => _$FilterFromJson(json);
}

@freezed
class Values with _$Values {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory Values(
      int? id,
      String? value,
      int? count,
      ) = _Values;

  factory Values.fromJson(Map<String, dynamic> json) => _$ValuesFromJson(json);
}

@freezed
class Price with _$Price {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory Price(
      int? maxPrice,
      int? minPrice,
      ) = _Price;

  factory Price.fromJson(Map<String, dynamic> json) => _$PriceFromJson(json);
}

@freezed
class GetStickers with _$GetStickers {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory GetStickers(
      int? id,
      String? name,
      int? count,
      ) = _GetStickers;

  factory GetStickers.fromJson(Map<String, dynamic> json) =>
      _$GetStickersFromJson(json);
}

@freezed
class Pagination with _$Pagination {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory Pagination(
      int? totalCount,
      int? currentPage,
      int? totalPage,
      int? pageSize,
      ) = _Pagination;

  factory Pagination.fromJson(Map<String, dynamic> json) =>
      _$PaginationFromJson(json);
}
