import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class Dashboard1View extends StatefulWidget {
  Dashboard1View({Key? key}) : super(key: key);

  Widget build(context, Dashboard1Controller controller) {
    controller.view = this;

    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        centerTitle: true,
        leading: Container(),
        leadingWidth: 0.0,
        title: QLocationText(
          title: "Delivery to",
        ),
        actions: [
          // Text(
          //   "Filter",
          //   style: TextStyle(
          //     fontSize: 16.0,
          //     color: Colors.black,
          //   ),
          // ),
          // const SizedBox(
          //   width: 20.0,
          // ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Container(
              height: 68,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.all(
                        Radius.circular(14.0),
                      ),
                      child: Image.network(
                        "https://i.ibb.co/fG2NQrx/shopping-cart-icon.png",
                        width: 34.0,
                        height: 34.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(
                      width: 14.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "VIEW CART",
                          style: TextStyle(
                            fontSize: 12.0,
                            color: secondaryTextColor,
                          ),
                        ),
                        const SizedBox(
                          height: 2.0,
                        ),
                        Text(
                          "Uncle Boy's",
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Text(
                      "1 items",
                      style: TextStyle(
                        fontSize: 14.0,
                        color: secondaryTextColor,
                      ),
                    ),
                  ],
                ),
              ),
            )),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              QCarouselBottomRightSlider(
                height: 160,
                images: [
                  "https://images.unsplash.com/photo-1555939594-58d7cb561ad1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
                  "https://images.unsplash.com/photo-1540189549336-e6e99c3679fe?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
                  "https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=781&q=80",
                  "https://images.unsplash.com/photo-1565958011703-44f9829ba187?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=765&q=80",
                  "https://images.unsplash.com/photo-1482049016688-2d3e1b311543?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=710&q=80",
                ],
                borderRadius: BorderRadius.all(
                  Radius.circular(12.0),
                ),
              ),
              const SizedBox(
                height: 24.0,
              ),
              H3(
                title: "Feature Partners",
                subtitle: "See all",
              ),
              const SizedBox(
                height: 24.0,
              ),
              SizedBox(
                height: 255.0,
                child: ListView.builder(
                  itemCount: controller.image.length,
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.zero,
                  clipBehavior: Clip.none,
                  itemBuilder: (context, index) {
                    var item = controller.image[index];
                    return ProductCard(
                      image: item,
                      title: "Soup",
                      location: "Pekanbaru, Indonesia",
                      delivery: "free",
                      rating: 3.4,
                      time: "25min",
                      margin: const EdgeInsets.only(
                        right: 12.0,
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 24.0,
              ),
              PromotionCard(
                title: "Free Delivery",
                subtitle:
                    r"You've to order at least  for using free delivery for I month.",
              ),
              const SizedBox(
                height: 24.0,
              ),
              H5(
                title: "Best Picks Restaurants by team",
                subtitle: "See All",
              ),
              const SizedBox(
                height: 24.0,
              ),
              SizedBox(
                height: 255.0,
                child: ListView.builder(
                  itemCount: controller.image.length,
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.zero,
                  clipBehavior: Clip.none,
                  itemBuilder: (context, index) {
                    var item = controller.image[index];
                    return ProductCard(
                      image: item,
                      title: "Soup",
                      location: "Pekanbaru, Indonesia",
                      delivery: "free",
                      rating: 3.4,
                      time: "25min",
                      margin: const EdgeInsets.only(
                        right: 12.0,
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 24.0,
              ),
              H5(
                title: "Best Picks Restaurants by team",
                subtitle: "See All",
              ),
              const SizedBox(
                height: 24.0,
              ),
              ListView.builder(
                itemCount: 10,
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                clipBehavior: Clip.none,
                itemBuilder: (context, index) {
                  return ProductVerticalCard(
                    images: [
                      "https://images.unsplash.com/photo-1555072956-7758afb20e8f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=687&q=80",
                      "https://images.unsplash.com/photo-1534308983496-4fabb1a015ee?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1176&q=80",
                      "https://images.unsplash.com/photo-1613844237701-8f3664fc2eff?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fFNPVVB8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60",
                    ],
                    title: "Soup Kuning",
                    categories: ["Masakan Nusantara", "Padang"],
                    ratingCount: 300,
                    delivery: "Free",
                    rating: 4.8,
                    time: "30min",
                    margin: const EdgeInsets.only(
                      bottom: 20.0,
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<Dashboard1View> createState() => Dashboard1Controller();
}
