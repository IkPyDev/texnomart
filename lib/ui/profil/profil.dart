import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:texnomart/date/source/local/hive/item_hive_manager.dart';
import 'package:texnomart/ui/category/category_Screens.dart';
import 'package:texnomart/ui/profil/item_profil.dart';
import 'package:texnomart/utils/status.dart';

import '../../date/source/local/hive/item_hive.dart';
import '../../presentation/bloc/profil/profil_bloc.dart';

class Profil extends StatefulWidget {
  const Profil({super.key});

  @override
  State<Profil> createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  late var data;


  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    data = ItemHiveManager.getLikes();
    return SafeArea(
      child: Scaffold(

        body: BlocBuilder<ProfilBloc, ProfilState>(
          builder: (context, state) {
            return switch(state.status){

              Status.initial => Center(child: Text("no data"),),
              Status.loading => getLoading(),
              Status.success => getAll(state.items ?? []),
              Status.fail =>Center(child: Text("no data"),),
            };

          },
        ),
      ),
    );
  }
  Widget getAll(
      List<ItemHive> data
      ){
    return GridView.builder(
        scrollDirection: Axis.vertical,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // number of items in each row
            mainAxisSpacing: 8.0, // spacing between rows
            crossAxisSpacing: 12.0,
            childAspectRatio: 1 / 2 // spacing between columns
        ),
        padding: EdgeInsets.all(12),
        itemCount: data.length,
        itemBuilder: (c, i) {
          var item = data[i];
          return ItemProfil(() {

          }, data: item, click: (id) {
            Navigator.pushNamed(context, '/detail', arguments: id);
          });
        });
  }
}


