import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class Login1View extends StatefulWidget {
  const Login1View({Key? key}) : super(key: key);

  Widget build(context, Login1Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        title: Text("Sign In"),
      ),
      body: Container(
        padding: const EdgeInsets.all(30.0),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Welcome to",
                style: TextStyle(
                  fontSize: 32.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 12.0,
              ),
              Wrap(
                children: [
                  Text(
                    "Enter your Phone number or Email for sign in, Or ",
                    style: TextStyle(
                      fontSize: 14.0,
                    ),
                  ),
                  Text(
                    "Create new account.",
                    style: TextStyle(
                      fontSize: 14.0,
                      color: primaryColor,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              QTextField(
                label: "Email",
                hint: "Your email",
                validator: Validator.email,
                suffixIcon: Icons.email,
                value: "demo@gmail.com",
                onChanged: (value) {},
              ),
              QTextField(
                label: "Password",
                hint: "Your password",
                obscure: true,
                validator: Validator.required,
                suffixIcon: Icons.password,
                value: "123456",
                onChanged: (value) {},
              ),
              Center(
                child: Text(
                  "Forgot password?",
                  style: TextStyle(
                    fontSize: 12.0,
                  ),
                ),
              ),
              const SizedBox(
                height: 12.0,
              ),
              QButton(
                label: "SIGN IN",
                onPressed: () {},
              ),
              const SizedBox(
                height: 12.0,
              ),
              Center(
                child: Text(
                  "Or",
                  style: TextStyle(
                    fontSize: 12.0,
                  ),
                ),
              ),
              const SizedBox(
                height: 12.0,
              ),
              QButton(
                label: "Connect with Facebook",
                color: Color(0xff395998),
                icon: MdiIcons.facebook,
                onPressed: () {},
              ),
              const SizedBox(
                height: 12.0,
              ),
              QButton(
                label: "Connect with Google",
                color: Color(0xff4285f4),
                icon: MdiIcons.google,
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<Login1View> createState() => Login1Controller();
}
