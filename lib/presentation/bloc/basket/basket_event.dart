part of 'basket_bloc.dart';

abstract class BasketEvent {}

final class AddToBasketEvent extends BasketEvent {
  final BasketHive data;

  AddToBasketEvent({required this.data});
}

final class LoadBasketData extends BasketEvent {}

final class RemoveProduct extends BasketEvent {
  final int index;

  RemoveProduct({required this.index});
}

final class ChangeAllChecks extends BasketEvent {}

final class OnClickCheckBox extends BasketEvent {
  final int index;

  OnClickCheckBox({required this.index});
}

final class Increment extends BasketEvent {
  final int index;

  Increment({required this.index});
}

final class Decrement extends BasketEvent {
  final int index;

  Decrement({required this.index});
}

/*
  all checked
  list basketdata box
  all price
  all count = basketList.length


* */