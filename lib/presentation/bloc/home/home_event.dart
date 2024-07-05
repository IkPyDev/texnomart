part of 'home_bloc.dart';

abstract class HomeEvent {}

// load all at once
final class LoadDataHomeEvent extends HomeEvent{}
final class FailHomeEvent extends HomeEvent{}
