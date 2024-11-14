import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:texnomart/presentation/bloc/category/category_bloc.dart';
import 'package:texnomart/ui/category/item_category.dart';

class CategorySuccessWidget extends StatelessWidget {
  final void Function(String id) click;

  const CategorySuccessWidget({required this.click, super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryBloc, CategoryState>(
      builder: (context, state) {
        return GridView.builder(
          scrollDirection: Axis.vertical,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // number of items in each row
            mainAxisSpacing: 8.0, // spacing between rows
            crossAxisSpacing: 12.0,
            childAspectRatio: 7 / 10, // spacing between columns
          ),
          padding: const EdgeInsets.all(12),
          itemCount: state.data?.data?.products?.length,
          itemBuilder: (context, index) {
            var item = state.data?.data?.products?[index];
            return ItemCategory(
              items: item!,
              click: (id) {
                click(id);
              },
            );
          },
        );
      },
    );
  }
}
