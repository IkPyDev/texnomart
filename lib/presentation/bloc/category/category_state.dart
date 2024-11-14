part of 'category_bloc.dart';

class CategoryState extends Equatable {
  final Status status;
  final ProductAllCategory? data;
  final String? errorMessage;
  final ChildData? childs;
  final ChildStatus? childStatus;
  final CategoryItemData? categoryItemData;

  const CategoryState({
    required this.status,
    this.data,
    this.errorMessage,
    this.childs,
    this.childStatus,
    this.categoryItemData,
  });

  CategoryState copyWith({
    Status? status,
    ProductAllCategory? data,
    String? errorMessage,
    ChildData? childs,
    ChildStatus? childStatus,
    CategoryItemData? categoryItemData,
  }) =>
      CategoryState(
          status: status ?? this.status,
          data: data ?? this.data,
          errorMessage: errorMessage ?? this.errorMessage,
          childs: childs ?? this.childs,
          childStatus: childStatus ?? this.childStatus,
          categoryItemData: categoryItemData ?? this.categoryItemData
      );

  @override
  List<Object?> get props => [status, data, errorMessage, childs, childStatus, categoryItemData];
}

enum ChildStatus { loading, success }
