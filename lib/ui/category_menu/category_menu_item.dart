import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:texnomart/presentation/bloc/category/category_bloc.dart';
import 'package:texnomart/ui/category/category_Screens.dart';
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

        // Navigator.pushNamed(context, '/category', arguments: category);
      },
      child:ExpansionTile(title:  Container(
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

          ],
        ),
      ),
        children: [
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: data.childs?.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(data.childs?[index].name ?? ''),
                onTap: () {
                  var category = CategoryItemData(
                      slug: data.childs?[index].slug ?? "",
                      title: data.childs?[index].name ?? "");

                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => BlocProvider(
                            create: (c) => CategoryBloc()..add(GetSlugCategoryEvent(slug: category.slug)),
                            child: CategoryScreen(
                              data: category,
                            ),
                          )));
                },
              );
            },
          )
        ],
      )
    );
  }
}
