import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pannable_rating_bar/flutter_pannable_rating_bar.dart';
import 'package:flutter_svg/svg.dart';

import '../../constats/const.dart';
import '../../date/source/local/hive/item_hive.dart';
import '../../date/source/local/hive/item_hive_manager.dart';
import '../../date/source/remote/response/products_all_category/products_all_category.dart';

class ItemCategory extends StatefulWidget {
  final Products items;
  final void Function(String) click;

  const ItemCategory({super.key, required this.items, required this.click});

  @override
  State<ItemCategory> createState() => _ItemCategoryState();
}

class _ItemCategoryState extends State<ItemCategory> {
  late bool isLike;

  @override
  void initState() {
    isLike = ItemHiveManager.isItemLike(widget.items.id.toString());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // print(items.id.toString());
        widget.click(widget.items.id.toString());
      },
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(25)),
        height: 150,
        width: 200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Stack(
              children: [
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
                            padding: EdgeInsets.all(5),
                            width: 30,
                            child:
                                !isLike ? isLikedItem() : isDisLikedItem()))),
                Positioned(
                    top: 50,
                    right: 1,
                    child: Card(
                        margin: EdgeInsets.all(5),
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
            Text(
              widget.items.name!,
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: PannableRatingBar(
                rate: 4,
                items: List.generate(
                    5,
                    (index) => const RatingWidget(
                          selectedColor: Colors.yellow,
                          unSelectedColor: Colors.grey,
                          child: Icon(
                            Icons.star,
                            size: 20,
                          ),
                        )),
                onChanged: (_) {
                  // the rating value is updated on tap or drag.
                },
              ),
            ),
            Text("${widget.items.salePrice} Som",
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold)),
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
