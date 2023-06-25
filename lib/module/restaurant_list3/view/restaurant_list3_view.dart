import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

import '../controller/restaurant_list3_controller.dart';

class RestaurantList3View extends StatefulWidget {
  const RestaurantList3View({Key? key}) : super(key: key);

  Widget build(context, RestaurantList3Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("RestaurantList"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              GridView.builder(
                padding: EdgeInsets.zero,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 1 / 2,
                  crossAxisCount: 2,
                  mainAxisSpacing: 15,
                  crossAxisSpacing: 15,
                ),
                itemCount: controller.products.length,
                shrinkWrap: true,
                physics: ScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  var item = controller.products[index];
                  return Container(
                    child: ProductRatingCard(
                      image: item["photo"],
                      title: item["product_name"],
                      categories: ["Chinese", "Traditional"],
                      rating: 4.5,
                      time: "25min",
                      delivery: "Free",
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
  State<RestaurantList3View> createState() => RestaurantList3Controller();
}
