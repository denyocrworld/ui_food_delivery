import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class ChangePassword1View extends StatefulWidget {
  const ChangePassword1View({Key? key}) : super(key: key);

  Widget build(context, ChangePassword1Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Change Password"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        controller: ScrollController(),
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              QAlternativeTextField(
                labelText: "PASSWORD",
                initialValue: "password",
                obscureText: true,
                readOnly: true,
                suffixIcon: Icon(
                  Icons.visibility_off,
                  size: 20,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              QAlternativeTextField(
                labelText: "NEW PASSWORD",
                initialValue: "newpassword",
                obscureText: true,
                readOnly: false,
                suffixIcon: Icon(
                  Icons.visibility_off,
                  size: 20,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              QAlternativeTextField(
                labelText: "CONFIRM PASSWORD",
                initialValue: "newpassword",
                obscureText: true,
                readOnly: false,
                suffixIcon: Icon(
                  Icons.visibility_off,
                  size: 20,
                ),
              ),
              const SizedBox(
                height: 63.0,
              ),
              QAlternativeRoundedTextField(
                hintText: "Full Name",
                suffixIcon: null,
              ),
              const SizedBox(
                height: 14.0,
              ),
              QAlternativeRoundedTextField(
                hintText: "Email Address",
                suffixIcon: null,
              ),
              const SizedBox(
                height: 14.0,
              ),
              QAlternativeRoundedTextField(
                hintText: "Password",
                suffixIcon: Icon(
                  Icons.visibility_off,
                  size: 20,
                ),
                obscureText: true,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: QActionButton(
        label: "Change Password",
        onPressed: () {},
      ),
    );
  }

  @override
  State<ChangePassword1View> createState() => ChangePassword1Controller();
}
