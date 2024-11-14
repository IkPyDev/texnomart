import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:texnomart/presentation/bloc/basket/basket_bloc.dart';
import 'package:texnomart/presentation/bloc/category/category_bloc.dart';
import 'package:texnomart/presentation/bloc/category_menu/category_menu_bloc.dart';
import 'package:texnomart/presentation/bloc/detail/detail_bloc.dart';
import 'package:texnomart/presentation/bloc/main/main_bloc.dart';
import 'package:texnomart/ui/category/category_Screens.dart';
import 'package:texnomart/ui/category/category_data.dart';
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
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Color(0xfffdc202)));
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
        initialRoute: "/",
        onGenerateRoute: ganerate,
      ),
    );
  }
}

Route ganerate(RouteSettings set) {
  switch (set.name) {
    case '/':
      return MaterialPageRoute(
        builder: (con) => BlocProvider(
          create: (context) => MainBloc()..add(LoadAllBasketData()),
          child: const MainScreens(),
        ),
      );
    case '/home':
      return MaterialPageRoute(
        builder: (c) => BlocProvider(
          create: (context) => HomeBloc(),
          child: const HomeScreens(),
        ),
      );
    case '/detail':
      final args =set.arguments as String;
      return MaterialPageRoute(
        builder: (c) => BlocProvider(
          create: (c) =>
              DetailBloc()..add(DetailIdEvent(id: set.arguments as String)),
          child:  DetailScreens(args: args),
        ),
      );
    case '/category':
      final args = set.arguments as CategoryItemData;
      return MaterialPageRoute(
        builder: (context) => BlocProvider(
          create: (context) =>
              CategoryBloc()..add(GetSlugCategoryEvent(slug: args.slug)),
          child: CategoryScreen(data: args),
        ),
      );
    case '/category_menu':
      return MaterialPageRoute(
          builder: (c) => BlocProvider(
                create: (c) => CategoryMenuBloc(),
                child: const CategoryMenu(),
              ));
    case '/saves':
      return MaterialPageRoute(
          builder: (c) => BlocProvider(
                create: (c) => BasketBloc(),
                child: const Saves(),
              ));
    case '/likes':
      return MaterialPageRoute(
          builder: (c) => BlocProvider(
                create: (context) => ProfilBloc()..add(GetLoadProfilEvent()),
                child: const LikeScreens(),
              ));
    default:
      return MaterialPageRoute(builder: (c) => const Placeholder());
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
