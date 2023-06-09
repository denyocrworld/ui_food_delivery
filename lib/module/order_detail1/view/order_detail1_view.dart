import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/order_detail1_controller.dart';

class OrderDetail1View extends StatefulWidget {
  const OrderDetail1View({Key? key}) : super(key: key);

  Widget build(context, OrderDetail1Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("OrderDetail1"),
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
  State<OrderDetail1View> createState() => OrderDetail1Controller();
}