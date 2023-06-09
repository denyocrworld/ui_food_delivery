import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/enter_address1_controller.dart';

class EnterAddress1View extends StatefulWidget {
  const EnterAddress1View({Key? key}) : super(key: key);

  Widget build(context, EnterAddress1Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("EnterAddress1"),
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
  State<EnterAddress1View> createState() => EnterAddress1Controller();
}