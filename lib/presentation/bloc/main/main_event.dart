part of 'main_bloc.dart';

abstract class MainEvent {}

final class ChangeBottomNavigation extends MainEvent {
  final int chosenIndex;

  ChangeBottomNavigation({required this.chosenIndex});
}

final class LoadAllBasketData extends MainEvent {}