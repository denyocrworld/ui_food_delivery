import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/change_password1_controller.dart';

class ChangePassword1View extends StatefulWidget {
  const ChangePassword1View({Key? key}) : super(key: key);

  Widget build(context, ChangePassword1Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ChangePassword1"),
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
  State<ChangePassword1View> createState() => ChangePassword1Controller();
}