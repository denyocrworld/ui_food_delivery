import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class Dashboard1View extends StatefulWidget {
  Dashboard1View({Key? key}) : super(key: key);

  Widget build(context, Dashboard1Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard1"),
        actions: [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: [
              H4(
                title: "Heading4",
                subtitle: "Subtitle4",
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<Dashboard1View> createState() => Dashboard1Controller();
}
