import 'package:freezed_annotation/freezed_annotation.dart';

part 'childs_respose.g.dart';
part 'childs_respose.freezed.dart';

@freezed
class ChildsRespose with _$ChildsRespose {
  @JsonSerializable( fieldRename: FieldRename.snake)
  const factory ChildsRespose(
      bool? success,
      String? message,
      int? code,
      Datums? data,

      ) = _ChildsRespose;

  factory ChildsRespose.fromJson(Map<String, dynamic> json) =>
      _$ChildsResposeFromJson(json);
}

@freezed
class Datums with _$Datums {
  const factory Datums(
      List<ChildData> data,
      ) = _Datums;

  factory Datums.fromJson(Map<String, dynamic> json) => _$DatumsFromJson(json);
}

@freezed
class ChildData with _$ChildData {
  const factory ChildData(
  String? slug,
  String? name,
  String? icon,
  bool? showChildsInWebMobile,
  List<Childs>? childs,
      ) = _ChildData;

  factory ChildData.fromJson(Map<String, dynamic> json) =>
      _$ChildDataFromJson(json);
}

@freezed
class Childs with _$Childs {
  const factory Childs(
  String? slug,
  String? name,
  bool? showChildsInWebMobile,
      ) = _Childs;

  factory Childs.fromJson(Map<String, dynamic> json) => _$ChildsFromJson(json);
}