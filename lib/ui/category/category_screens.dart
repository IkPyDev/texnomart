import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:texnomart/app/my_app.dart';
import 'package:texnomart/data/source/remote/response/products_all_category/product_all_category.dart';
import 'package:texnomart/presentation/bloc/category/category_bloc.dart';
import 'package:texnomart/presentation/bloc/detail/detail_bloc.dart';
import 'package:texnomart/ui/category/category_data.dart';
import 'package:texnomart/ui/category/widgets/category_data.dart';
import 'package:texnomart/ui/detail/detail_screens.dart';
import 'package:texnomart/utils/status.dart';
import 'package:texnomart/utils/widget.dart';

import 'item_category.dart';

class CategoryScreen extends StatelessWidget {

  const CategoryScreen({ super.key});

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
          context.select((CategoryBloc bloc) => bloc.state.categoryItemData?.title ?? ""),
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
              {
                return CategorySuccessWidget( click: (String id) {
                  Navigator.pushNamed(context,AppRoutes.detail.name, arguments: id);
                });
              }

            default:
              return const SizedBox.shrink();
          }
        },
      ),
    );
  }
}


Widget getFail(String errorMessage) {
  return Center(child: Text(errorMessage));
}
