part of 'markets_bloc.dart';

abstract class MarketsEvent {}


final class LoadMarketEvent extends MarketsEvent {}

final class SelectMarketEvent extends MarketsEvent{
  int index;

  SelectMarketEvent(this.index);
}
class SearchMarketEvent extends MarketsEvent {
  final String query;
  SearchMarketEvent(this.query);
}