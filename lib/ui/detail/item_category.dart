import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pannable_rating_bar/flutter_pannable_rating_bar.dart';
import 'package:flutter_svg/svg.dart';

import '../../date/source/remote/response/special_product_response/special_product_response.dart';

class ItemHome extends StatelessWidget {
  final SpPrItems items;
 final void Function(String) click;
  const ItemHome({super.key, required this.items, required this.click});

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: (){
        // print(items.id.toString());
        click(items.id.toString());
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25)
        ),
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
                    imageUrl: items.image!,),
                ),
                Positioned(
                    top:10,
                    right: 1,
                    child: Card(
                        color: Colors.white,
                        elevation: 3,
                        child: Container(
                            height: 35,
                            padding: EdgeInsets.all(5),
                            width: 35,
                            child: SvgPicture.asset("assets/com/favorite.svg",width: 15,height: 15,)))),
                Positioned(
                    top:50,
                    right: 1,
                    child: Card(margin: EdgeInsets.all(5),
                        color: Colors.white,
                        elevation: 3,
                        child: SvgPicture.asset("assets/com/compare.svg",width: 15,height: 15,))),
                // Positioned(
                //     left:5,
                //     bottom:5,
                //     child: SvgPicture.network(items.saleMonths?[0].image ?? "https://i.imgur.com/xHcRRx6.png",height: 25,))

              ],
            ),
            Text(items.name!,style: TextStyle(color: Colors.black,fontSize: 16),),
            Align(
              alignment: Alignment.topLeft,
              child: PannableRatingBar(
                rate: 4,
                items: List.generate(5, (index) =>
                const RatingWidget(
                  selectedColor: Colors.yellow,
                  unSelectedColor: Colors.grey,
                  child: Icon(
                    Icons.star,
                    size: 20,
                  ),
                )),
                onChanged: (_) { // the rating value is updated on tap or drag.

                },
              ),
            ),
            Text("${items.salePrice} Som",style: const TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold)),

          ],
        ),
      ),
    );
  }
}
