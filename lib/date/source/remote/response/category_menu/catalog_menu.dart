import 'package:freezed_annotation/freezed_annotation.dart';

part 'catalog_menu.freezed.dart';
part 'catalog_menu.g.dart';

@freezed
class CatalogMenu with _$CatalogMenu {
  const factory CatalogMenu(
  bool? success,
  String? message,
  int? code,
  GetAllCatalogMenu? data,
      ) = _CatalogMenu;

  factory CatalogMenu.fromJson(Map<String, dynamic> json) =>
      _$CatalogMenuFromJson(json);
}

@freezed
class GetAllCatalogMenu with _$GetAllCatalogMenu {
  const factory GetAllCatalogMenu(
  List<GetCatalogMenu>? data,
      ) = _GetAllCatalogMenu;

  factory GetAllCatalogMenu.fromJson(Map<String, dynamic> json) =>
      _$GetAllCatalogMenuFromJson(json);
}

@freezed
class GetCatalogMenu with _$GetCatalogMenu {
  const factory GetCatalogMenu(
  String? slug,
  String? name,
  String? icon,
  bool? showChildsInWebMobile,
  List<Childs>? childs,
      ) = _GetCatalogMenu;

  factory GetCatalogMenu.fromJson(Map<String, dynamic> json) =>
      _$GetCatalogMenuFromJson(json);
}

@freezed
class Childs with _$Childs {
  const factory Childs(
  String? slug,
  String? name,
  bool? showChildsInWebMobile,
  List<Childs>? childs,
      ) = _Childs;

  factory Childs.fromJson(Map<String, dynamic> json) => _$ChildsFromJson(json);
}