import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class ProductDetail1View extends StatefulWidget {
  ProductDetail1View({Key? key}) : super(key: key);

  Widget build(context, ProductDetail1Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: Text("ProductDetail1"),
        actions: [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: [],
          ),
        ),
      ),
    );
  }

  @override
  State<ProductDetail1View> createState() => ProductDetail1Controller();
}
