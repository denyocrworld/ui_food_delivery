import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/card_widget_controller.dart';

class CardWidgetView extends StatefulWidget {
  const CardWidgetView({Key? key}) : super(key: key);

  Widget build(context, CardWidgetController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("CardWidget"),
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
  State<CardWidgetView> createState() => CardWidgetController();
}