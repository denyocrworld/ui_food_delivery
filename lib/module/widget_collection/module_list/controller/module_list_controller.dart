import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/module_list_view.dart';

class ModuleListController extends State<ModuleListView> implements MvcController {
  static late ModuleListController instance;
  late ModuleListView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}