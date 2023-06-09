import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/add_social_accounts1_controller.dart';

class AddSocialAccounts1View extends StatefulWidget {
  const AddSocialAccounts1View({Key? key}) : super(key: key);

  Widget build(context, AddSocialAccounts1Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("AddSocialAccounts1"),
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
  State<AddSocialAccounts1View> createState() => AddSocialAccounts1Controller();
}