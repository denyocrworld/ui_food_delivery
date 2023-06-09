import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/product_detail1_controller.dart';

class ProductDetail1View extends StatefulWidget {
  const ProductDetail1View({Key? key}) : super(key: key);

  Widget build(context, ProductDetail1Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ProductDetail1"),
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
  State<ProductDetail1View> createState() => ProductDetail1Controller();
}