import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/dashboard4_controller.dart';

class Dashboard4View extends StatefulWidget {
  const Dashboard4View({Key? key}) : super(key: key);

  Widget build(context, Dashboard4Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard4"),
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
  State<Dashboard4View> createState() => Dashboard4Controller();
}