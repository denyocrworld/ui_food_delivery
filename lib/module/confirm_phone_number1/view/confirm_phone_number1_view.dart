import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/shared/widget/form/digit/digit.dart';

class ConfirmPhoneNumber1View extends StatefulWidget {
  const ConfirmPhoneNumber1View({
    Key? key,
  }) : super(key: key);

  Widget build(context, ConfirmPhoneNumber1Controller controller) {
    controller.view = this;

    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(30.0),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                H2(title: "Verify phone number"),
                SizedBox(
                  height: 12.0,
                ),
                RichText(
                  text: TextSpan(
                    text: '',
                    style: DefaultTextStyle.of(context).style,
                    children: <TextSpan>[
                      TextSpan(
                        text: "Enter the 4-Digit code sent to you at ",
                        style: TextStyle(
                          fontSize: 14.0,
                        ),
                      ),
                      TextSpan(
                        text: "+1501333982",
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
                QDigit(
                  onChanged: (value) {
                    print(value);
                  },
                ),
                SizedBox(
                  height: 30.0,
                ),
                QButton(
                  label: "Continue",
                  onPressed: () {},
                ),
                SizedBox(
                  height: 12.0,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text: '',
                      style: DefaultTextStyle.of(context).style.copyWith(),
                      children: <TextSpan>[
                        TextSpan(
                          text: "Didn't receive code? ",
                          style: TextStyle(
                            fontSize: 12.0,
                          ),
                        ),
                        TextSpan(
                          text: "Resend Again.",
                          style: TextStyle(
                            fontSize: 12.0,
                            color: primaryColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
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
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  State<ConfirmPhoneNumber1View> createState() =>
      ConfirmPhoneNumber1Controller();
}
