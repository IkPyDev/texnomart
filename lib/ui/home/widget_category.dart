import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:texnomart/ui/category/category_data.dart';

import '../../date/source/remote/response/category_response/category_response.dart';

class CategoryWidget extends StatelessWidget {
  final List<CategoryItem> category;
  final void Function(CategoryItemData) click;
  const CategoryWidget({required this.category, super.key, required this.click});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.separated(

          scrollDirection: Axis.horizontal, itemBuilder: (c, i) {
        var item = category[i];
        return GestureDetector(
          onTap: (){
            var data = CategoryItemData(slug: item.slug.toString(), title: item.title.toString());
            print("itemda bosildi ${data.slug + data.title}");
            click(data);
          },
          child: Container(
            height: 150,
            width: 100,
            child: Column(

              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.white,

                  ),
                  height: 100,
                  width: 100,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(16.0),
                  child: SvgPicture.network(
                    item.image.toString(), fit: BoxFit.cover,
                    alignment: Alignment.center,),
                ),
                const SizedBox(height: 15,),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    item.title!.length > 10
                        ? '${item.title!.substring(0, 10)}...'
                        : item.title.toString(),
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      }, separatorBuilder: (_, __) {
        return const SizedBox(width: 10,);
      }, itemCount: category.length),
    );
  }
}
