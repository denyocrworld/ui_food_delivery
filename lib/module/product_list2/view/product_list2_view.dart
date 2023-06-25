import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class ProductList2View extends StatefulWidget {
  const ProductList2View({Key? key}) : super(key: key);

  Widget build(context, ProductList2Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Browse Foods",
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 16.0,
          ),
        ),
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_ios,
            size: 24.0,
          ),
        ),
        actions: const [],
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              ListView.builder(
                itemCount: controller.products.length,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  var item = controller.products[index];
                  return ProductVerticalCard(
                    images: [
                      item["photo"],
                      "https://images.unsplash.com/photo-1613844237701-8f3664fc2eff?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fFNPVVB8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60",
                    ],
                    title: item["product_name"],
                    categories: ["Masakan Nusantara", "Padang", "Sumatera"],
                    ratingCount: 300,
                    delivery: "Free",
                    rating: 4.8,
                    time: "30min",
                    margin: const EdgeInsets.only(
                      bottom: 20.0,
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<ProductList2View> createState() => ProductList2Controller();
}
