import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:texnomart/ui/category/category_data.dart';

import '../../data/source/remote/response/category_response/category_response.dart';

class CategoryWidget extends StatelessWidget {
  final List<CategoryItem> category;
  final void Function(CategoryItemData) click;

  const CategoryWidget({required this.category, super.key, required this.click});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:MediaQuery.of(context).size.height * 0.3,
      child: GridView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (c, i) {
            var item = category[i];
            return GestureDetector(
              onTap: () {
                var data = CategoryItemData(slug: item.slug.toString(), title: item.title.toString());
                // print("itemda bosildi ${data.slug + data.title} ${item.image}");
                click(data);
              },
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.35,
                height: MediaQuery.of(context).size.height * 0.3,
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: CachedNetworkImage(

                        imageUrl: item.image.toString(),
                        fit: BoxFit.cover,
                        alignment: Alignment.center,
                      ),
                    ),
                    Positioned(
                      top: 5,
                      left: 5,
                      child: Text(
                        item.title.toString(),
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          },

          itemCount: category.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: (MediaQuery.of(context).size.width * 0.35) / (MediaQuery.of(context).size.height * 0.3),
          ),),
    );
  }
}
