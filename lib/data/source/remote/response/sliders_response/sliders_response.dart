import 'package:freezed_annotation/freezed_annotation.dart';


part 'sliders_response.g.dart';

part 'sliders_response.freezed.dart';




@freezed
class SlidersResponse with _$SlidersResponse {
  @JsonSerializable( fieldRename: FieldRename.snake)
  const factory SlidersResponse(
      bool? success,
      String? message,
      int? code,
      SlidersData? data,) = _SlidersResponse;

  factory SlidersResponse.fromJson(Map<String,dynamic> json ) => _$SlidersResponseFromJson(json);
}

@freezed
class SlidersData with _$SlidersData {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory SlidersData(
      @JsonKey(name: "data")
      List<SlidersDatum>? datum,) = _SlidersDate;

  factory SlidersData.fromJson(Map<String,dynamic> json ) => _$SlidersDataFromJson(json);
}

@freezed
class SlidersDatum with _$SlidersDatum {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory SlidersDatum(
  int? id,
  String? link,
  String? title,
  String? imageWeb,
  String? imageMobileWeb,) = _SlidersDatum;

  factory SlidersDatum.fromJson(Map<String,dynamic> json ) => _$SlidersDatumFromJson(json);
}
