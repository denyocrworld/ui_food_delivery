import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/account_setting1_controller.dart';

class AccountSetting1View extends StatefulWidget {
  const AccountSetting1View({Key? key}) : super(key: key);

  Widget build(context, AccountSetting1Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("AccountSetting1"),
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
  State<AccountSetting1View> createState() => AccountSetting1Controller();
}