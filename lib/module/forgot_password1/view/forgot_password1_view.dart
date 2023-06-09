import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/forgot_password1_controller.dart';

class ForgotPassword1View extends StatefulWidget {
  const ForgotPassword1View({Key? key}) : super(key: key);

  Widget build(context, ForgotPassword1Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ForgotPassword1"),
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
  State<ForgotPassword1View> createState() => ForgotPassword1Controller();
}