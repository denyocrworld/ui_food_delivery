import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/shared/widget/widget_demo/widget_demo.dart';

class FormWidgetView extends StatefulWidget {
  const FormWidgetView({Key? key}) : super(key: key);

  Widget build(context, FormWidgetController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("FormWidget"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                ),
                onPressed: () => Get.to(HUIWidgetDemoView()),
                child: const Text("HUIWidgetDemoView"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<FormWidgetView> createState() => FormWidgetController();
}
