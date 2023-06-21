import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class ProfileSetting1View extends StatefulWidget {
  const ProfileSetting1View({Key? key}) : super(key: key);

  Widget build(context, ProfileSetting1Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ProfileSetting1"),
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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "FULL NAME",
                    style: TextStyle(
                      fontSize: 12.0,
                      color: secondaryTextColor,
                    ),
                  ),
                  TextFormField(
                    readOnly: true,
                    initialValue: 'Nawaf Azim',
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 0),
                      fillColor: Colors.white,
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromRGBO(243, 242, 242, 1),
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            width: 2, color: Color.fromRGBO(243, 242, 242, 1)),
                      ),
                    ),
                    onChanged: (value) {},
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "EMAIL ADDRESS",
                    style: TextStyle(
                      fontSize: 12.0,
                      color: secondaryTextColor,
                    ),
                  ),
                  TextFormField(
                    readOnly: true,
                    initialValue: 'Nawafazim@icloud.com',
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 0),
                      fillColor: Colors.white,
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromRGBO(243, 242, 242, 1),
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            width: 2, color: Color.fromRGBO(243, 242, 242, 1)),
                      ),
                    ),
                    onChanged: (value) {},
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "PHONE NUMBER",
                    style: TextStyle(
                      fontSize: 12.0,
                      color: secondaryTextColor,
                    ),
                  ),
                  TextFormField(
                    readOnly: true,
                    initialValue: '+1501333982',
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 0),
                      fillColor: Colors.white,
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromRGBO(243, 242, 242, 1),
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            width: 2, color: Color.fromRGBO(243, 242, 242, 1)),
                      ),
                    ),
                    onChanged: (value) {},
                  ),
                ],
              ),
              const SizedBox(
                height: 63.0,
              ),
              TextFormField(
                style: TextStyle(color: Color.fromRGBO(134, 134, 134, 1)),
                decoration: const InputDecoration(
                  hintText: "Full Name",
                  fillColor: Colors.white,
                ),
                onChanged: (value) {},
              ),
              const SizedBox(
                height: 14.0,
              ),
              TextFormField(
                style: TextStyle(color: Color.fromRGBO(134, 134, 134, 1)),
                decoration: const InputDecoration(
                  hintText: "Email Address",
                  fillColor: Colors.white,
                ),
                onChanged: (value) {},
              ),
              const SizedBox(
                height: 14.0,
              ),
              TextFormField(
                style: TextStyle(color: Color.fromRGBO(134, 134, 134, 1)),
                obscureText: true,
                decoration: const InputDecoration(
                  hintText: "Password",
                  fillColor: Colors.white,
                  suffixIcon: Icon(Icons.remove_red_eye),
                ),
                onChanged: (value) {},
              ),
              const SizedBox(
                height: 70.0,
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
  State<ProfileSetting1View> createState() => ProfileSetting1Controller();
}
