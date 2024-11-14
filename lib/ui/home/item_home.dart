import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:texnomart/data/source/local/hive/item_hive.dart';
import 'package:texnomart/data/source/local/hive/item_hive_manager.dart';
import 'package:texnomart/data/source/remote/response/products_all_category/product_all_category.dart';
import 'package:texnomart/utils/to_value.dart';

import '../../constats/const.dart';
import '../../data/source/remote/response/special_product_response/special_product_response.dart';
import '../../presentation/bloc/profil/profil_bloc.dart';

class ItemHome extends StatefulWidget {
  final SpPrItems items;
  final void Function(String) click;

  const ItemHome({super.key, required this.items, required this.click});

  @override
  State<ItemHome> createState() => _ItemHomeState();
}

class _ItemHomeState extends State<ItemHome> {
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
        widget.click(widget.items.id.toString());
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),

        ),
        width: MediaQuery.of(context).size.width * 0.45,
        padding: const EdgeInsets.all(8),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image section
            SizedBox(
              height: 140, // Image height kamaytirildi
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Center(
                    child: CachedNetworkImage(
                      imageUrl: widget.items.image!,
                      fit: BoxFit.contain,
                    ),
                  ),
                  Positioned(
                    top: 10,
                    right: 1,
                    child: Container(
                      margin: const EdgeInsets.all(5),
                      height: 30,
                      width: 30,
                      child: !isLike ? isLikedItem() : isDisLikedItem(),
                    ),
                  ),
                ],
              ),
            ),

            // Product name
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 4), // Padding kamaytirildi
              child: Text(
                widget.items.name!,
                style: const TextStyle(color: Colors.black, fontSize: 11),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),

            // Rating stars
            // Row(
            //   children: List.generate(
            //       5,
            //           (index) => Icon(Icons.star, color: Colors.grey[400], size: 16) // Star size kamaytirildi
            //   ),
            // ),

            // 24 month installment
            const SizedBox(height: 4),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 6), // Padding kamaytirildi
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                "${(widget.items.axiomMonthlyPrice)}",
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: Colors.grey.shade600,
                  fontWeight: FontWeight.bold,
                  fontSize: 10, // Font size kamaytirildi
                ),
                textAlign: TextAlign.center,
              ),
            ),

            // 12 month installment
            const SizedBox(height: 4),
            // Container(
            //   width: double.infinity,
            //   padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 6), // Padding kamaytirildi
            //   decoration: BoxDecoration(
            //     color: Theme.of(context).primaryColor.withAlpha(100),
            //     borderRadius: BorderRadius.circular(12),
            //   ),
            //   child: Text(
            //     "${(widget.items.salePrice! / 12).toString().toValue()} so'm / 12 oy",
            //     style: Theme.of(context).textTheme.bodySmall?.copyWith(
            //       color: Colors.grey.shade600,
            //       fontWeight: FontWeight.bold,
            //       fontSize: 10, // Font size kamaytirildi
            //     ),
            //     textAlign: TextAlign.center,
            //   ),
            // ),

            // Price
            const SizedBox(height: 4), // Spacing kamaytirildi
            Text(
              "${widget.items.salePrice.toString().toValue()} so'm",
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 14, // Font size kamaytirildi
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Like/Dislike widgets o'zgarishsiz qoldi
  Widget isLikedItem() {
    return InkWell(
        onTap: () {
          var item = ItemHive(
              id: widget.items.id.toString(),
              name: widget.items.name ?? "",
              price: widget.items.finishPrice.toString() ?? "",
              img: widget.items.image ?? ""
          );
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
        )
    );
  }

  Widget isDisLikedItem() {
    return InkWell(
        onTap: () {
          ItemHiveManager.deleteItemById(widget.items.id.toString());
          context.read<ProfilBloc>().add(GetLoadProfilEvent());
          setState(() {
            isLike = !isLike;
          });
        },
        child: SvgPicture.asset(
          Const.active_like,
          width: 30,
          height: 30,
        )
    );
  }
}

Color _colorFromHex(String hexColor) {
  hexColor = hexColor.toUpperCase().replaceAll('#', '');
  if (hexColor.length == 6) {
    hexColor = 'FF$hexColor';
  }
  return Color(int.parse(hexColor, radix: 16));
}
