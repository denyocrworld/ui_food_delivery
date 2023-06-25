import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

import '../../../shared/widget/form/country_picker/country_picker.dart';

class LoginByPhoneNumber1View extends StatefulWidget {
  LoginByPhoneNumber1View({Key? key}) : super(key: key);

  Widget build(context, LoginByPhoneNumber1Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: Text("Login by Phone Number"),
        actions: [],
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(30.0),
        child: Column(
          children: [
            Center(
              child: H4(
                title: "Get started with AwesomeApp",
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 12.0,
            ),
            Text(
              "Enter your phone number to use AwesomeApp\nand enjoy your food :)",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.grey[700],
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            QCountryPicker(
              onChanged: (value) {
                print("value: $value");
              },
            ),
            const SizedBox(
              height: 12.0,
            ),
          ],
        ),
      ),
      bottomNavigationBar: QActionButton(
        label: "Register",
        onPressed: () {},
      ),
    );
  }

  @override
  State<LoginByPhoneNumber1View> createState() =>
      LoginByPhoneNumber1Controller();
}
