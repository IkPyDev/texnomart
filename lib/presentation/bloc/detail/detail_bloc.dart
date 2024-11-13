import 'package:bloc/bloc.dart';
import 'package:texnomart/common/utils/print.dart';
import 'package:texnomart/data/source/local/hive/basket_hive.dart';
import 'package:texnomart/domain/repository.dart';

import 'package:texnomart/data/source/local/hive/item_hive_manager.dart';
import "../../../data/source/remote/response/detail_responce/detail_responce.dart";
import 'package:texnomart/common/di/di.dart';

import 'package:texnomart/utils/status.dart';

part 'detail_event.dart';

part 'detail_state.dart';

class DetailBloc extends Bloc<DetailEvent, DetailState> {
  DetailBloc() : super(DetailState(status: Status.initial)) {
    final repository = di<TexnoRepository>();
    on<DetailIdEvent>((event, emit) async {
      emit(state.copyWith(
          status: Status.loading, isFavorite: StatusDetail.loading,));
    
        pPrint("HHHHHHHHHHHHHHHHHHHHHHHH");
        pPrint(event.id);
        final res = await repository.getDetail(id: event.id);
        pPrint("AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA");
        bool isFavorite = ItemHiveManager.isFavorite(event.id);
        if (!isFavorite) {
          pPrint("is Bloc Add");
          emit(state.copyWith(isFavorite: StatusDetail.add));
        } else {
          pPrint("is Bloc no favorite");

          emit(state.copyWith(isFavorite: StatusDetail.delete));
        }
        pPrint("is bloc sec");
        pPrint("VVVVVVVVVVVVVVVVVVVVVVVVVVVVV");
        pPrint(res.data?.data);
        emit(state.copyWith(status: Status.success, detail: res.data?.data));

    });
    on<DetailAddFavoriteEvent>((event, emit) async {
      await ItemHiveManager.addBasket(event.basket);
      pPrint("add basket data");
      emit(state.copyWith(isFavorite: StatusDetail.delete));
    });

    on<DetailDeleteId>((event, emit) async {
      await ItemHiveManager.deleteBasketData(event.id);
      pPrint("delete basket data");

      emit(state.copyWith(isFavorite: StatusDetail.add));
    });
  }
}
