import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/card_widget_controller.dart';

class CardWidgetView extends StatefulWidget {
  CardWidgetView({Key? key}) : super(key: key);

  Widget build(context, CardWidgetController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: Text("CardWidget"),
        actions: [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<CardWidgetView> createState() => CardWidgetController();
}
