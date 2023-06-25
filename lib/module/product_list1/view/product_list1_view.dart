// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:hyper_ui/core.dart';

class ProductList1View extends StatefulWidget {
  ProductList1View({Key? key}) : super(key: key);

  Widget build(context, ProductList1Controller controller) {
    controller.view = this;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              H1(
                title: "Search",
              ),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 6.0,
                  horizontal: 12.0,
                ),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: const BorderRadius.all(
                    Radius.circular(12.0),
                  ),
                  border: Border.all(
                    width: 1.0,
                    color: Colors.grey[400]!,
                  ),
                ),
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(Icons.search),
                    ),
                    Expanded(
                      child: TextFormField(
                        initialValue: null,
                        decoration: const InputDecoration.collapsed(
                          filled: true,
                          fillColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          hintText: "Search on foodly",
                        ),
                        onFieldSubmitted: (value) {},
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 34.0,
              ),
              H3(
                title: "Top Restaurants",
              ),
              const SizedBox(
                height: 16.0,
              ),
              GridView.builder(
                padding: EdgeInsets.zero,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 1.0,
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                ),
                itemCount: controller.products.length,
                shrinkWrap: true,
                physics: ScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  var item = controller.products[index];
                  return ProductCard2(
                    image: item['photo'],
                    title: "Coffe Latte",
                    category: "Drinks",
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
  State<ProductList1View> createState() => ProductList1Controller();
}
