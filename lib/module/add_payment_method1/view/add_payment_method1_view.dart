import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/add_payment_method1_controller.dart';

class AddPaymentMethod1View extends StatefulWidget {
  const AddPaymentMethod1View({Key? key}) : super(key: key);

  Widget build(context, AddPaymentMethod1Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("AddPaymentMethod1"),
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
  State<AddPaymentMethod1View> createState() => AddPaymentMethod1Controller();
}