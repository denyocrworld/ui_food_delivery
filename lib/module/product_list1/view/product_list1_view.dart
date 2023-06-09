import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/product_list1_controller.dart';

class ProductList1View extends StatefulWidget {
  const ProductList1View({Key? key}) : super(key: key);

  Widget build(context, ProductList1Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ProductList1"),
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
  State<ProductList1View> createState() => ProductList1Controller();
}