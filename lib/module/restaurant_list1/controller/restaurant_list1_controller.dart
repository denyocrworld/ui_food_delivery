import 'package:flutter/material.dart';
import 'package:hyper_ui/module/restaurant_list1/data/restaurant_dummy.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/restaurant_list1_view.dart';

class Restaurant {
  final int id;
  final String name;
  final List<String> images;
  final double rating;
  final int ratingCount;
  final List<String> categories;
  final String description;

  Restaurant({
    required this.id,
    required this.name,
    required this.images,
    required this.rating,
    required this.ratingCount,
    required this.categories,
    required this.description,
  });

  factory Restaurant.fromJson(Map<String, dynamic> json) {
    return Restaurant(
      id: int.tryParse(json["id"].toString()) ?? 0,
      name: json["name"],
      images: List<String>.from(json["images"]?.map((e) => e) ?? []),
      rating: double.tryParse(json["rating"].toString()) ?? 0.0,
      ratingCount: int.tryParse(json["rating_count"].toString()) ?? 0,
      categories: List<String>.from(json["categories"]?.map((e) => e) ?? []),
      description: json["description"],
    );
  }
}

class RestaurantList1Controller extends State<RestaurantList1View> implements MvcController {
  static late RestaurantList1Controller instance;
  late RestaurantList1View view;
  final restaurantList = <Restaurant>[];

  @override
  void initState() {
    instance = this;
    super.initState();

    loadData();
  }

  void loadData() {
    restaurantList.addAll(List<Restaurant>.from(restaurantDummyData.map((e) => Restaurant.fromJson(e))));
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
