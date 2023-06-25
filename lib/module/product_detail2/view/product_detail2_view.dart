// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class ProductDetail2View extends StatefulWidget {
  const ProductDetail2View({Key? key}) : super(key: key);

  Widget build(context, ProductDetail2Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        actions: const [
          const Icon(
            Icons.search,
            size: 24.0,
          ),
          const SizedBox(
            width: 20.0,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              H3(
                title: "Mayfield Bakery & Cafe",
              ),
              const SizedBox(
                height: 14.0,
              ),
              QCategoryList(
                items: [
                  "\$\$",
                  "Chinese",
                  "American Deshi food",
                  "Deshi food",
                ],
              ),
              const SizedBox(
                height: 14.0,
              ),
              Row(
                children: [
                  Text(
                    "4.3",
                    style: TextStyle(
                      fontSize: 12.0,
                    ),
                  ),
                  const SizedBox(
                    width: 9.0,
                  ),
                  Icon(Icons.star, size: 24.0, color: primaryColor),
                  const SizedBox(
                    width: 9.0,
                  ),
                  Text(
                    "200+ Ratings",
                    style: TextStyle(
                      fontSize: 12.0,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 14.0,
              ),
              Row(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(Icons.money, size: 24.0, color: primaryColor),
                      const SizedBox(
                        width: 6.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Free",
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Delivery",
                            style: TextStyle(
                              fontSize: 12.0,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(Icons.timer, size: 24.0, color: primaryColor),
                      const SizedBox(
                        width: 6.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "25",
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Minutes",
                            style: TextStyle(
                              fontSize: 12.0,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Spacer(),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: 38,
                        width: 113,
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            foregroundColor: Colors.green,
                            side: const BorderSide(
                              color: Colors.green,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          onPressed: () {},
                          child: const Text("Take Away"),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 34.0,
              ),
              H4(
                title: "Featured Items",
              ),
              const SizedBox(
                height: 18.0,
              ),
              SizedBox(
                height: 200.0,
                child: ListView.builder(
                  itemCount: controller.products.length,
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.zero,
                  clipBehavior: Clip.none,
                  itemBuilder: (context, index) {
                    var item = controller.products[index];
                    return ProductVerticalCard2(
                      image: item['photo'],
                      title: item['product_name'],
                      subtitle: "Chinese",
                      margin: const EdgeInsets.only(
                        right: 10.0,
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 34.0,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                controller: ScrollController(),
                child: Row(
                  children: List.generate(
                    controller.dataMenu.length,
                    (index) {
                      var item = controller.dataMenu[index];
                      bool selected = index == 1;

                      return Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12.0,
                          vertical: 8.0,
                        ),
                        margin: const EdgeInsets.only(right: 10.0),
                        child: InkWell(
                          onTap: () {
                            controller.selectedIte = item;
                            controller.setState(() {});
                          },
                          child: Center(
                            child: Text(
                              "${item}",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 24.0,
                                  fontWeight: (controller.selectedIte == index)
                                      ? FontWeight.w600
                                      : FontWeight.w400),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              const SizedBox(
                height: 28.0,
              ),
              H5(
                title: "Most Populars",
              ),
              const SizedBox(
                height: 24.0,
              ),
              Container(
                height: 380,
                child: ListView.builder(
                  itemCount: controller.productPopular.length,
                  shrinkWrap: true,
                  padding: EdgeInsets.zero,
                  clipBehavior: Clip.none,
                  itemBuilder: (context, index) {
                    var item = controller.productPopular[index];
                    return ProductRowCard(
                      image: item['photo'],
                      title: item['product_name'],
                      subTitle:
                          "Shortbread, chocolate turtle cookies, and red velvet.",
                      category: item['category'],
                      price: item['price'],
                      margin: const EdgeInsets.only(
                        bottom: 10.0,
                      ),
                    );
                  },
                ),
              ),
              H5(
                title: "Sea Foods",
              ),
              const SizedBox(
                height: 24.0,
              ),
              Container(
                height: 380,
                child: ListView.builder(
                  itemCount: controller.productSeaFood.length,
                  shrinkWrap: true,
                  padding: EdgeInsets.zero,
                  clipBehavior: Clip.none,
                  itemBuilder: (context, index) {
                    var item = controller.productSeaFood[index];
                    return ProductRowCard(
                      image: item['photo'],
                      title: item['product_name'],
                      subTitle:
                          "Shortbread, chocolate turtle cookies, and red velvet.",
                      category: item['category'],
                      price: 7.5,
                      margin: const EdgeInsets.only(
                        bottom: 10.0,
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  State<ProductDetail2View> createState() => ProductDetail2Controller();
}
