import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class OrderDetail1View extends StatefulWidget {
  const OrderDetail1View({Key? key}) : super(key: key);

  Widget build(context, OrderDetail1Controller controller) {
    controller.view = this;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () => Get.back(),
                      icon: const Icon(
                        Icons.close,
                        size: 24.0,
                      ),
                    ),
                    Expanded(
                      child: H5(
                        title: "Your Orders",
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 41.0,
                ),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: OrderDetailData.orderDetailList.length,
                  physics: const ScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    var item = OrderDetailData.orderDetailList[index];
                    return Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 0.2,
                                  color: Color.fromRGBO(134, 134, 134, 1),
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(4.0),
                                ),
                              ),
                              child: Text(
                                item['quantity'].toString(),
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                  color: primaryColor,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 16.0,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    item['product_name'],
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 8.0,
                                  ),
                                  Text(
                                    item['description'],
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      color: secondaryTextColor,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              "USD${item['product_price'].toString()}",
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                                color: primaryColor,
                              ),
                            ),
                          ],
                        ),
                        Divider(
                          height: 40,
                          color: Color.fromRGBO(103, 103, 103, 0.1),
                        ),
                      ],
                    );
                  },
                ),
                const SizedBox(
                  height: 17.0,
                ),
                Row(
                  children: [
                    Text(
                      "Subtotal",
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    Text(
                      "\$29.4",
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: [
                    Text(
                      "Delivery",
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    Text(
                      "\$0",
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: [
                    Text(
                      "Total (incl. VAT)",
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    Text(
                      "\$29.4",
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 24.0,
                ),
                Row(
                  children: [
                    Text(
                      "Add more items",
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: primaryColor,
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.chevron_right),
                  ],
                ),
                Divider(
                  height: 20,
                  color: Color.fromRGBO(103, 103, 103, 0.1),
                ),
                Row(
                  children: [
                    Text(
                      "Promo code",
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.chevron_right),
                  ],
                ),
                Divider(
                  height: 20,
                  color: Color.fromRGBO(103, 103, 103, 0.1),
                ),
                const SizedBox(
                  height: 20.0,
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: QActionButton(
        label: "CONTINUE(\$11.98)",
        onPressed: () {},
      ),
    );
  }

  @override
  State<OrderDetail1View> createState() => OrderDetail1Controller();
}
