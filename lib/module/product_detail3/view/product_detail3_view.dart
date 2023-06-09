import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/product_detail3_controller.dart';

class ProductDetail3View extends StatefulWidget {
  const ProductDetail3View({Key? key}) : super(key: key);

  Widget build(context, ProductDetail3Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ProductDetail3"),
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
  State<ProductDetail3View> createState() => ProductDetail3Controller();
}