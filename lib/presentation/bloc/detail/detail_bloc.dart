import 'package:bloc/bloc.dart';
import 'package:texnomart/date/source/local/hive/basket_hive.dart';
import 'package:texnomart/domain/repository.dart';

import '../../../date/source/local/hive/item_hive_manager.dart';
import '../../../date/source/remote/response/detail_responce/detail_responce.dart';
import '../../../di/di.dart';
import '../../../utils/status.dart';

part 'detail_event.dart';

part 'detail_state.dart';

class DetailBloc extends Bloc<DetailEvent, DetailState> {
  DetailBloc() : super(DetailState(status: Status.initial)) {
    final repository = di<TexnoRepository>();
    on<DetailIdEvent>((event, emit) async {
      emit(state.copyWith(
          status: Status.loading, isFavorite: StatusDetail.loading,));
    
        print("HHHHHHHHHHHHHHHHHHHHHHHH");
        print(event.id);
        final res = await repository.getDetail(id: event.id);
        print("AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA");
        bool isFavorite = ItemHiveManager.isFavorite(event.id);
        if (!isFavorite) {
          print("is Bloc Add");
          emit(state.copyWith(isFavorite: StatusDetail.add));
        } else {
          print("is Bloc no favorite");

          emit(state.copyWith(isFavorite: StatusDetail.delete));
        }
        print("is bloc sec");
        print("VVVVVVVVVVVVVVVVVVVVVVVVVVVVV");
        print(res.data?.data);
        emit(state.copyWith(status: Status.success, detail: res.data?.data));

    });
    on<DetailAddFavoriteEvent>((event, emit) async {
      await ItemHiveManager.addBasket(event.basket);
      print("add basket data");
      emit(state.copyWith(isFavorite: StatusDetail.delete));
    });

    on<DetailDeleteId>((event, emit) async {
      await ItemHiveManager.deleteBasketData(event.id);
      print("delete basket data");

      emit(state.copyWith(isFavorite: StatusDetail.add));
    });
  }
}
