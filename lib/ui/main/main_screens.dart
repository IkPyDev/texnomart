import 'package:avatar_glow/avatar_glow.dart';
import 'package:badges/badges.dart' as badges;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:texnomart/app/my_app.dart';
import 'package:texnomart/common/utils/print.dart';
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

class MainScreens extends StatelessWidget {
  const MainScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainBloc, MainState>(
      builder: (context, state) {
        pPrint("main ui Current Index: ${state.bottomNavigationIndex}",level: 2); // Tekshirish uchun print

        return CupertinoTabScaffold(
          controller: CupertinoTabController(initialIndex: state.bottomNavigationIndex),
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
          tabBuilder: (BuildContext context,index ) {

            pPrint("Current Index: $index",level: 3); // Tekshirish uchun print
            switch (state.bottomNavigationIndex) {


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
                      child: const Saves(),
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
                      child: const LikeScreens(),
                    );
                  },
                );
              case 4:
                return CupertinoTabView(
                  onGenerateRoute: generateRoute,

                  builder: (context) {
                    return const Profil();
                  },
                );
              default:
                return CupertinoTabView(
                  onGenerateRoute: generateRoute,

                  builder: (context) {
                    return BlocProvider(
                      create: (context) => HomeBloc()..add(LoadDataHomeEvent()),
                      child: const HomeScreens(),
                    );
                  },
                );
            }
          },
        );
      },
    );
  }
}
