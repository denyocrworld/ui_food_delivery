import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

import '../widget/custom_rounded_textfield.dart';
import '../widget/custom_underlined_textfield.dart';

class ProfileSetting1View extends StatefulWidget {
  const ProfileSetting1View({Key? key}) : super(key: key);

  Widget build(context, ProfileSetting1Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ProfileSetting1"),
        actions: const [],
      ),
      body: Container(
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
              labelText: "FULL NAME",
              initialValue: "Nawaf Azim",
            ),
            const SizedBox(
              height: 20.0,
            ),
            CustomUnderlinedTextField(
              labelText: "EMAIL ADDRESS",
              initialValue: "Nawafazim@icloud.com",
            ),
            const SizedBox(
              height: 20.0,
            ),
            CustomUnderlinedTextField(
              labelText: "PHONE NUMBER",
              initialValue: "+1501333982",
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
            Spacer(),
            QButton(
              label: "CHANGE SETTINGS",
              onPressed: () {},
            ),
            const SizedBox(
              height: 20.0,
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<ProfileSetting1View> createState() => ProfileSetting1Controller();
}
