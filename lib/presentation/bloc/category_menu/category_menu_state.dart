part of 'category_menu_bloc.dart';

 class CategoryMenuState {
  Status status;
  List<GetCatalogMenu>? data;
  String? errorMessage;
  CategoryMenuState ({required this.status,this.data,this.errorMessage});

  CategoryMenuState copyWith({Status? status,List<GetCatalogMenu>? data,String? errorMessage }) =>
      CategoryMenuState(status: status ?? this.status,data: data ?? this.data,errorMessage: errorMessage ?? this.errorMessage);
}


