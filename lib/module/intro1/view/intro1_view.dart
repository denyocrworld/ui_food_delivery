import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class Intro1View extends StatefulWidget {
  const Intro1View({Key? key}) : super(key: key);

  Widget build(context, Intro1Controller controller) {
    controller.view = this;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            /*
            TODO: Implement this @ controller
            int currentIndex = 0;
            final CarouselController carouselController = CarouselController();
            */
            Expanded(
              child: LayoutBuilder(builder: (context, constraint) {
                List<Map<String, dynamic>> images = [
                  {
                    "photo": "https://i.ibb.co/0m3bDvQ/bibimbap.png",
                    "title": "All your favorites",
                    "subtitle":
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                  },
                  {
                    "photo": "https://i.ibb.co/R4C00Lr/delivery.png",
                    "title": "Free delivery ofers",
                    "subtitle":
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                  },
                  {
                    "photo": "https://i.ibb.co/NVZwC4K/diet.png",
                    "title": "Choose your food",
                    "subtitle":
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                  },
                ];

                return Column(
                  children: [
                    Expanded(
                      child: CarouselSlider(
                        carouselController: controller.carouselController,
                        options: CarouselOptions(
                          height: constraint.maxHeight,
                          autoPlay: true,
                          enlargeCenterPage: false,
                          viewportFraction: 1.0,
                          onPageChanged: (index, reason) {
                            controller.currentIndex = index;
                            controller.setState(() {});
                          },
                        ),
                        items: images.map((item) {
                          return Builder(
                            builder: (BuildContext context) {
                              return Column(
                                children: [
                                  Expanded(
                                    child: Stack(
                                      children: [
                                        Center(
                                          child: Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.8,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Color(0xfff1efdd),
                                            ),
                                          ),
                                        ),
                                        Center(
                                          child: Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.48,
                                            child: Image.network(
                                              item["photo"],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.all(40.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "All your favorites",
                                          style: TextStyle(
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 8.0,
                                        ),
                                        Text(
                                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                                          style: TextStyle(
                                            fontSize: 12.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              );
                            },
                          );
                        }).toList(),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: images.asMap().entries.map((entry) {
                        bool isSelected = controller.currentIndex == entry.key;
                        return GestureDetector(
                          onTap: () => controller.carouselController
                              .animateToPage(entry.key),
                          child: Container(
                            width: 10,
                            height: 4.0,
                            margin: const EdgeInsets.only(
                              right: 6.0,
                              top: 12.0,
                            ),
                            decoration: BoxDecoration(
                              color: isSelected
                                  ? primaryColor
                                  : const Color(0xffe7e7e7),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(12.0),
                              ),
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                  ],
                );
              }),
            ),
          ],
        ),
      ),
      bottomNavigationBar: QActionButton(
        label: "Get Started",
        onPressed: () {},
      ),
    );
  }

  @override
  State<Intro1View> createState() => Intro1Controller();
}
