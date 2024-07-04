import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:texnomart/ui/category/category_data.dart';

import '../../date/source/remote/response/category_menu/catalog_menu.dart';

class CategoryMenuItem extends StatelessWidget {
  const CategoryMenuItem({super.key, required this.data});

  final GetCatalogMenu data;

  @override
  Widget build(BuildContext context) {
    // print(data.slug);
    return GestureDetector(
      onTap: () {
        var category =
            CategoryItemData(slug: data.slug ?? "", title: data.name ?? "");

        Navigator.pushNamed(context, '/category', arguments: category);
      },
      child: Container(
        margin: const EdgeInsets.all(12),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            data.icon!.endsWith('.svg')
                ? SvgPicture.network(
                    data.icon ?? '',
                    height: 28,
                    width: 28,
                    // fit: BoxFit.none,
                  )
                : CachedNetworkImage(
                    imageUrl: data.icon ?? '',
                    height: 28,
                    width: 28,
                    // fit: BoxFit.none,
                  ),
            SizedBox(width: 4),
            Expanded(
              child: Text(
                data.name ?? '',
                style: Theme.of(context)
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
      ),
    );
  }
}
