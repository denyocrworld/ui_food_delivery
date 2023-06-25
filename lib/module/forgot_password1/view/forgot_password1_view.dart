import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class ForgotPassword1View extends StatefulWidget {
  const ForgotPassword1View({Key? key}) : super(key: key);

  Widget build(context, ForgotPassword1Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Forgot Password"),
        centerTitle: true,
        actions: const [],
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              H2(title: "Forgot Password"),
              const SizedBox(
                height: 20.0,
              ),
              RichText(
                text: TextSpan(
                  text: '',
                  style: DefaultTextStyle.of(context).style,
                  children: <TextSpan>[
                    TextSpan(
                      text:
                          "Enter your email address and we will send you a reset instructions.",
                      style: TextStyle(
                        fontSize: 14.0,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 24.0,
              ),
              QTextField(
                label: "Email",
                validator: Validator.required,
                value: "demo@gmail.com",
                onChanged: (value) {},
              ),
              const SizedBox(
                height: 12.0,
              ),
              QButton(
                label: "Reset Password",
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<ForgotPassword1View> createState() => ForgotPassword1Controller();
}
