import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/carousel_widget_controller.dart';

class CarouselWidgetView extends StatefulWidget {
  const CarouselWidgetView({Key? key}) : super(key: key);

  Widget build(context, CarouselWidgetController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("CarouselWidget"),
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
  State<CarouselWidgetView> createState() => CarouselWidgetController();
}