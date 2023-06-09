import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/confirm_phone_number1_controller.dart';

class ConfirmPhoneNumber1View extends StatefulWidget {
  const ConfirmPhoneNumber1View({Key? key}) : super(key: key);

  Widget build(context, ConfirmPhoneNumber1Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ConfirmPhoneNumber1"),
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
  State<ConfirmPhoneNumber1View> createState() => ConfirmPhoneNumber1Controller();
}