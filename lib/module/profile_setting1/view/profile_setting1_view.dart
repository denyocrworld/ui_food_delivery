import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class ProfileSetting1View extends StatefulWidget {
  const ProfileSetting1View({Key? key}) : super(key: key);

  Widget build(context, ProfileSetting1Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile Settings"),
        actions: const [],
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            QAlternativeTextField(
              labelText: "FULL NAME",
              initialValue: "Nawaf Azim",
            ),
            const SizedBox(
              height: 20.0,
            ),
            QAlternativeTextField(
              labelText: "EMAIL ADDRESS",
              initialValue: "Nawafazim@icloud.com",
            ),
            const SizedBox(
              height: 20.0,
            ),
            QAlternativeTextField(
              labelText: "PHONE NUMBER",
              initialValue: "+1501333982",
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
