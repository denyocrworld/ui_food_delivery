import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/product_detail2_controller.dart';

class ProductDetail2View extends StatefulWidget {
  const ProductDetail2View({Key? key}) : super(key: key);

  Widget build(context, ProductDetail2Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ProductDetail2"),
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
  State<ProductDetail2View> createState() => ProductDetail2Controller();
}