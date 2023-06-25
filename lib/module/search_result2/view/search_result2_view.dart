import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:hyper_ui/core.dart';

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
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              H6(
                title: "We have found 80 results of\nBurger's",
                subtitle: "Search again",
              ),
              const SizedBox(
                height: 12.0,
              ),
              StaggeredGrid.count(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                children: List.generate(
                  controller.products.length,
                  (index) {
                    var item = controller.products[index];
                    bool evenLine = index % 2 == 0;
                    return StaggeredGridTile.count(
                      crossAxisCellCount: 1,
                      mainAxisCellCount: evenLine ? 1.4 : 1.8,
                      child: ProductRatingCard(
                        image: item["photo"],
                        title: item["product_name"],
                        categories: ["Chinese", "Traditional"],
                        rating: 4.5,
                        time: "25min",
                        delivery: "Free",
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<SearchResult2View> createState() => SearchResult2Controller();
}
