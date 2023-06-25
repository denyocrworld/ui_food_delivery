import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

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
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Divider(),
              "q_product_card".snippet,
              //#TEMPLATE q_product_card
              ProductCard(
                image:
                    "https://images.unsplash.com/photo-1484723091739-30a097e8f929?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTZ8fGZvb2R8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=400&q=60",
                title: "Miracle Bread",
                location: "Bogor",
                rating: 4.5,
                time: "25min",
                delivery: "Free",
              ),
              //#END
              "q_product_card2".snippet,
              //#TEMPLATE q_product_card2
              ProductCard2(
                image:
                    "https://images.unsplash.com/photo-1484723091739-30a097e8f929?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTZ8fGZvb2R8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=400&q=60",
                title: "Miracle Bread",
                category: "Bread",
              ),
              //#END
              "q_product_rating_card".snippet,
              //#TEMPLATE q_product_rating_card
              Container(
                height: 300,
                child: ProductRatingCard(
                  image:
                      "https://images.unsplash.com/photo-1484723091739-30a097e8f929?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTZ8fGZvb2R8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=400&q=60",
                  title: "Miracle Bread",
                  categories: ["Chinese", "Traditional"],
                  rating: 4.5,
                  time: "25min",
                  delivery: "Free",
                ),
              ),
              //#END
              "q_product_vertical_card".snippet,
              //#TEMPLATE q_product_vertical_card
              ProductVerticalCard(
                images: [
                  "https://images.unsplash.com/photo-1613844237701-8f3664fc2eff?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fFNPVVB8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60",
                ],
                title: "Soup Kuning",
                categories: ["Masakan Nusantara", "Padang", "Sumatera"],
                ratingCount: 300,
                delivery: "Free",
                rating: 4.8,
                time: "30min",
              ),
              //#END
              "q_product_vertical_card2".snippet,
              //#TEMPLATE q_product_vertical_card2
              ProductVerticalCard2(
                image:
                    "https://images.unsplash.com/photo-1613844237701-8f3664fc2eff?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fFNPVVB8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60",
                title: "Soft Drink",
                subtitle: "Chinese",
                margin: const EdgeInsets.only(
                  right: 10.0,
                ),
              ),
              //#END
              Divider(),
              "q_promotion_card".snippet,
              //#TEMPLATE q_promotion_card
              PromotionCard(
                title: "Free Delivery",
                subtitle:
                    r"You've to order at least $10 for using free delivery for I month.",
              ),
              //#END
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<CardWidgetView> createState() => CardWidgetController();
}
