import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class DetailSliders extends StatefulWidget {
  final List<String> slidersResponse;
  int currentPage = 0;

  DetailSliders({super.key, required this.slidersResponse});

  @override
  State<DetailSliders> createState() => _SlidersState();
}

class _SlidersState extends State<DetailSliders> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25),
        child: Column(
          children: [
            CarouselSlider(
              items: widget.slidersResponse.map((i) {
                // print(i.imageMobileWeb);
                return ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: CachedNetworkImage(
                    imageUrl: i ?? "",
                    placeholder: (_, __) =>
                        const Center(child: CircularProgressIndicator()),
                    errorWidget: (_, __, ___) => const Icon(Icons.error),
                  ),
                );
              }).toList(),
              options: CarouselOptions(
                  initialPage: 0,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 5),
                  enlargeCenterPage: true,
                  onPageChanged: (value, _) {
                    setState(() {
                      // print(value);
                      widget.currentPage = value;
                    });
                  }),
            ),
            buildCorouselIndicator(
                widget.currentPage, widget.slidersResponse.length)
          ],
        ),
      ),
    );
  }
}

buildCorouselIndicator(int currentPage, int length) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      for (int i = 0; i < length; i++)
        Container(
          height: i == currentPage ? 14 : 10,
          width: i == currentPage ? 14 : 10,
          margin: const EdgeInsets.all(5),
          decoration: BoxDecoration(
              color: i == currentPage ? Colors.orange : Colors.grey,
              shape: BoxShape.circle),
        )
    ],
  );
}