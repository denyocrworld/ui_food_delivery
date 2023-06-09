import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/login_by_phone_number1_controller.dart';

class LoginByPhoneNumber1View extends StatefulWidget {
  const LoginByPhoneNumber1View({Key? key}) : super(key: key);

  Widget build(context, LoginByPhoneNumber1Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("LoginByPhoneNumber1"),
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
  State<LoginByPhoneNumber1View> createState() => LoginByPhoneNumber1Controller();
}