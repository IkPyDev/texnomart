part of 'markets_bloc.dart';

class MarketsState {
  final List<Datum> data;
  final List<OpenedStore> filteredData;
  final Status status;
  final int index;

  MarketsState({required this.data, required this.filteredData, required this.status, required this.index});

  MarketsState copyWith({
    List<Datum>? data,
    List<OpenedStore>? filteredData,
    Status? status,
    int? index,
  }) {
    return MarketsState(
      data: data ?? this.data,
      filteredData: filteredData ?? this.filteredData,
      status: status ?? this.status,
      index: index ?? this.index,
    );
  }
}
