import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../data/source/remote/response/sliders_response/sliders_response.dart';

class Sliders extends StatefulWidget {
  final List<SlidersDatum> slidersResponse;
  int currentPage = 0;

  Sliders({super.key, required this.slidersResponse});

  @override
  State<Sliders> createState() => _SlidersState();
}

class _SlidersState extends State<Sliders> {
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
                    imageUrl: i.imageMobileWeb ?? "",
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
