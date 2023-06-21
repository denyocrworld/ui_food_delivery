import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

import '../widget/custom_rounded_textfield.dart';
import '../widget/custom_underlined_textfield.dart';

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
            children: [
              Row(
                children: [
                  Icon(Icons.chevron_left),
                  Expanded(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Profile Settings",
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 40.0,
              ),
              CustomUnderlinedTextField(
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
              CustomUnderlinedTextField(
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
              CustomUnderlinedTextField(
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
              CustomRoundedTextField(
                hintText: "Full Name",
                suffixIcon: null,
              ),
              const SizedBox(
                height: 14.0,
              ),
              CustomRoundedTextField(
                hintText: "Email Address",
                suffixIcon: null,
              ),
              const SizedBox(
                height: 14.0,
              ),
              CustomRoundedTextField(
                hintText: "Password",
                suffixIcon: Icon(
                  Icons.visibility_off,
                  size: 20,
                ),
                obscureText: true,
              ),
              const SizedBox(
                height: 80.0,
              ),
              QButton(
                label: "CHANGE SETTINGS",
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<ChangePassword1View> createState() => ChangePassword1Controller();
}
