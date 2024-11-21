part of 'category_bloc.dart';

abstract class CategoryEvent {}


final class GetSlugCategoryEvent extends CategoryEvent{
  final CategoryItemData slug;

  GetSlugCategoryEvent({required this.slug});

}

final class SelectSlugCategoryEvent extends CategoryEvent{
  final String childSlug;
  SelectSlugCategoryEvent( {required this.childSlug});
}

final class PaginationEvent extends CategoryEvent{
  PaginationEvent();
}
final class ScrollChangeEvent extends CategoryEvent {
  final bool isScrollingUp;

  ScrollChangeEvent({required this.isScrollingUp});
}

final class HideLottieEvent extends CategoryEvent {
  HideLottieEvent();
}