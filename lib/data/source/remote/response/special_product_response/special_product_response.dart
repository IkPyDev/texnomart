import 'package:freezed_annotation/freezed_annotation.dart';

part 'special_product_response.freezed.dart';

part 'special_product_response.g.dart';

@freezed
class SpecialProductResponse with _$SpecialProductResponse {
  @JsonSerializable(fieldRename: FieldRename.snake)

  const factory SpecialProductResponse(
    bool? success,
    String? message,
    int? code,
    SpPrData? data,
  ) = _SpecialProductResponse;

  factory SpecialProductResponse.fromJson(Map<String, dynamic> json) =>
      _$SpecialProductResponseFromJson(json);
}

@freezed
class SpPrData with _$SpPrData {
  const factory SpPrData(
    List<SpPrItems> data,
  ) = _SpPrData;

  factory SpPrData.fromJson(Map<String, dynamic> json) =>
      _$SpPrDataFromJson(json);
}

@freezed
class SpPrItems with _$SpPrItems {
  const factory SpPrItems(
    int? id,
    String? name,
    String? image,
    String? availability,
    String? axiomMonthlyPrice,
    @JsonKey(name: "sale_price") int? salePrice,
    String? oldPrice,
    int? finishPrice,
    int? discountPrice,
    int? reviewsCount,
    int? reviewsAverage,
    int? allCount,
    List<SpPrdDataStickers>? stickers,
    @JsonKey(name: "sale_months") List<SpPrDateSaleMonths>? saleMonths,
  ) = _SpPrItems;

  factory SpPrItems.fromJson(Map<String, dynamic> json) =>
      _$SpPrItemsFromJson(json);
}

@freezed
class SpPrdDataStickers with _$SpPrdDataStickers {
  const factory SpPrdDataStickers(
    String? name,
    String? backgroundColor,
    String? textColor,
    bool? isImage,
    bool? showInCard,
    String? image,
  ) = _SpPrdDataStickers;

  factory SpPrdDataStickers.fromJson(Map<String, dynamic> json) =>
      _$SpPrdDataStickersFromJson(json);
}

@freezed
class SpPrDateSaleMonths with _$SpPrDateSaleMonths {
  const factory SpPrDateSaleMonths(
    int? id,
    String? key,
    String? name,
    String? image,
  ) = _SpPrDateSaleMonths;

  factory SpPrDateSaleMonths.fromJson(Map<String, dynamic> json) =>
      _$SpPrDateSaleMonthsFromJson(json);
}
