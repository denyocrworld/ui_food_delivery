import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

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
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "80 Results found",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              SearchDashboardHorizontalList(),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<SearchResult1View> createState() => SearchResult1Controller();
}
