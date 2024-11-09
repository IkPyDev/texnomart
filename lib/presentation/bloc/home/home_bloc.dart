import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:texnomart/data/source/remote/response/category_response/category_response.dart';
import 'package:texnomart/data/source/remote/response/sliders_response/sliders_response.dart';
import 'package:texnomart/data/source/remote/response/special_product_response/special_product_response.dart';
import 'package:texnomart/domain/repository.dart';

import '../../../di/di.dart';

part 'home_event.dart';

part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final _repository = di<TexnoRepository>();

  HomeBloc() : super(HomeState(status: HomeStatus.initial)) {
    on<LoadDataHomeEvent>((event, emit) => _loadAllFromApi(event, emit));
    //
    // on<LoadSliders>((event, emit) => _loadSliders(event, emit));
    // on<LoadSpecialCategories>((event, emit) => _loadSpecialCategories(event, emit));
  }

  // All at once
  _loadAllFromApi(LoadDataHomeEvent event, Emitter<HomeState> emit) async {
    emit(HomeState(status: HomeStatus.loading));
    try {
      final value = await Future.wait([_repository.getSliders(),_repository.getCategory(),_repository.getProductsNews()]);
      final sliders = value[0] as SlidersResponse;
      final category = value[1] as CategoryResponse;
      final productTop = value[2] as SpecialProductResponse ;
      emit(HomeState(status: HomeStatus.successful,
          categoryResponse: category.data?.data,slidersResponse: sliders.data?.datum,specialProductResponse: productTop.data?.data));

    }catch (e){
      emit(HomeState(status: HomeStatus.fail,errorMessage: e.toString()));
    }



  }
}
