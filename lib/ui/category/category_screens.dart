import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../presentation/bloc/category/category_bloc.dart';
import 'package:texnomart/ui/category/category_data.dart';
import '../../utils/status.dart';

import '../../date/source/remote/response/products_all_category/products_all_category.dart';
import 'item_category.dart';

class CategoryScreen extends StatefulWidget {
  final CategoryItemData data;
   const CategoryScreen({required this.data,super.key });

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  void initState() {

    super.initState();
    // context.read<CategoryBloc>().add(GetSlugCategoryEvent(slug: args.slug));
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffffba08),
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: const Icon(Icons.arrow_back, size: 25, color: Colors.black),
        ),
        title: Text(
          widget.data.title,
          style: const TextStyle(color: Colors.black, fontSize: 20),
        ),
      ),
      body: BlocConsumer<CategoryBloc, CategoryState>(
        listener: (context, state) {
          // Handle any additional state changes here if needed
        },
        builder: (context, state) {
          switch (state.status) {
            case Status.initial:
            case Status.loading:
              return getLoading();
            case Status.fail:
              return getFail(state.errorMessage.toString());
            case Status.success:
              return getSuccess(state.data!, click: (String id) {
                Navigator.pushNamed(context, '/detail', arguments: id);
              });
            default:
              return const SizedBox.shrink();
          }
        },
      ),
    );
  }
}

Widget getSuccess(GetProductAllCategoryData data, {required void Function(String id) click}) {
  return GridView.builder(
    scrollDirection: Axis.vertical,
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2, // number of items in each row
      mainAxisSpacing: 8.0, // spacing between rows
      crossAxisSpacing: 12.0,
      childAspectRatio: 1 / 2, // spacing between columns
    ),
    padding: const EdgeInsets.all(12),
    itemCount: data.products?.length,
    itemBuilder: (context, index) {
      var item = data.products?[index];
      return ItemCategory(
        items: item!,
        click: (id) {
          click(id);
        },
      );
    },
  );
}

Widget getFail(String errorMessage) {
  return Center(child: Text(errorMessage));
}

Widget getLoading() {
  return const Center(child: CircularProgressIndicator());
}
