import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class Register1View extends StatefulWidget {
  Register1View({Key? key}) : super(key: key);

  Widget build(context, Register1Controller controller) {
    controller.view = this;

    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(30.0),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                H1(
                  title: "Create Account",
                ),
                SizedBox(
                  height: 12.0,
                ),
                RichText(
                  text: TextSpan(
                    text: '',
                    style: DefaultTextStyle.of(context).style,
                    children: <TextSpan>[
                      TextSpan(
                        text:
                            "Enter your Phone name, email and password for sign up. ",
                        style: TextStyle(
                          fontSize: 14.0,
                        ),
                      ),
                      TextSpan(
                        text: "Already have account?",
                        style: TextStyle(
                          fontSize: 14.0,
                          color: primaryColor,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                QTextField(
                  label: "Full name",
                  validator: Validator.required,
                  onChanged: (value) {},
                ),
                QTextField(
                  label: "Email",
                  validator: Validator.email,
                  suffixIcon: Icons.email,
                  onChanged: (value) {},
                ),
                QTextField(
                  label: "Password",
                  obscure: true,
                  validator: Validator.required,
                  suffixIcon: Icons.password,
                  onChanged: (value) {},
                ),
                SizedBox(
                  height: 12.0,
                ),
                QButton(
                  label: "Register",
                  onPressed: () {},
                ),
                SizedBox(
                  height: 12.0,
                ),
                Text(
                  "By Signing up you agree to our Terms Conditions & Privacy Policy.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.grey[700],
                  ),
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
                SizedBox(
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
      ),
    );
  }

  @override
  State<Register1View> createState() => Register1Controller();
}
