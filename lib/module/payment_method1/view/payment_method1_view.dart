import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/payment_method1_controller.dart';

class PaymentMethod1View extends StatefulWidget {
  const PaymentMethod1View({Key? key}) : super(key: key);

  Widget build(context, PaymentMethod1Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("PaymentMethod1"),
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
  State<PaymentMethod1View> createState() => PaymentMethod1Controller();
}