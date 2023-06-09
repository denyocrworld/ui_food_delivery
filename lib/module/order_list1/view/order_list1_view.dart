import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/order_list1_controller.dart';

class OrderList1View extends StatefulWidget {
  const OrderList1View({Key? key}) : super(key: key);

  Widget build(context, OrderList1Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("OrderList1"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: const [],
          ),
        ),
      ),
    );
  }

  @override
  State<OrderList1View> createState() => OrderList1Controller();
}