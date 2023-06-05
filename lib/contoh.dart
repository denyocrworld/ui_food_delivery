// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class DemoController extends State<DemoView> {
  static late DemoController instance;
  late DemoView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  DemoState state = DemoState(counter: 3);
  updateCounter() {
    state = DemoState(
      counter: state.counter + 1,
    );
    setState(() {});
  }
}

// view+controller+state
class DemoState {
  int counter = 0;
  DemoState({
    required this.counter,
  });
}

class DemoView extends StatefulWidget {
  const DemoView({Key? key}) : super(key: key);

  Widget build(context, DemoController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [],
          ),
        ),
      ),
    );
  }

  @override
  State<DemoView> createState() => DemoController();
}
