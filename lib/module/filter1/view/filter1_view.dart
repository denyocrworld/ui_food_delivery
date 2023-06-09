import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/filter1_controller.dart';

class Filter1View extends StatefulWidget {
  const Filter1View({Key? key}) : super(key: key);

  Widget build(context, Filter1Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Filter1"),
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
  State<Filter1View> createState() => Filter1Controller();
}