import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_pannable_rating_bar/flutter_pannable_rating_bar.dart';
import 'package:flutter_svg/svg.dart';

import '../../constats/const.dart';
import '../../date/source/local/hive/item_hive.dart';
import '../../date/source/local/hive/item_hive_manager.dart';
import '../../presentation/bloc/profil/profil_bloc.dart';

class ItemProfil extends StatefulWidget {
  ItemHive data;
  final void Function(String) click;
  VoidCallback onSet;

   ItemProfil( this.onSet,{super.key, required this.data, required this.click,});

  @override
  State<ItemProfil> createState() => _ItemProfilState();

}

class _ItemProfilState extends State<ItemProfil> {
  @override
  late bool isLike;
  void initState() {

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    isLike = ItemHiveManager.isItemLike(widget.data.id.toString());
    return GestureDetector(
      onTap: () {
        // print(items.id.toString());
        widget.click(widget.data.id.toString());
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
                    imageUrl: widget.data.img,
                  ),
                ),
                Positioned(
                    top: 10,
                    right: 1,
                    child: !isLike ? isLikedItem() : isDisLikedItem()),
                Positioned(
                    top: 50,
                    right: 1,
                    child: SvgPicture.asset(
                      "assets/com/compare.svg",
                      width: 30,
                      height: 30,
                    )),
                // Positioned(
                //     left:5,
                //     bottom:5,
                //     child: SvgPicture.network(data.saleMonths?[0].image ?? "https://i.imgur.com/xHcRRx6.png",height: 25,))
              ],
            ),
            Text(
              widget.data.name,
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
            Text("${widget.data.price}",
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
          // print("like bosildi ");
          var item = ItemHive(
              id: widget.data.id.toString(),
              name: widget.data.name ?? "",
              price: widget.data.price.toString() ?? "",
              img: widget.data.img ?? ""
          );
          ItemHiveManager.addItem(item);
          setState(() {
            isLike = !isLike;
            context.read<ProfilBloc>().add(GetLoadProfilEvent());


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
          ItemHiveManager.deleteItemById(widget.data.id.toString());
// print("dislike bosildi ");
          setState(() {
            widget.onSet();
            context.read<ProfilBloc>().add(GetLoadProfilEvent());

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
