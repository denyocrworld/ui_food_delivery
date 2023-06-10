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
        title: const Text("Restaurant List (Part 1)"),
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
              RestaurantNameContainer(item: item),
              SizedBox(height: 8),
              RestaurantCategoriesContainer(item: item),
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

class RestaurantNameContainer extends StatelessWidget {
  const RestaurantNameContainer({
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

class RestaurantCategoriesContainer extends StatelessWidget {
  const RestaurantCategoriesContainer({
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
            fontSize: 16,
            color: Colors.grey,
          ),
        ),
        ...item.categories.map((e) {
          return Row(
            children: [
              DotCenter(),
              Text(
                e,
                style: TextStyle(
                  fontSize: 16,
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

class DotCenter extends StatelessWidget {
  const DotCenter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 3,
      width: 3,
      margin: EdgeInsets.symmetric(horizontal: 7),
      decoration: BoxDecoration(color: Colors.grey, shape: BoxShape.circle),
    );
  }
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
            fontSize: 16,
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
        SizedBox(width: 14),
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
        DotCenter(),
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
