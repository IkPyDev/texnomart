import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:texnomart/domain/repository.dart';

import '../../../data/source/remote/response/childs_response/childs_respose.dart';
import '../../../data/source/remote/response/products_all_category/products_all_category.dart';
import '../../../di/di.dart';
import '../../../utils/status.dart';

part 'category_event.dart';

part 'category_state.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  CategoryBloc() : super(CategoryState(status: Status.initial)) {
    final repository = di<TexnoRepository>();
    on<GetSlugCategoryEvent>((event, emit) async {
      emit(CategoryState(status: Status.loading));
      try {

        print(event.slug);
        print("Evntga keldi");
        final response =
            await repository.getAllCategory(categoryName: event.slug);
        emit(CategoryState(status: Status.success, data: response.data));
        print("Evetdan ui ketdi");
      } on DioException {
        rethrow;
      }catch(e){
        emit(CategoryState(status: Status.fail,errorMessage: e.toString()));
      }
    });
  }
}
