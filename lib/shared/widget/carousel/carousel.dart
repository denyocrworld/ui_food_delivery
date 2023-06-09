// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class QCarouselSlider extends StatefulWidget {
  final List images;
  final double height;
  const QCarouselSlider({
    Key? key,
    required this.images,
    this.height = 160,
  }) : super(key: key);

  @override
  State<QCarouselSlider> createState() => _QCarouselSliderState();
}

class _QCarouselSliderState extends State<QCarouselSlider> {
  int currentIndex = 0;
  final CarouselController carouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return Column(
        children: [
          CarouselSlider(
            carouselController: carouselController,
            options: CarouselOptions(
              height: widget.height,
              autoPlay: true,
              enlargeCenterPage: false,
              onPageChanged: (index, reason) {
                currentIndex = index;
                setState(() {});
              },
            ),
            items: widget.images.map((imageUrl) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(6.0),
                      ),
                      image: DecorationImage(
                        image: NetworkImage(
                          imageUrl,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              );
            }).toList(),
          ),
          const SizedBox(
            height: 8.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: widget.images.asMap().entries.map((entry) {
              return GestureDetector(
                onTap: () => carouselController.animateToPage(entry.key),
                child: Container(
                  width: 12.0,
                  height: 6.0,
                  margin: const EdgeInsets.symmetric(
                    vertical: 8.0,
                    horizontal: 4.0,
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(12.0),
                      ),
                      color: (Theme.of(context).brightness == Brightness.dark
                              ? Colors.grey
                              : Colors.grey)
                          .withOpacity(currentIndex == entry.key ? 0.9 : 0.4)),
                ),
              );
            }).toList(),
          ),
        ],
      );
    });
  }
}
