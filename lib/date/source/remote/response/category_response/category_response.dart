import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


part 'category_response.g.dart';

part 'category_response.freezed.dart';

@freezed
class CategoryResponse with _$CategoryResponse {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)

  const factory CategoryResponse(
  bool? success,
  String? message,
  int? code,
  CategoryData? data,
      ) = _CategoryResponse;

  factory CategoryResponse.fromJson(Map<String, dynamic> json) =>
      _$CategoryResponseFromJson(json);
}

@freezed
class CategoryData with _$CategoryData {
  const factory CategoryData(
  List<CategoryItem>? data
      ) = _CategoryData;

  factory CategoryData.fromJson(Map<String, dynamic> json) =>
      _$CategoryDataFromJson(json);
}

@freezed
class CategoryItem with _$CategoryItem {
  const factory CategoryItem(
  String? title,
  String? image,
  String? slug,
      ) = _CategoryItem;

  factory CategoryItem.fromJson(Map<String, dynamic> json) =>
      _$CategoryItemFromJson(json);
}