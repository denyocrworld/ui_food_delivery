import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/intro1_controller.dart';

class Intro1View extends StatefulWidget {
  const Intro1View({Key? key}) : super(key: key);

  Widget build(context, Intro1Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Intro1"),
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
  State<Intro1View> createState() => Intro1Controller();
}