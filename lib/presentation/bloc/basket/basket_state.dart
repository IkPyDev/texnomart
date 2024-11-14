part of 'basket_bloc.dart';

class BasketState {
  final List<BasketHive>? basketList;
  final double allPrice;
  final int allCount;
  final bool allChecked;
  final Status status;

  factory BasketState.initial() {
    return const BasketState(
      allPrice: 0,
      allCount: 0,
      allChecked: true,
      status: Status.loading,
    );
  }

  BasketState copyWith({
    List<BasketHive>? basketList,
    double? allPrice,
    int? allCount,
    bool? allChecked,
    Status? status,
  }) {
    return BasketState(
      basketList: basketList ?? this.basketList,
      allCount: allCount ?? this.allCount,
      allChecked: allChecked ?? this.allChecked,
      allPrice: allPrice ?? this.allPrice,
      status: status ?? this.status,
    );
  }

  const BasketState({
    this.basketList,
    this.allChecked = false,
    required this.allPrice,
    required this.allCount,
    required this.status,
  });
}