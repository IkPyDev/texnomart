import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:texnomart/date/source/local/hive/item_hive_manager.dart';
import 'package:texnomart/presentation/bloc/markets/markets_bloc.dart';
import 'package:texnomart/ui/category/category_Screens.dart';
import 'package:texnomart/ui/markets/markets_screens.dart';
import 'package:texnomart/ui/profil/item_profil.dart';
import 'package:texnomart/ui/profil/profil_likes/like_screens.dart';
import 'package:texnomart/utils/status.dart';

import '../../date/source/local/hive/item_hive.dart';
import '../../presentation/bloc/profil/profil_bloc.dart';

class Profil extends StatefulWidget {
  const Profil({super.key});

  @override
  State<Profil> createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {


  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        body: getAllItems(),

      ),
    );
  }

  Widget getItem(IconData icons, String title,) {
    return Container(
      margin: const EdgeInsets.all(12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(icons,
            size: 28,
          ),
          // fit: BoxFit.none,
          // fit: BoxFit.none,
          SizedBox(width: 4),
          Expanded(
            child: Text(
              title,
              style: Theme
                  .of(context)
                  .textTheme
                  .titleSmall
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(width: 4),
          const Icon(
            Icons.arrow_forward_ios,
            size: 14,
            color: Colors.grey,
          ),
        ],
      ),
    );
  }

  Widget getAllItems() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
                color: Theme
                    .of(context)
                    .primaryColor,
                borderRadius: BorderRadius.circular(12)
            ),
            alignment: Alignment.topCenter,
            child: Text("Kirish", style: TextStyle(color: Colors.black, fontSize: 15),),
          ),

          Container(
            padding: EdgeInsets.all(5),
            margin: EdgeInsets.all(12),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15)
            ),

            child: Column(
              children: [

                getItem(Icons.percent_rounded, "Aksiya"),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  BlocProvider(
                                    create: (c) =>
                                    ProfilBloc()
                                      ..add(GetLoadProfilEvent()),
                                    child: LikeScreens(
                                    ),
                                  )));
                    },
                    child: getItem(Icons.favorite_outline, "Sevimlilar")),
                getItem(Icons.compare_arrows, "Taqoslash"),
                getItem(Icons.language, "Ilova tili")

              ],
            ),
          ),
          SizedBox(height: 10,),
          Container(
            margin: EdgeInsets.all(12),
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15)
            ),

            child: Column(
              children: [
                GestureDetector(
                    onTap: () {
                      Navigator.of(context,rootNavigator: true).push(

                          MaterialPageRoute(
                              builder: (context) =>
                                  BlocProvider(
                                    create: (context) => MarketsBloc()..add(LoadMarketEvent()),
                                    child: MarketScreen(
                                    ),
                                  )));
                    },
                    child: getItem(Icons.shopping_cart_outlined, "Bizning dokonlarimiz")),
                getItem(Icons.call_outlined, "Qollab quvatlash markazi"),
                getItem(Icons.info_outline, "Malumot"),
                getItem(Icons.phone_android, "Ilova haqida"),
                getItem(Icons.notifications_none, "Bildirishnoma sozlamalari "),

              ],
            ),
          )
          ,
          Padding(

            padding: const EdgeInsets.only(left: 25),
            child: Text("Versiya 1.0.0", style: TextStyle(color: Colors.grey),),
          )

        ],
      ),
    );
  }
}




