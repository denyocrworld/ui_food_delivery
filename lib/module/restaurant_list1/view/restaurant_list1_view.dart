import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class RestaurantList1View extends StatefulWidget {
  const RestaurantList1View({Key? key}) : super(key: key);

  Widget build(context, RestaurantList1Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Restaurant List"),
        centerTitle: true,
        actions: const [],
      ),
      body: ListView.separated(
        padding: EdgeInsets.all(20),
        itemCount: controller.restaurantList.length,
        shrinkWrap: true,
        physics: const ScrollPhysics(),
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(height: 20.0);
        },
        itemBuilder: (BuildContext context, int index) {
          final item = controller.restaurantList[index];
          return ProductVerticalCard(
            images: item.images,
            title: item.name,
            categories: item.categories,
            ratingCount: item.ratingCount,
            rating: item.rating,
            time: "30min",
            delivery: "Free",
          );
        },
      ),
    );
  }

  @override
  State<RestaurantList1View> createState() => RestaurantList1Controller();
}
