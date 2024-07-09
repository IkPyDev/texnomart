import 'package:avatar_glow/avatar_glow.dart';
import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../presentation/bloc/basket/basket_bloc.dart';
import '../../presentation/bloc/category_menu/category_menu_bloc.dart';
import '../category_menu/category_menu.dart';
import '../home/home_screens.dart';
import '../orders/orders.dart';
import '../profil/profil.dart';
import '../saves/saves.dart';

import '../../presentation/bloc/home/home_bloc.dart';
import '../../presentation/bloc/main/main_bloc.dart';

class MainScreens extends StatefulWidget {
  const MainScreens({super.key});

  @override
  State<MainScreens> createState() => _MainScreensState();
}

class _MainScreensState extends State<MainScreens> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MainBloc, MainState>(
      listener: (context, state) {
        // context.read<MainBloc>().add(LoadAllBasketData());
        // setState(() {});
      },
      builder: (context, state) {
        context.read<MainBloc>().add(LoadAllBasketData());

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
              Profil(),
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
            items: [
              BottomNavigationBarItem(
                icon: AvatarGlow(
                  glowColor: Theme.of(context).primaryColor,
                  glowShape: BoxShape.circle,
                  animate: true,
                  repeat: false,
                  curve: Curves.fastOutSlowIn,
                  child: const Icon(Icons.home_outlined),
                ),
                label: "Bosh sahifa",
              ),
              BottomNavigationBarItem(
                icon: AvatarGlow(
                  glowColor: Theme.of(context).primaryColor,
                  glowShape: BoxShape.circle,
                  animate: true,
                  repeat: false,
                  curve: Curves.fastOutSlowIn,
                  child: const Icon(Icons.manage_search_outlined),
                ),
                label: "Katalog",
              ),
              BottomNavigationBarItem(
                icon:  AvatarGlow(
                      glowColor: Theme.of(context).primaryColor,
                      glowShape: BoxShape.circle,
                      animate: true,
                      repeat: false,
                      curve: Curves.fastOutSlowIn,
                      child: badges.Badge(
                        showBadge: state.notificationCount != 0,
                        badgeStyle: badges.BadgeStyle(
                          badgeColor: Theme.of(context).primaryColor,
                        ),
                        badgeContent: Text("${state.notificationCount}",
                            style: const TextStyle(fontSize: 10)),
                        child: const Icon(Icons.shopping_cart_rounded),
                      ),
                    ),
                label: "Savatcha",


              ),
              BottomNavigationBarItem(
                icon: AvatarGlow(
                  glowColor: Theme.of(context).primaryColor,
                  glowShape: BoxShape.circle,
                  animate: true,
                  repeat: false,
                  curve: Curves.fastOutSlowIn,
                  child: AvatarGlow(
                    glowColor: Theme.of(context).primaryColor,
                    glowShape: BoxShape.circle,
                    animate: true,
                    repeat: false,
                    curve: Curves.fastOutSlowIn,
                    child: const Icon(Icons.add_business),
                  ),
                ),
                label: "Buyurtmalar",
              ),
              BottomNavigationBarItem(
                icon: AvatarGlow(
                  glowColor: Theme.of(context).primaryColor,
                  glowShape: BoxShape.circle,
                  animate: true,
                  repeat: false,
                  curve: Curves.fastOutSlowIn,
                  child: const Icon(Icons.person_outline),
                ),
                label: "Profil",
              ),
            ],
          ),
        );
      },
    );
  }
}
