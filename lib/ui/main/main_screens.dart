import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:texnomart/presentation/bloc/basket/basket_bloc.dart';
import 'package:texnomart/presentation/bloc/category_menu/category_menu_bloc.dart';
import 'package:texnomart/ui/category_menu/category_menu.dart';
import 'package:texnomart/ui/home/home_screens.dart';
import 'package:texnomart/ui/orders/orders.dart';
import 'package:texnomart/ui/profil/profil.dart';
import 'package:texnomart/ui/saves/saves.dart';

import '../../presentation/bloc/home/home_bloc.dart';
import '../../presentation/bloc/main/main_bloc.dart';
import '../../presentation/bloc/profil/profil_bloc.dart';

class MainScreens extends StatefulWidget {
  const MainScreens({super.key});

  @override
  State<MainScreens> createState() => _MainScreensState();
}

class _MainScreensState extends State<MainScreens> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MainBloc, MainState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: IndexedStack(
            index: context.read<MainBloc>().state.bottomNavigationIndex,
            children: [
              BlocProvider(
                create: (context) => HomeBloc()..add(LoadDataHomeEvent()),
                child: const HomeScreens(),
              ),
              BlocProvider(
                create: (context) =>
                    CategoryMenuBloc()..add(GetCategoryMenuEvent()),
                child: const CategoryMenu(),
              ),
              BlocProvider(
                create: (context) => BasketBloc()..add(LoadBasketData()),
                child: Saves(),
              ),
              const Orders(),
              BlocProvider(
                create: (context) => ProfilBloc()..add(GetLoadProfilEvent()),
                child: Profil(),
              ),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: state.bottomNavigationIndex,
            onTap: (int index) {
              context
                  .read<MainBloc>()
                  .add(ChangeBottomNavigation(chosenIndex: index));
            },
            backgroundColor: Colors.white,
            selectedItemColor: Colors.yellow,
            unselectedItemColor: Colors.grey,
            selectedLabelStyle: const TextStyle(fontSize: 12),
            unselectedLabelStyle: const TextStyle(fontSize: 12),
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                label: "Bosh sahifa",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.manage_search_outlined),
                label: "Katalog",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart_outlined),
                label: "Savatcha",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.add_business),
                label: "Buyurtmalar",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_outline),
                label: "Profil",
              ),
            ],
          ),
        );
      },
    );
  }
}
