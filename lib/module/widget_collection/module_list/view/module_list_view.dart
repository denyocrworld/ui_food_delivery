import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/module_list_controller.dart';

class ModuleListView extends StatefulWidget {
  const ModuleListView({Key? key}) : super(key: key);

  Widget build(context, ModuleListController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ModuleList"),
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
  State<ModuleListView> createState() => ModuleListController();
}