import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/restaurant_list2_controller.dart';

class RestaurantList2View extends StatefulWidget {
  const RestaurantList2View({Key? key}) : super(key: key);

  Widget build(context, RestaurantList2Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("RestaurantList2"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: const [],
          ),
        ),
      ),
    );
  }

  @override
  State<RestaurantList2View> createState() => RestaurantList2Controller();
}