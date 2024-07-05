import 'package:freezed_annotation/freezed_annotation.dart';

part 'detail_responce.g.dart';
part 'detail_responce.freezed.dart';

@freezed
class DetailResponse with _$DetailResponse {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory DetailResponse(
      bool? success,
      String? message,
      int? code,
      @JsonKey(name: "data")
      GetDataDetail? data,
      ) = _DetailResponse;

  factory DetailResponse.fromJson(Map<String, dynamic> json) =>
      _$DetailResponseFromJson(json);
}

@freezed
class GetDataDetail with _$GetDataDetail {
  const factory GetDataDetail(
      GetDetail? data
      ) = _GetDataDetail;

  factory GetDataDetail.fromJson(Map<String, dynamic> json) =>
      _$GetDataDetailFromJson(json);
}

@freezed
class GetDetail with _$GetDetail {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory GetDetail(
      int? id,
      String? name,
      String? guarantee,
      Catalog? catalog,
      List<String>? smallImages,
      List<String>? largeImages,
      String? availability,
      String? model,
      String? brand,
      int? salePrice,
      int? loanPrice,
      String? oldPrice,
      String? minimalLoanPrice,
      String? code,
      List<SaleMonths>? saleMonths,
      int? reviewsCount,
      String? reviewsMiddleRating,
      Seo? seo,
      List<Stickers>? stickers,
      List<MainCharacters>? mainCharacters,
      List<Breadcrumbs>? breadcrumbs,
      String? description,
      String? overview,
      List<Characters>? characters,
      List<AvailableStores>? availableStores,
      List<Accessories>? accessories,
      int? promotion0012Price,
      ) = _GetDetail;

  factory GetDetail.fromJson(Map<String, dynamic> json) => _$GetDetailFromJson(json);
}

@freezed
class Catalog with _$Catalog {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory Catalog(
      String? name,
      int? minPrice,
      int? maxPrice,
      ) = _Catalog;

  factory Catalog.fromJson(Map<String, dynamic> json) =>
      _$CatalogFromJson(json);
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
class Seo with _$Seo {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory Seo(
      String? title,
      String? description,
      String? keywords,
      String? image,
      String? scriptSeo,
      ) = _Seo;

  factory Seo.fromJson(Map<String, dynamic> json) => _$SeoFromJson(json);
}

@freezed
class Stickers with _$Stickers {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory Stickers(
      String? name,
      String? backgroundColor,
      String? textColor,
      bool? isImage,
      bool? showInCard,
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
      ) = _MainCharacters;

  factory MainCharacters.fromJson(Map<String, dynamic> json) =>
      _$MainCharactersFromJson(json);
}

@freezed
class Breadcrumbs with _$Breadcrumbs {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory Breadcrumbs(
      String? name,
      String? slug,
      int? id,
      String? type,
      ) = _Breadcrumbs;

  factory Breadcrumbs.fromJson(Map<String, dynamic> json) =>
      _$BreadcrumbsFromJson(json);
}

@freezed
class Characters with _$Characters {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory Characters(
      String? name,
      List<Characters>? characters,
      ) = _Characters;

  factory Characters.fromJson(Map<String, dynamic> json) =>
      _$CharactersFromJson(json);
}

@freezed
class AvailableStores with _$AvailableStores {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory AvailableStores(
      int? id,
      String? name,
      String? lat,
      String? long,
      String? phone,
      String? address,
      String? description,
      String? workTime,
      ) = _AvailableStores;

  factory AvailableStores.fromJson(Map<String, dynamic> json) =>
      _$AvailableStoresFromJson(json);
}

@freezed
class Accessories with _$Accessories {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory Accessories(
      String? name,
      List<Products>? products,
      ) = _Accessories;

  factory Accessories.fromJson(Map<String, dynamic> json) =>
      _$AccessoriesFromJson(json);
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
class Brand with _$Brand {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory Brand(
      int? id,
      String? slug,
      String? name,
      ) = _Brand;

  factory Brand.fromJson(Map<String, dynamic> json) => _$BrandFromJson(json);
}
