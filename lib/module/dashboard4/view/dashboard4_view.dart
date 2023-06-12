import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/shared/widget/uncategorized/q_location_text_header/q_location_text_header.dart';

import '../../../shared/widget/card/product_rating_card/product_rating_card.dart';

class Dashboard4View extends StatefulWidget {
  Dashboard4View({Key? key}) : super(key: key);

  Widget build(context, Dashboard4Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        leadingWidth: 0.0,
        title: QLocationHeaderText(),
        actions: [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              QCarouselSlider(
                height: 160,
                images: [
                  "https://images.unsplash.com/photo-1555939594-58d7cb561ad1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
                  "https://images.unsplash.com/photo-1540189549336-e6e99c3679fe?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
                  "https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=781&q=80",
                  "https://images.unsplash.com/photo-1565958011703-44f9829ba187?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=765&q=80",
                  "https://images.unsplash.com/photo-1482049016688-2d3e1b311543?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=710&q=80",
                ],
              ),
              SizedBox(
                height: 12.0,
              ),
              H3(
                title: "Natioval Favorites",
                subtitle: "See all",
              ),
              SizedBox(
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
  State<Dashboard4View> createState() => Dashboard4Controller();
}
