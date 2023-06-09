import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/profile_setting1_controller.dart';

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
            children: const [],
          ),
        ),
      ),
    );
  }

  @override
  State<ProfileSetting1View> createState() => ProfileSetting1Controller();
}