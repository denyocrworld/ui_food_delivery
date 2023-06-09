import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/search_result2_controller.dart';

class SearchResult2View extends StatefulWidget {
  const SearchResult2View({Key? key}) : super(key: key);

  Widget build(context, SearchResult2Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("SearchResult2"),
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
  State<SearchResult2View> createState() => SearchResult2Controller();
}