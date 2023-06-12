import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/shared/widget/uncategorized/q_location_text_header/q_location_text_header.dart';
import '../../../shared/widget/card/product_rating_card/product_rating_card.dart';
import '../controller/dashboard2_controller.dart';

class Dashboard2View extends StatefulWidget {
  Dashboard2View({Key? key}) : super(key: key);

  Widget build(context, Dashboard2Controller controller) {
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
  State<Dashboard2View> createState() => Dashboard2Controller();
}
