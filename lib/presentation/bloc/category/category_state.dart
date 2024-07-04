part of 'category_bloc.dart';

class CategoryState {
  Status status;
  GetProductAllCategoryData? data;
  String? errorMessage;

  CategoryState({required this.status, this.data, this.errorMessage});

  CategoryState copyWith({
    Status? status,
    GetProductAllCategoryData? data,
    String? errorMessage,
  }) =>
      CategoryState( status:status ?? this.status,data:  data ?? this.data,
          errorMessage: errorMessage ?? this.errorMessage);
}
