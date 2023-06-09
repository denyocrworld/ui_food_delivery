import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/card_list1_controller.dart';

class CardList1View extends StatefulWidget {
  const CardList1View({Key? key}) : super(key: key);

  Widget build(context, CardList1Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("CardList1"),
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
  State<CardList1View> createState() => CardList1Controller();
}