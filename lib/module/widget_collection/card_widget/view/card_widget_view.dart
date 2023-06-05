import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/shared/widget/card/product_card.dart';
import '../controller/card_widget_controller.dart';

class CardWidgetView extends StatefulWidget {
  CardWidgetView({Key? key}) : super(key: key);

  Widget build(context, CardWidgetController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: Text("CardWidget"),
        actions: [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //#TEMPLATE product_card
                  Productcard(
                    imageUrl:
                        "https://images.unsplash.com/photo-1588168333986-5078d3ae3976?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=627&q=80",
                    name: "The Halal Guys",
                    category: "Chinese",
                  ),
                  //#END
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<CardWidgetView> createState() => CardWidgetController();
}
