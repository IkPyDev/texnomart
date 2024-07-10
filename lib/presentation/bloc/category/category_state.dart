part of 'category_bloc.dart';

class CategoryState  extends Equatable {
  final Status status;
  final GetProductAllCategoryData? data;
  final String? errorMessage;
  final ChildData? childs;
  final ChildStatus? childStatus;

  CategoryState({required this.status, this.data, this.errorMessage,this.childs,this.childStatus});

  CategoryState copyWith({
    Status? status,
    GetProductAllCategoryData? data,
    String? errorMessage,
    ChildData? childs,
    ChildStatus? childStatus,
  }) =>
      CategoryState( status:status ?? this.status,data:  data ?? this.data,
          errorMessage: errorMessage ?? this.errorMessage,childs: childs ?? this.childs,childStatus: childStatus ?? this.childStatus);

  @override

  List<Object?> get props => [status,data,errorMessage,childs,childStatus];
}
enum ChildStatus{
  loading,success
}
