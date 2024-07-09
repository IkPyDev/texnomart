import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:texnomart/ui/category/category_Screens.dart';
import 'package:texnomart/utils/status.dart';

import '../../../date/source/local/hive/item_hive.dart';
import '../../../presentation/bloc/profil/profil_bloc.dart';
import '../item_profil.dart';

class LikeScreens extends StatelessWidget {
  const LikeScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
      ),

      body: BlocBuilder<ProfilBloc, ProfilState>(
        builder: (context, state) {
          return switch(state.status){
            
            // TODO: Handle this case.
            Status.initial => const Center(child: Text("Initial"),),
            // TODO: Handle this case.
            Status.loading =>getLoading(),
            // TODO: Handle this case.
            Status.success => getAll(state.items ?? [], context),
            // TODO: Handle this case.
            Status.fail => const Center(child: Text(" Fail  data"),),
          };
        },
      ),
    );
  }

  Widget getAll(List<ItemHive> data,
      BuildContext context) {
    if(data.isEmpty){
      return Container(
        alignment: Alignment.center,
        child: Text("Sevimlilar yoq"),
      );
    }

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
