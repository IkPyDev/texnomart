part of 'category_bloc.dart';

abstract class CategoryEvent {}


final class GetSlugCategoryEvent extends CategoryEvent{
  final String slug;

  GetSlugCategoryEvent({required this.slug});

}

final class SelectSlugCategoryEvent extends CategoryEvent{
  final String childSlug;
  SelectSlugCategoryEvent( {required this.childSlug});
}