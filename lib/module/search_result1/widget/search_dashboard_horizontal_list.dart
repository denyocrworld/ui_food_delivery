// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class SearchDashboardHorizontalList extends StatelessWidget {
  const SearchDashboardHorizontalList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = SearchResult1Controller();
    return ListView.builder(
      itemCount: controller.products.length,
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      clipBehavior: Clip.none,
      itemBuilder: (context, index) {
        var item = controller.products[index];
        return ProductVerticalCard(
          images: [
            item["photo"],
            "https://images.unsplash.com/photo-1565958011703-44f9829ba187?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=765&q=80",
            "https://images.unsplash.com/photo-1482049016688-2d3e1b311543?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=710&q=80",
          ],
          title: item["product_name"],
          categories: ["Masakan Nusantara", "Padang", "Sumatera"],
          ratingCount: 300,
          delivery: "Free",
          rating: 4.8,
          time: "30min",
          margin: EdgeInsets.only(
            bottom: 20.0,
          ),
        );
      },
    );
  }
}
