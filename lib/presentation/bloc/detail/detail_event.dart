part of 'detail_bloc.dart';

abstract class DetailEvent {}


final class DetailIdEvent extends DetailEvent{
  final String id;

  DetailIdEvent({required this.id});
}

final class DetailAddFavoriteEvent extends DetailEvent{
  final BasketHive basket;

  DetailAddFavoriteEvent({required this.basket});

}

final class DetailDeleteId extends DetailEvent{
  final String id;

  DetailDeleteId({required this.id});

}