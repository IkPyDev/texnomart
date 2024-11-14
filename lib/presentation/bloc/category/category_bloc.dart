import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:texnomart/common/di/di.dart';
import 'package:texnomart/common/utils/print.dart';
import 'package:texnomart/domain/repository.dart';
import 'package:texnomart/ui/category/category_data.dart';

import 'package:texnomart/data/source/remote/response/childs_response/childs_respose.dart';
import 'package:texnomart/data/source/remote/response/products_all_category/product_all_category.dart';
import 'package:texnomart/utils/status.dart';

part 'category_event.dart';
part 'category_state.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  CategoryBloc() : super(const CategoryState(status: Status.initial)) {
    final repository = di<TexnoRepository>();
    on<GetSlugCategoryEvent>((event, emit) async {
      emit(state.copyWith(status: Status.loading, categoryItemData: event.slug));
      try {
        pPrint(event.slug);
        pPrint("Evntga keldi");
        final response = await repository.getAllCategory(categoryName: event.slug.slug);
        emit(state.copyWith(status: Status.success, data: response));
        pPrint("Evetdan ui ketdi");
      } catch (e, s) {
        pPrint("${e} ${s}");
        emit(state.copyWith(status: Status.fail, errorMessage: e.toString()));
      }
    });
  }
}
