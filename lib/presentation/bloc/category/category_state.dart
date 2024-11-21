part of 'category_bloc.dart';

class CategoryState extends Equatable {
  final Status status;
  final ProductAllCategory? data;
  final String? errorMessage;
  final ChildData? childs;
  final ChildStatus? childStatus;
  final CategoryItemData? categoryItemData;
   int? currentPage;
  final int? totalPage;
  final bool hasShowedLottie;
  final bool isLottieVisible;


  final List<Products>? products;


   CategoryState({
     this.isLottieVisible = false,
     this.hasShowedLottie = false,
    this.products,
    required this.status,
    this.data,
    this.totalPage = 1,
    this.currentPage = 1,
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
    List<Products>? products,
    bool? isLottieVisible,

    bool? hasShowedLottie,

    int? currentPage,
    int? totalPage,
  }) =>
      CategoryState(
          status: status ?? this.status,
          data: data ?? this.data,
          isLottieVisible: isLottieVisible ?? this.isLottieVisible,
          errorMessage: errorMessage ?? this.errorMessage,
          childs: childs ?? this.childs,
          childStatus: childStatus ?? this.childStatus,
          products: products ?? this.products,
          currentPage: currentPage ?? this.currentPage,
          totalPage: totalPage ?? this.totalPage,
          hasShowedLottie: hasShowedLottie ?? this.hasShowedLottie,
          categoryItemData: categoryItemData ?? this.categoryItemData);

  @override
  List<Object?> get props => [status, data, errorMessage, childs, childStatus, categoryItemData, products];
}

enum ChildStatus { loading, success , fail}
