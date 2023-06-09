import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/shared/widget/carousel/carousel_with_bottom_right_slider.dart';
import '../controller/restaurant_list1_controller.dart';

class RestaurantList1View extends StatefulWidget {
  const RestaurantList1View({Key? key}) : super(key: key);

  Widget build(context, RestaurantList1Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("RestaurantList1"),
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

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              QCarouselBottomRightSlider(
                height: 160,
                images: item.images,
                borderRadius: BorderRadius.all(
                  Radius.circular(12.0),
                ),
              ),
              SizedBox(height: 10),
              NameContainer(item: item),
              SizedBox(height: 6),
              CategoriesContainer(item: item),
              SizedBox(height: 6),
              InfoContainer(item: item),
            ],
          );
        },
      ),
    );
  }

  @override
  State<RestaurantList1View> createState() => RestaurantList1Controller();
}

class InfoContainer extends StatelessWidget {
  const InfoContainer({
    super.key,
    required this.item,
  });

  final Restaurant item;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "${item.rating}",
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(width: 6),
        Icon(
          Icons.star,
          size: 15,
          color: Colors.green,
        ),
        SizedBox(width: 4),
        Text(
          "+${item.ratingCount} Ratings",
          style: TextStyle(
            fontSize: 15,
          ),
        ),
        SizedBox(width: 6),
        Icon(
          Icons.watch_later_rounded,
          size: 15,
          color: Colors.black.withOpacity(0.6),
        ),
        SizedBox(width: 4),
        Text(
          "25 Men",
          style: TextStyle(
            fontSize: 15,
          ),
        ),
        SizedBox(width: 6),
        Icon(
          Icons.monetization_on,
          size: 15,
          color: Colors.black.withOpacity(0.6),
        ),
        SizedBox(width: 4),
        Text(
          "Free",
          style: TextStyle(
            fontSize: 15,
          ),
        ),
      ],
    );
  }
}

class CategoriesContainer extends StatelessWidget {
  const CategoriesContainer({
    super.key,
    required this.item,
  });

  final Restaurant item;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "\$\$",
          style: TextStyle(
            fontSize: 15,
            color: Colors.grey,
          ),
        ),
        ...item.categories.map((e) {
          return Row(
            children: [
              Container(
                height: 3,
                width: 3,
                margin: EdgeInsets.symmetric(horizontal: 6),
                decoration: BoxDecoration(color: Colors.grey, shape: BoxShape.circle),
              ),
              Text(
                e,
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                ),
              ),
            ],
          );
        }),
      ],
    );
  }
}

class NameContainer extends StatelessWidget {
  const NameContainer({
    super.key,
    required this.item,
  });

  final Restaurant item;

  @override
  Widget build(BuildContext context) {
    return Text(
      item.name,
      style: TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
