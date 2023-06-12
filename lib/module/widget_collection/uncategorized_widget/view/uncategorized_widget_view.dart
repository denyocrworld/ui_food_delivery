import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/shared/widget/uncategorized/location_text/location_text.dart';

class UncategorizedWidgetView extends StatefulWidget {
  const UncategorizedWidgetView({Key? key}) : super(key: key);

  Widget build(context, UncategorizedWidgetController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("UncategorizedWidget"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              "q_location_text".snippet,
              //#TEMPLATE q_location_text
              QLocationText(
                title: "Delivery to",
              ),
              //#END
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<UncategorizedWidgetView> createState() =>
      UncategorizedWidgetController();
}
