import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class OrderList1View extends StatefulWidget {
  const OrderList1View({Key? key}) : super(key: key);

  Widget build(context, OrderList1Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        title: Text(
          "Your Orders",
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              H6(
                title: "UPCOMING ORDERS",
                subtitle: "CLEAR ALL",
                titleColor: Color.fromRGBO(134, 134, 134, 1),
                subtitleColor: Colors.black,
              ),
              const SizedBox(
                height: 20.0,
              ),
              ListView.builder(
                itemCount: OrderList.upcomingOrderList.length,
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  var item = OrderList.upcomingOrderList[index];
                  return Container(
                    margin: const EdgeInsets.only(
                      bottom: 20.0,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.network(
                            item['image'],
                            width: 110.0,
                            height: 110.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(
                          width: 18.0,
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    item['title'],
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 6.0,
                              ),
                              Text(
                                item['description'],
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.grey,
                                ),
                              ),
                              const SizedBox(
                                height: 12.0,
                              ),
                              Row(
                                children: [
                                  Text("\$\$"),
                                  DotContainer(),
                                  Text(item['country']),
                                  Spacer(),
                                  Text(
                                    "USD7.4",
                                    style: TextStyle(
                                      color: primaryColor,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 34.0,
              ),
              Opacity(
                opacity: 0.6,
                child: ListView.builder(
                  itemCount: OrderList.pastOrderList.length,
                  shrinkWrap: true,
                  physics: const ScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    var item = OrderList.pastOrderList[index];
                    return Column(
                      children: [
                        if (index == 0)
                          H6(
                            title: "PAST ORDERS",
                            subtitle: "CLEAR ALL",
                            titleColor: Color.fromRGBO(134, 134, 134, 1),
                            subtitleColor: Colors.black,
                          ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.network(
                                item['image'],
                                width: 110.0,
                                height: 110.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(
                              width: 18.0,
                            ),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        item['title'],
                                        style: TextStyle(
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 6.0,
                                  ),
                                  Text(
                                    item['description'],
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 12.0,
                                  ),
                                  Row(
                                    children: [
                                      Text("\$\$"),
                                      DotContainer(),
                                      Text(item['country']),
                                      Spacer(),
                                      Text(
                                        "USD7.4",
                                        style: TextStyle(
                                          color: primaryColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
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
  State<OrderList1View> createState() => OrderList1Controller();
}
