import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:texnomart/data/model/model.dart';
import 'package:texnomart/domain/repository.dart';
import 'package:texnomart/utils/status.dart';
import 'package:texnomart/common/di/di.dart';


part 'markets_event.dart';

part 'markets_state.dart';

class MarketsBloc extends Bloc<MarketsEvent, MarketsState> {
  MarketsBloc() : super(MarketsState(data: [], filteredData: [], status: Status.initial, index: 0)) {
    final repository = di<TexnoRepository>();
    late SerModel res;

    on<LoadMarketEvent>((event, emit) async {
      emit(state.copyWith(status: Status.loading));
      try {
        res = await repository.getAllCountry();
        emit(state.copyWith(
            status: Status.success, data: res.data.data, filteredData: res.data.data[state.index].openedStores));
      } catch (e) {
        emit(state.copyWith(status: Status.fail));
      }
    });

    on<SelectMarketEvent>((event, emit) {
      emit(state.copyWith(
          index: event.index,
          status: Status.success,
          filteredData: state.data[event.index].openedStores,
          data: res.data.data));
    });

    on<SearchMarketEvent>((event, emit) {
      final filteredData = state.data[state.index].openedStores
          .where((store) => store.address.toLowerCase().contains(event.query.toLowerCase()))
          .toList();
      emit(state.copyWith(filteredData: filteredData, status: Status.success));
    });
  }
}
