part of 'home_bloc.dart';

class HomeState {
  HomeStatus? status;
  List<CategoryItem>? categoryResponse;
  List<SlidersDatum>? slidersResponse;
  List<SpPrItems>? specialProductResponse;
  String? errorMessage;

  HomeState(
      {this.status,
      this.categoryResponse,
      this.slidersResponse,
      this.specialProductResponse,
      this.errorMessage});

  HomeState copyWith({
    HomeStatus? status,
    List<CategoryItem>? categoryResponse,
    List<SlidersDatum>? slidersResponse,
    List<SpPrItems>? specialProductResponse,
    String? errorMessage,
  }) =>
      HomeState(
          status: status ?? this.status,
          categoryResponse: categoryResponse ?? this.categoryResponse,
          slidersResponse: slidersResponse ?? this.slidersResponse,
          specialProductResponse:
              specialProductResponse ?? this.specialProductResponse,
          errorMessage: errorMessage ?? this.errorMessage);
}

enum HomeStatus { initial, loading, successful, fail }
