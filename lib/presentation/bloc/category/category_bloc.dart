import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:texnomart/common/di/di.dart';
import 'package:texnomart/common/utils/print.dart';
import 'package:texnomart/data/source/remote/response/childs_response/childs_respose.dart';
import 'package:texnomart/data/source/remote/response/products_all_category/product_all_category.dart';
import 'package:texnomart/domain/repository.dart';
import 'package:texnomart/ui/category/category_data.dart';
import 'package:texnomart/utils/status.dart';

part 'category_event.dart';
part 'category_state.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  CategoryBloc()
      : super(
          CategoryState(status: Status.initial, isLottieVisible: false // Бошланғич қийматни false қилиб қўйдик
              ),
        ) {
    final repository = di<TexnoRepository>();

    on<GetSlugCategoryEvent>(
      (event, emit) async {
        emit(
          state.copyWith(status: Status.loading, categoryItemData: event.slug),
        );
        try {
          pPrint(event.slug);
          pPrint("Evntga keldi");
          final response = await repository.getAllCategory(categoryName: event.slug.slug);
          emit(
            state.copyWith(
                status: Status.success,
                data: response,
                products: response.data?.products ?? [],
                currentPage: response.data?.pagination?.currentPage ?? 1,
                totalPage: response.data?.pagination?.totalPage ?? 1,
                isLottieVisible: false // Бошланғич қийматни false қилдик
                ),
          );
          pPrint("Evetdan ui ketdi");
        } catch (e, s) {
          pPrint("$e $s");
          emit(state.copyWith(
            status: Status.fail,
            errorMessage: e.toString(),
          ));
        }
      },
    );

    on<PaginationEvent>(
      (event, emit) async {
        if (state.childStatus != ChildStatus.loading && (state.currentPage ?? 1) < (state.totalPage ?? 1)) {
          emit(
            state.copyWith(childStatus: ChildStatus.loading),
          );
          if ((state.currentPage ?? 1) < (state.totalPage ?? 1)) {
            try {
              final response = await repository.getAllCategory(
                categoryName: state.categoryItemData!.slug,
                page: ((state.currentPage ?? 1) + 1).toString(),
              );
              final isLastPage =
                  (response.data?.pagination?.currentPage ?? 1) >= (response.data?.pagination?.totalPage ?? 1);
              pPrint(response.data?.pagination?.currentPage, title: "Pagination", level: 3);
              emit(
                state.copyWith(
                  products: [...?state.products, ...?response.data?.products],
                  childStatus: ChildStatus.success,
                  currentPage: response.data?.pagination?.currentPage,
                  isLottieVisible: isLastPage,
                ),
              );

              isLastPage ? Future.delayed(const Duration(seconds: 2), () => add(HideLottieEvent()))
                  : null;
            } catch (e) {
              emit(
                state.copyWith(childStatus: ChildStatus.fail),
              );
            }
          }
        }
      },
    );

    on<ScrollChangeEvent>((event, emit) {
      pPrint("ScrollChangeEvent triggered"); // Debug print
      pPrint("Current Page: ${state.currentPage}"); // Debug pPrint
      pPrint("Total Page: ${state.totalPage}"); // Debug pPrint
      pPrint("Has Showed Lottie: ${state.hasShowedLottie}"); //
      pPrint("Has Showed isView: ${state.isLottieVisible}"); //
      // Oxirgi sahifada bo'lganda va Lottie avval ko'rsatilmagan bo'lsa
      if (state.currentPage == state.totalPage && !state.hasShowedLottie) {
        // Lottie'ni ko'rsatish
        pPrint("Lottie ko'rsatilmoqda"); // Debug print

        emit(state.copyWith(isLottieVisible: true, hasShowedLottie: true));

        // 2 soniya o'tgach Lottie'ni yashirish (1 soniyadan 2 soniyaga o'zgartirdim)
        Future.delayed(const Duration(seconds: 2), () {
          add(HideLottieEvent()); // Yangi event qo'shing
        });
      }
    });

// Yangi event qo'shing
    on<HideLottieEvent>((event, emit) {
      pPrint("Lottie yashirilmoqda"); // Debug print
      emit(state.copyWith(isLottieVisible: false));
    });
  }
}
