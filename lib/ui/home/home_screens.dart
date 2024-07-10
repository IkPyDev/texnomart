import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:texnomart/presentation/bloc/detail/detail_bloc.dart';
import 'package:texnomart/presentation/bloc/home/home_bloc.dart';
import 'package:texnomart/ui/detail/detail_screens.dart';
import 'package:texnomart/ui/home/carusel.dart';
import 'package:texnomart/ui/home/widget_category.dart';

import '../../date/source/remote/response/special_product_response/special_product_response.dart';
import '../../presentation/bloc/category/category_bloc.dart';
import '../../utils/widget.dart';
import '../category/category_screens.dart';
import 'item_home.dart';

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
            /*    return switch(state.status) {
              HomeStatus.loading => Center(),
              HomeStatus.successful => Center(),
              HomeStatus.fail => Center(),
              HomeStatus.initial => Center(),
              null => Center(),
            };*/

            switch (state.status) {
              case HomeStatus.loading:
                return getLoading();
              case HomeStatus.fail:
                return Center(
                  child: Text(state.errorMessage.toString()),
                );
              case HomeStatus.successful:
                return CustomScrollView(
                  scrollDirection: Axis.vertical,
                  slivers: [
                    SliverAppBar(
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
                      backgroundColor: Color(0xffffba08),
                      centerTitle: true,
                    ),
                    SliverAppBar(
                      backgroundColor: Color(0xffffba08),
                      pinned: true,
                      flexibleSpace: FlexibleSpaceBar(
                        background: Container(
                          height: 100,
                          alignment: Alignment.center,
                          margin: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 4),
                          // padding: const EdgeInsets.all(8),
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                          ),
                          width: double.infinity,
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Qidirish',
                              hintStyle:
                                  TextStyle(color: Colors.grey, fontSize: 18.0),
                              border: InputBorder.none,
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 16.0),
                            ),
                            onChanged: (value) {
                              // Handle search logic here
                            },
                          ),
                        ),
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: Column(
                        children: [
                          Sliders(slidersResponse: state.slidersResponse!),
                          const Row(
                            children: [
                              Text(
                                "Ommabob Kategoriyalar",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.black),
                              ),
                              Spacer(),
                              Text(
                                "hammasi",
                                style: TextStyle(
                                    fontSize: 14, color: Colors.black),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.grey,
                              )
                            ],
                          ),
                          CategoryWidget(
                              category: state.categoryResponse!,
                              click: (data) {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => BlocProvider(
                                          create: (c) => CategoryBloc()..add(GetSlugCategoryEvent(slug: data.slug)),
                                          child: CategoryScreen(
                                            data: data,
                                          ),
                                        )));
                                print(
                                    "Categori bosildi ${data.slug + data.title}");
                              }),
                          const Row(
                            children: [
                              Text(
                                "Yangi Maxsulotlar",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.black),
                              ),
                              Spacer(),
                              Text(
                                "hammasi",
                                style: TextStyle(
                                    fontSize: 14, color: Colors.black),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.grey,
                              )
                            ],
                          ),
                          SizedBox(
                              height: 350,
                              child: itemsHome(state.specialProductResponse ?? [],
                                  click: (s) {
                                // print("id bosildi $s");
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => BlocProvider(
                                              create: (c) => DetailBloc()..add(DetailIdEvent(id: s)),
                                              child: DetailScreens(
                                                args: s,
                                              ),
                                            )));
                                // context.read<DetailBloc>().add(DetailIdEvent(id: s));
                              }))
                        ],
                      ),
                    )
                  ],
                );

              case null:
                return const Center(
                  child: Text("Nulls"),
                );
              // TODO: Handle this case.
              case HomeStatus.initial:
                return const Center(
                  child: Text("Nulls"),
                );
            }
          },
        ),
      ),
    );
  }
}

Widget itemsHome(List<SpPrItems> items,
    {required void Function(String id) click}) {
  // print(items);
  // void Function(String) clickID;
  if (items.isEmpty) {
    return const Center(
      child: Text("Empty"),
    );
  }
  return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemBuilder: (_, i) {
        print(items[i]);
        return ItemHome(

          items: items[i],
          click: (s) {
            // print(s);
            click(s);
          },
        );
      },
      separatorBuilder: (_, __) {
        return const SizedBox(
          width: 10,
        );
      },
      itemCount: items.length);
}
