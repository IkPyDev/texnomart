import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:texnomart/app/my_app.dart';
import 'package:texnomart/data/source/remote/response/products_all_category/product_all_category.dart';
import 'package:texnomart/presentation/bloc/detail/detail_bloc.dart';
import 'package:texnomart/presentation/bloc/home/home_bloc.dart';
import 'package:texnomart/presentation/bloc/main/main_bloc.dart';
import 'package:texnomart/ui/category/category_data.dart';
import 'package:texnomart/ui/detail/detail_screens.dart';
import 'package:texnomart/ui/home/carusel.dart';
import 'package:texnomart/ui/home/widget_category.dart';

import '../../data/source/remote/response/special_product_response/special_product_response.dart';
import '../../presentation/bloc/category/category_bloc.dart';
import '../../utils/widget.dart';
import '../category/category_screens.dart';
import 'item_home.dart';

// 1. CustomAppBar widget
class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: false,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'assets/tech_logo.png',
            width: 170.0,
            height: 180.0,
          )
        ],
      ),
      backgroundColor: const Color(0xffffba08),
      centerTitle: true,
    );
  }
}

// 2. SearchAppBar widget
class SearchAppBar extends StatelessWidget {
  const SearchAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: const Color(0xffffba08),
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        background: Container(
          height: 100,
          alignment: Alignment.center,
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
          width: double.infinity,
          child: TextFormField(
            decoration: const InputDecoration(
              hintText: 'Qidirish',
              hintStyle: TextStyle(color: Colors.grey, fontSize: 18.0),
              border: InputBorder.none,
              contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
            ),
            onChanged: (value) {
              // Handle search logic here
            },
          ),
        ),
      ),
    );
  }
}

// 3. SectionTitle widget
class SectionTitle extends StatelessWidget {
  final String title;

  const SectionTitle({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: (){
          context.read<MainBloc>().add(ChangeBottomNavigation(chosenIndex: 2));
        },
        child: Row(
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 20, color: Colors.black),
            ),
            const Spacer(),
            const Text(
              "hammasi",
              style: TextStyle(fontSize: 14, color: Colors.black),
            ),
            const Icon(
              Icons.arrow_forward_ios,
              color: Colors.grey,
            )
          ],
        ),
      ),
    );
  }
}

// 4. ProductList widget
class ProductList extends StatelessWidget {
  final List<SpPrItems> items;
  final Function(String) onItemClick;

  const ProductList({
    super.key,
    required this.items,
    required this.onItemClick,
  });

  @override
  Widget build(BuildContext context) {
    if (items.isEmpty) {
      return const Center(
        child: Text("Empty"),
      );
    }

    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.35,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, i) => ItemHome(
                items: items[i],
                click: onItemClick,
              ),
              separatorBuilder: (_, __) => const SizedBox(width: 10),
              itemCount: items.length,
            ),
          ],
        ),
      ),
    );
  }
}

// 5. HomeContent widget
class HomeContent extends StatelessWidget {
  final HomeState state;
  final Function(CategoryItemData) onCategoryClick;
  final Function(String) onProductClick;

  const HomeContent({
    super.key,
    required this.state,
    required this.onCategoryClick,
    required this.onProductClick,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      scrollDirection: Axis.vertical,
      slivers: [
        const CustomAppBar(),
        const SearchAppBar(),
        SliverToBoxAdapter(
          child: Column(
            children: [
              Sliders(slidersResponse: state.slidersResponse!),
              const SectionTitle(title: "Ommabob Kategoriyalar"),
              CategoryWidget(
                category: state.categoryResponse!,
                click: onCategoryClick,
              ),
              const SectionTitle(title: "Yangi Maxsulotlar"),
              ProductList(
                items: state.specialProductResponse ?? [],
                onItemClick: onProductClick,
              ),
            ],
          ),
        )
      ],
    );
  }
}

// 6. Modified HomeScreens widget with new components
class HomeScreens extends StatefulWidget {
  const HomeScreens({super.key});

  @override
  State<HomeScreens> createState() => _HomeScreensState();
}

class _HomeScreensState extends State<HomeScreens> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BlocConsumer<HomeBloc, HomeState>(
          listener: (context, listener) {},
          builder: (context, state) {
            switch (state.status) {
              case HomeStatus.loading:
                return getLoading();
              case HomeStatus.fail:
                return Center(
                  child: Text(state.errorMessage.toString()),
                );
              case HomeStatus.successful:
                return HomeContent(
                  state: state,
                  onCategoryClick: (data) {
                    Navigator.pushNamed(
                      context,
                      AppRoutes.category.name,
                      arguments: data,
                    );
                  },
                  onProductClick: (id) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BlocProvider(
                          create: (c) => DetailBloc()..add(DetailIdEvent(id: id)),
                          child: DetailScreens(args: id),
                        ),
                      ),
                    );
                  },
                );
              case null:
              case HomeStatus.initial:
                return const Center(child: Text("Nulls"));
            }
          },
        ),
      ),
    );
  }
}
