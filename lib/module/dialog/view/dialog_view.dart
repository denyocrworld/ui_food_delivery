import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/dialog_controller.dart';

class DialogView extends StatefulWidget {
  const DialogView({Key? key}) : super(key: key);

  Widget build(context, DialogController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Dialog"),
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
  State<DialogView> createState() => DialogController();
}