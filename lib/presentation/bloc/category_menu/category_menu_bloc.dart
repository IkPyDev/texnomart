import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:texnomart/domain/repository.dart';

import '../../../data/source/remote/response/category_menu/catalog_menu.dart';
import '../../../data/source/remote/response/detail_responce/detail_responce.dart';
import '../../../di/di.dart';
import '../../../utils/status.dart';

part 'category_menu_event.dart';
part 'category_menu_state.dart';

class CategoryMenuBloc extends Bloc<CategoryMenuEvent, CategoryMenuState> {
  CategoryMenuBloc() : super(CategoryMenuState(status: Status.initial)) {
    final repository = di<TexnoRepository>();
    on<GetCategoryMenuEvent>((event, emit) async {
      // print("loading");
      emit(CategoryMenuState(status: Status.loading));
      try{
        // print("get request loading");

        final res = await repository.getCatalogMenu();

        emit(CategoryMenuState(status: Status.success,data: res.data?.data ?? []));

        // print("suc request loading");

      }catch (e){
        emit(CategoryMenuState(status: Status.fail,errorMessage: e.toString()));
        // print("error handl");

      }
    });
  }
}
