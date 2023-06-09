import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/refer_to_friends1_controller.dart';

class ReferToFriends1View extends StatefulWidget {
  const ReferToFriends1View({Key? key}) : super(key: key);

  Widget build(context, ReferToFriends1Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ReferToFriends1"),
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
  State<ReferToFriends1View> createState() => ReferToFriends1Controller();
}