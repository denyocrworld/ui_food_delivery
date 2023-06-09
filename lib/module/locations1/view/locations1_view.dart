import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/locations1_controller.dart';

class Locations1View extends StatefulWidget {
  const Locations1View({Key? key}) : super(key: key);

  Widget build(context, Locations1Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Locations1"),
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
  State<Locations1View> createState() => Locations1Controller();
}