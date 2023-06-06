import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/dashboard3_controller.dart';

class Dashboard3View extends StatefulWidget {
  const Dashboard3View({Key? key}) : super(key: key);

  Widget build(context, Dashboard3Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard3"),
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
  State<Dashboard3View> createState() => Dashboard3Controller();
}