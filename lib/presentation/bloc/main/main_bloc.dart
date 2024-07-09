import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:texnomart/date/source/local/hive/basket_hive.dart';
import 'package:texnomart/date/source/local/hive/item_hive_manager.dart';

import '../../../utils/status.dart';

part 'main_event.dart';
part 'main_state.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  MainBloc() : super(MainState.initial()) {
    on<ChangeBottomNavigation>(
      (event, emit) => _changeBottomNavigation(event, emit),
    );
    on<LoadAllBasketData>((event, emit) => _loadAllBasketData(event, emit));
  }

  _changeBottomNavigation(
    ChangeBottomNavigation event,
    Emitter<MainState> emit,
  ) {
   emit( state.copyWith(bottomNavigationIndex: event.chosenIndex));
  }
  _loadAllBasketData(LoadAllBasketData event, Emitter<MainState> emit) {
    final ls = ItemHiveManager.basket.values.toList();
    print("basket all size ${ls.length}" );
    emit(state.copyWith(notificationCount: ls.length,));
  }
}
