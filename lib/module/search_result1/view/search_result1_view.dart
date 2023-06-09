import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/search_result1_controller.dart';

class SearchResult1View extends StatefulWidget {
  const SearchResult1View({Key? key}) : super(key: key);

  Widget build(context, SearchResult1Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("SearchResult1"),
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
  State<SearchResult1View> createState() => SearchResult1Controller();
}