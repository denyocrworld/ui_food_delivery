import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/search_product1_controller.dart';

class SearchProduct1View extends StatefulWidget {
  const SearchProduct1View({Key? key}) : super(key: key);

  Widget build(context, SearchProduct1Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("SearchProduct1"),
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
  State<SearchProduct1View> createState() => SearchProduct1Controller();
}