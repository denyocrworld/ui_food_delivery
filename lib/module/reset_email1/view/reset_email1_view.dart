import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/reset_email1_controller.dart';

class ResetEmail1View extends StatefulWidget {
  const ResetEmail1View({Key? key}) : super(key: key);

  Widget build(context, ResetEmail1Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ResetEmail1"),
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
  State<ResetEmail1View> createState() => ResetEmail1Controller();
}