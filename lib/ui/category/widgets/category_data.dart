import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:texnomart/common/gen/assets.gen.dart';
import 'package:texnomart/presentation/bloc/category/category_bloc.dart';
import 'package:texnomart/ui/category/item_category.dart';

class CategorySuccessWidget extends StatefulWidget {
  final void Function(String id) click;

  const CategorySuccessWidget({required this.click, super.key});

  @override
  State<CategorySuccessWidget> createState() => _CategorySuccessWidgetState();
}

class _CategorySuccessWidgetState extends State<CategorySuccessWidget> {
  final ScrollController controller = ScrollController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      controller.addListener(_onScroll);
    });
  }

  void _onScroll() {
    if (controller.position.pixels == controller.position.maxScrollExtent) {
      context.read<CategoryBloc>().add(PaginationEvent());
    }
  }

  @override
  void dispose() {
    controller.removeListener(_onScroll);
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryBloc, CategoryState>(
      builder: (context, state) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: GridView.builder(
                controller: controller,
                scrollDirection: Axis.vertical,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 8.0,
                  crossAxisSpacing: 12.0,
                  childAspectRatio: 7 / 10,
                ),
                padding: const EdgeInsets.all(12),
                itemCount: state.products?.length,
                itemBuilder: (context, index) {
                  var item = state.products?[index];
                  return ItemCategory(
                    items: item!,
                    click: (id) {
                      widget.click(id);
                    },
                  );
                },
              ),
            ),
            // if (state.isLottieVisible)
            //   AnimatedOpacity(
            //     opacity: 1.0,
            //     duration: const Duration(milliseconds: 300),
            //     child: Assets.lottie.emptyProducts.lottie(
            //       fit: BoxFit.cover,
            //       height: 200,
            //     ),
            //   )
            // else
            //   Container(
            //     height: 0,
            //   ),
            if (state.childStatus == ChildStatus.loading)
              const LinearProgressIndicator()
            else if (state.childStatus == ChildStatus.fail)
              const Text("Error")
            else
              const SizedBox.shrink(),
          ],
        );
      },
    );
  }
}
