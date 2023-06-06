import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/dashboard2_controller.dart';

class Dashboard2View extends StatefulWidget {
  const Dashboard2View({Key? key}) : super(key: key);

  Widget build(context, Dashboard2Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard2"),
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
  State<Dashboard2View> createState() => Dashboard2Controller();
}