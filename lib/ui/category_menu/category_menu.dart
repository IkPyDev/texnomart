import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../date/source/remote/response/category_menu/catalog_menu.dart';
import "package:texnomart/ui/category_menu/category_menu_item.dart";

import '../../presentation/bloc/category_menu/category_menu_bloc.dart';
import '../../utils/status.dart';
import '../../utils/widget.dart';

class CategoryMenu extends StatefulWidget {
  const CategoryMenu({super.key});

  @override
  State<CategoryMenu> createState() => _CategoryMenuState();
}

class _CategoryMenuState extends State<CategoryMenu> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BlocConsumer<CategoryMenuBloc, CategoryMenuState>(
          listener: (context, state) {
      
          },
          builder: (context, state) {
            return switch (state.status) {
              Status.loading => getLoading(),
              Status.success => getData(state.data!),
              Status.fail => Center(
                  child: Text(state.errorMessage.toString()),
                ),
              Status.initial => const Center(),
            };
          },
        ),
      ),
    );
  }
}

Widget getData(List<GetCatalogMenu> data) {
 return Column(
   children: [
     Padding(padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),child: Container(
       height: 60,
       alignment: Alignment.center,
       margin: const EdgeInsets.symmetric(
           horizontal: 16, vertical: 4),
       // padding: const EdgeInsets.all(8),
       decoration: const BoxDecoration(
         color: Colors.white,
         borderRadius: BorderRadius.all(Radius.circular(12)),
       ),
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
     ),),
     Expanded(
       child: ListView.separated(
           itemBuilder: (c,i){
         return CategoryMenuItem(data: data[i]);
       }, separatorBuilder: (_,__){
         return const Divider(height: 1,color: Colors.grey,);
       }, itemCount: data.length),
     ),
   ],
 );
}
