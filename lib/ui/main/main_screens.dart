import 'package:avatar_glow/avatar_glow.dart';
import 'package:badges/badges.dart' as badges;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:texnomart/app/my_app.dart';
import 'package:texnomart/ui/profil/profil_likes/like_screens.dart';

import '../../presentation/bloc/basket/basket_bloc.dart';
import '../../presentation/bloc/category_menu/category_menu_bloc.dart';
import '../../presentation/bloc/home/home_bloc.dart';
import '../../presentation/bloc/main/main_bloc.dart';
import '../../presentation/bloc/profil/profil_bloc.dart';
import '../category_menu/category_menu.dart';
import '../home/home_screens.dart';
import '../profil/profil.dart';
import '../saves/saves.dart';

class MainScreens extends StatefulWidget {
  const MainScreens({super.key});

  @override
  State<MainScreens> createState() => _MainScreensState();
}

class _MainScreensState extends State<MainScreens> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MainBloc, MainState>(
      listener: (context, state) {},
      builder: (context, state) {
        return CupertinoTabScaffold(
          tabBar: CupertinoTabBar(
            currentIndex: state.bottomNavigationIndex,
            onTap: (index) {
              context
                  .read<MainBloc>()
                  .add(ChangeBottomNavigation(chosenIndex: index));
            },
            backgroundColor: Colors.white,
            activeColor: Colors.black,
            inactiveColor: Colors.grey,
            items: [
              BottomNavigationBarItem(
                icon: AvatarGlow(
                  glowColor: Theme.of(context).primaryColor,
                  glowShape: BoxShape.circle,
                  animate: false,
                  repeat: false,
                  glowCount: 0,
                  curve: Curves.fastOutSlowIn,
                  child: const Icon(CupertinoIcons.home),
                ),
                label: "Bosh sahifa",
              ),
              BottomNavigationBarItem(
                icon: AvatarGlow(
                  glowColor: Theme.of(context).primaryColor,
                  glowShape: BoxShape.circle,
                  animate: false,
                  repeat: false,
                  glowCount: 0,
                  curve: Curves.fastOutSlowIn,
                  child: const Icon(CupertinoIcons.square_list),
                ),
                label: "Katalog",
              ),
              BottomNavigationBarItem(
                icon: AvatarGlow(
                  glowColor: Theme.of(context).primaryColor,
                  glowShape: BoxShape.circle,
                  animate: false,
                  glowCount: 0,
                  repeat: false,
                  curve: Curves.fastOutSlowIn,
                  child: badges.Badge(
                    showBadge: state.notificationCount != 0,
                    badgeStyle: badges.BadgeStyle(
                      badgeColor: Theme.of(context).primaryColor,
                    ),
                    badgeContent: Text(
                      "${state.notificationCount}",
                      style: const TextStyle(fontSize: 10),
                    ),
                    child: const Icon(CupertinoIcons.cart),
                  ),
                ),
                label: "Savatcha",
              ),
              BottomNavigationBarItem(
                icon: AvatarGlow(
                  glowColor: Theme.of(context).primaryColor,
                  glowShape: BoxShape.circle,
                  glowCount: 0,
                  animate: false,
                  repeat: false,
                  curve: Curves.fastOutSlowIn,
                  child: const Icon(CupertinoIcons.square_favorites_alt),
                ),
                label: "Sevimlilar",
              ),
              BottomNavigationBarItem(
                icon: AvatarGlow(
                  glowColor: Theme.of(context).primaryColor,
                  glowShape: BoxShape.circle,
                  animate: false,
                  glowCount: 0,
                  repeat: false,
                  curve: Curves.fastOutSlowIn,
                  child: const Icon(CupertinoIcons.person),
                ),
                label: "Profil",
              ),
            ],
          ),
          tabBuilder: (context, index) {
            switch (index) {
              case 0:
                return CupertinoTabView(
                  onGenerateRoute: generateRoute,

                  builder: (context) {
                    return BlocProvider(
                      create: (context) => HomeBloc()..add(LoadDataHomeEvent()),
                      child: const HomeScreens(),
                    );
                  },
                );
              case 1:
                return CupertinoTabView(
                  onGenerateRoute: generateRoute,

                  builder: (context) {
                    return BlocProvider(
                      create: (context) =>
                          CategoryMenuBloc()..add(GetCategoryMenuEvent()),
                      child: const CategoryMenu(),
                    );
                  },
                );
              case 2:
                return CupertinoTabView(
                  onGenerateRoute: generateRoute,

                  builder: (context) {
                    return BlocProvider(
                      create: (context) => BasketBloc()..add(LoadBasketData()),
                      child: Saves(),
                    );
                  },
                );
              case 3:
                return CupertinoTabView(
                  onGenerateRoute: generateRoute,

                  builder: (context) {
                    return BlocProvider(
                      create: (context) =>
                          ProfilBloc()..add(GetLoadProfilEvent()),
                      child: LikeScreens(),
                    );
                  },
                );
              case 4:
                return CupertinoTabView(
                  onGenerateRoute: generateRoute,

                  builder: (context) {
                    return Profil();
                  },
                );
              default:
                return CupertinoTabView(
                  onGenerateRoute: generateRoute,

                  builder: (context) {
                    return const Placeholder();
                  },
                );
            }
          },
        );
      },
    );
  }
}
