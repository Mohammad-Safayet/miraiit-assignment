import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class AdView extends StatelessWidget {
  AdView({super.key});

  final List<String> items = List.generate(10, (index) => 'Item $index');

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CarouselSlider(
        options: CarouselOptions(
          height: 300,
          aspectRatio: 1.5,
          viewportFraction: .65,
          enlargeCenterPage: true,
          enlargeStrategy: CenterPageEnlargeStrategy.zoom,
        ),
        items: items
            .map(
              (e) => Image.asset(
                "assets/image.png",
                height: 300,
                width: 300,
              ),
            )
            .toList(),
      ),
    );
  }
}
