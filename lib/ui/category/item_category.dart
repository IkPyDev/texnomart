import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_pannable_rating_bar/flutter_pannable_rating_bar.dart';
import 'package:flutter_svg/svg.dart';
import 'package:texnomart/ui/profil/profil.dart';
import 'package:texnomart/utils/to_value.dart';

import '../../constats/const.dart';
import '../../data/source/local/hive/item_hive.dart';
import '../../data/source/local/hive/item_hive_manager.dart';
import '../../data/source/remote/response/products_all_category/products_all_category.dart';
import '../../presentation/bloc/profil/profil_bloc.dart';

class ItemCategory extends StatefulWidget {
  final Products items;
  final void Function(String) click;

  const ItemCategory({super.key, required this.items, required this.click});

  @override
  State<ItemCategory> createState() => _ItemCategoryState();
}

class _ItemCategoryState extends State<ItemCategory> {
  late bool isLike;
  late bool isFavorite;

  @override
  void initState() {
    isLike = ItemHiveManager.isItemLike(widget.items.id.toString());
    isFavorite = ItemHiveManager.isFavorite(widget.items.id.toString());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // print(items.id.toString());
        widget.click(widget.items.id.toString());
      },
      child:Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(25)),
        width: 250,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                // Positioned(
                //   left: 5,
                //   top: 10,
                //   child: Container(
                //     padding: const EdgeInsets.all(4),
                //     decoration: BoxDecoration(
                //       borderRadius: BorderRadius.circular(6),
                //       color: _colorFromHex(widget.items.stickers?[0].backgroundColor??""),
                //     ),
                //     child: Text(
                //       widget.items.stickers?[0].name??"",
                //       style: Theme.of(context).textTheme.bodySmall?.copyWith(
                //         fontWeight: FontWeight.bold,
                //         color: _colorFromHex(widget.items.stickers?[0].textColor ?? ""),
                //       ),
                //     ),
                //   ),
                // ),
                // Positioned(
                //   left: 10,
                //     top: 10,
                //     child: CachedNetworkImage(imageUrl: state.specialProductResponse!.first.saleMonths!.first.image!,)),
                SizedBox(
                  height: 180,
                  width: 180,
                  child: CachedNetworkImage(
                    imageUrl: widget.items.image!,
                  ),
                ),
                Positioned(
                    top: 10,
                    right: 1,
                    child: Card(
                        color: Colors.white,
                        elevation: 3,
                        child: Container(
                            height: 30,
                            width: 30,
                            child: !isLike ? isLikedItem() : isDisLikedItem()))),
                Positioned(
                    top: 50,
                    right: 1,
                    child: Card(
                        color: Colors.white,
                        elevation: 3,
                        child: SvgPicture.asset(
                          "assets/com/compare.svg",
                          width: 30,
                          height: 30,
                        ))),
                // Positioned(
                //     left:5,
                //     bottom:5,
                //     child: SvgPicture.network(items.saleMonths?[0].image ?? "https://i.imgur.com/xHcRRx6.png",height: 25,))
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Text(
                widget.items.name!,
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Row(
                      children: [
                        for (int i = 0; i < 5; ++i) Icon(Icons.star, color: Colors.grey[400], size: 18)
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                    padding: const EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      "${(widget.items.salePrice! * 1.36 / 24).toString().toValue()} so'm / 24 oy ",
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.grey.shade600, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                    padding: const EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor.withAlpha(100),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      "${(widget.items.salePrice! / 12).toString().toValue()} so'm / 12 oy",
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.grey.shade600, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 8),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    padding: EdgeInsets.all(3),
                    child: Text(
                      "${widget.items.salePrice.toString().toValue()} so'm",
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),

            // Text("${widget.items.salePrice} Som",
            //     style: const TextStyle(
            //         color: Colors.black,
            //         fontSize: 20,
            //         fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }

  Widget isLikedItem() {
    return InkWell(
        onTap: () {
          print("like bosildi ");
          var item = ItemHive(
              id: widget.items.id.toString(),
              name: widget.items.name ?? "",
              price: widget.items.fSalePrice.toString() ?? "",
              img: widget.items.image.toString() ?? "");
          ItemHiveManager.addItem(item);
          context.read<ProfilBloc>().add(GetLoadProfilEvent());
          setState(() {
            isLike = !isLike;
          });
        },
        child: SvgPicture.asset(
          Const.deactive_like,
          width: 30,
          height: 30,
        ));
  }


  Widget isDisLikedItem() {
    return InkWell(
        onTap: () {
          ItemHiveManager.deleteItemById(widget.items.id.toString());
          print("dislike bosildi ");
          context.read<ProfilBloc>().add(GetLoadProfilEvent());

          setState(() {
            isLike = !isLike;
          });
        },
        child: SvgPicture.asset(
          Const.active_like,
          width: 30,
          height: 30,
        ));
  }
}
