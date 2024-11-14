import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:texnomart/common/utils/print.dart';
import 'package:texnomart/presentation/bloc/basket/basket_bloc.dart';
import 'package:texnomart/presentation/bloc/category/category_bloc.dart';
import 'package:texnomart/presentation/bloc/category_menu/category_menu_bloc.dart';
import 'package:texnomart/presentation/bloc/detail/detail_bloc.dart';
import 'package:texnomart/presentation/bloc/main/main_bloc.dart';
import 'package:texnomart/ui/category/category_data.dart';
import 'package:texnomart/ui/category/category_screens.dart';
import 'package:texnomart/ui/category_menu/category_menu.dart';
import 'package:texnomart/ui/detail/detail_screens.dart';
import 'package:texnomart/ui/home/home_screens.dart';
import 'package:texnomart/ui/main/main_screens.dart';
import 'package:texnomart/ui/profil/profil_likes/like_screens.dart';
import 'package:texnomart/ui/saves/saves.dart';

import '../presentation/bloc/home/home_bloc.dart';
import '../presentation/bloc/profil/profil_bloc.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(statusBarColor: Color(0xfffdc202)));
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => BasketBloc()..add(LoadBasketData()),
        ),
        BlocProvider(
          create: (context) => ProfilBloc(),
        ),
        BlocProvider(
          create: (context) => MainBloc()..add(LoadAllBasketData()),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Texnomart',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: const Color(0xfffdc202),
            primary: const Color(0xfffdc202),
          ),
          useMaterial3: true,
        ),
        initialRoute: AppRoutes.main.name,
        onGenerateRoute: generateRoute,
      ),
    );
  }
}

Route generateRoute(RouteSettings settings) {
  pPrint(settings.name,level: 4);
  switch (settings.name) {
    case "/main":
      return customPageRoute(
        BlocProvider(
          create: (context) => MainBloc()..add(LoadAllBasketData()),
          child: const MainScreens(),
        ),
        routeName: AppRoutes.main.name,
      );
    case "/home":
      return customPageRoute(
        BlocProvider(
          create: (context) => HomeBloc(),
          child: const HomeScreens(),
        ),
        routeName: AppRoutes.home.name,
      );
    case "/detail":
      final args = settings.arguments as String;
      return customPageRoute(
        BlocProvider(
          create: (context) => DetailBloc()..add(DetailIdEvent(id: args)),
          child: DetailScreens(args: args),
        ),
        routeName: AppRoutes.detail.name,
      );
    case "/category":
      final args = settings.arguments as CategoryItemData;
      pPrint(args.slug,level: 3);
      return customPageRoute(
        BlocProvider(
          create: (context) =>
          CategoryBloc()..add(GetSlugCategoryEvent(slug: args)),
          child: CategoryScreen(),
        ),
        routeName: AppRoutes.category.name,
      );
    case "/category_menu":
      return customPageRoute(
        BlocProvider(
          create: (context) => CategoryMenuBloc(),
          child: const CategoryMenu(),
        ),
        routeName: AppRoutes.categoryMenu.name,
      );
    case "/saves":
      return customPageRoute(
        BlocProvider(
          create: (context) => BasketBloc(),
          child: const Saves(),
        ),
        routeName: AppRoutes.saves.name,
      );
    case "/likes":
      return customPageRoute(
        BlocProvider(
          create: (context) => ProfilBloc()..add(GetLoadProfilEvent()),
          child: const LikeScreens(),
        ),
        routeName: AppRoutes.likes.name,
      );
    default:
      return customPageRoute(
        const Placeholder(),
        routeName: AppRoutes.unknown.name,
      );
  }
}

PageRoute customPageRoute(Widget child, {String? routeName}) {
  return PageRouteBuilder(
    settings: RouteSettings(name: routeName),
    pageBuilder: (context, animation, secondaryAnimation) => child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const curve = Curves.easeInOut;

      var enterTween = Tween<Offset>(begin: const Offset(1.0, 0.0), end: Offset.zero)
          .chain(CurveTween(curve: curve));

      var exitTween = Tween<Offset>(begin: Offset.zero, end: const Offset(-1.0, 0.0))
          .chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.status == AnimationStatus.reverse
            ? animation.drive(exitTween)
            : animation.drive(enterTween),
        child: child,
      );
    },

    transitionDuration: const Duration(milliseconds: 500),
  );
}

enum AppRoutes {
  main,
  home,
  detail,
  category,
  categoryMenu,
  saves,
  likes,
  unknown,
}

extension AppRoutesExtension on AppRoutes {
  String get name {
    switch (this) {
      case AppRoutes.main:
        return '/main';
      case AppRoutes.home:
        return '/home';
      case AppRoutes.detail:
        return '/detail';
      case AppRoutes.category:
        return '/category';
      case AppRoutes.categoryMenu:
        return '/category_menu';
      case AppRoutes.saves:
        return '/saves';
      case AppRoutes.likes:
        return '/likes';
      case AppRoutes.unknown:
      default:
        return '/unknown';
    }
  }
}

/*
*
* routes: {
        '/': (context) => BlocProvider(
              create: (context) => MainBloc(),
              child: const MainScreens(),
            ),
        '/home': (context) => BlocProvider(
              create: (context) => HomeBloc(),
              child: const HomeScreens(),
            ),
        '/detail': (context) => BlocProvider(
              create: (c) => DetailBloc(),
              child: const DetailScreens(),
            ),
        '/category':(context) => BlocProvider(create: (c) => CategoryBloc(),
        child: const CategoryScreen(),
        ),
        '/category_menu' :(context) => BlocProvider(create: (c)=> CategoryMenuBloc(),
        child: const CategoryMenu(),
        )
      },
*/