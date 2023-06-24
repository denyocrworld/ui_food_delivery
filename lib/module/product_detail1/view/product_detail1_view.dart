import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

import '../widget/card_detail2.dart';
import '../widget/cart_product_detail1.dart';

class ProductDetail1View extends StatefulWidget {
  ProductDetail1View({Key? key}) : super(key: key);

  Widget build(context, ProductDetail1Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: Text("ProductDetail1"),
        actions: [],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Stack(
                children: [
                  QCarouselBottomRightSlider(
                    height: 280,
                    images: [
                      "https://images.unsplash.com/photo-1555939594-58d7cb561ad1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
                      "https://images.unsplash.com/photo-1540189549336-e6e99c3679fe?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
                      "https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=781&q=80",
                      "https://images.unsplash.com/photo-1565958011703-44f9829ba187?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=765&q=80",
                      "https://images.unsplash.com/photo-1482049016688-2d3e1b311543?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=710&q=80",
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.arrow_back_ios,
                          size: 24.0,
                          color: Colors.white,
                        ),
                        Spacer(),
                        Icon(
                          Icons.ios_share_sharp,
                          size: 26.0,
                          color: Colors.white,
                        ),
                        const SizedBox(
                          width: 10.0,
                        ),
                        const Icon(
                          Icons.search,
                          size: 26.0,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                height: MediaQuery.of(context).size.height * 2.1,
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    H3(
                      title: "Mayfield Bakery & Cafe",
                    ),
                    const SizedBox(
                      height: 14.0,
                    ),
                    Row(
                      children: [
                        Text(
                          "\$\$",
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.grey,
                          ),
                        ),
                        const SizedBox(
                          width: 8.0,
                        ),
                        DotContainer(),
                        const SizedBox(
                          width: 8.0,
                        ),
                        Text(
                          "Chinese",
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.grey,
                          ),
                        ),
                        DotContainer(),
                        const SizedBox(
                          width: 8.0,
                        ),
                        Text(
                          "American Deshi food",
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.grey,
                          ),
                        ),
                        DotContainer(),
                        const SizedBox(
                          width: 8.0,
                        ),
                        Text(
                          "Deshi food",
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.grey,
                          ),
                        ),
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
                          return CardProductDetail1(
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
                                  controller.selectedItem = item;
                                  controller.setState(() {});
                                },
                                child: Center(
                                  child: Text(
                                    "${item}",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 24.0,
                                        fontWeight:
                                            (controller.selectedItem == index)
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
                          return CardDetail2(
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
                          return CardDetail2(
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
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<ProductDetail1View> createState() => ProductDetail1Controller();
}
