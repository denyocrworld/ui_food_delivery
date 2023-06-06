import 'package:flutter/material.dart';
import 'package:hyper_ui/module/dashboard1/view/dashboard1_view.dart';
import 'package:hyper_ui/state_util.dart';
import '../../../dashboard2/view/dashboard2_view.dart';
import '../../../dashboard3/view/dashboard3_view.dart';
import '../view/module_list_view.dart';

class ModuleListController extends State<ModuleListView>
    implements MvcController {
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

  List menuList = [
    {
      "label": "Dashboard1View",
      "view": Dashboard1View(),
    },
    {
      "label": "Dashboard2View",
      "view": Dashboard2View(),
    },
    {
      "label": "Dashboard3View",
      "view": Dashboard3View(),
    },
  ];
}
