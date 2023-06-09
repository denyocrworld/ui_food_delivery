import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/type_location1_controller.dart';

class TypeLocation1View extends StatefulWidget {
  const TypeLocation1View({Key? key}) : super(key: key);

  Widget build(context, TypeLocation1Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("TypeLocation1"),
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
  State<TypeLocation1View> createState() => TypeLocation1Controller();
}