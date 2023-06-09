import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/category_list1_controller.dart';

class CategoryList1View extends StatefulWidget {
  const CategoryList1View({Key? key}) : super(key: key);

  Widget build(context, CategoryList1Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("CategoryList1"),
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
  State<CategoryList1View> createState() => CategoryList1Controller();
}