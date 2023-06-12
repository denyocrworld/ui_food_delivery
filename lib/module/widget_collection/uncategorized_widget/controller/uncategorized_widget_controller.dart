import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/uncategorized_widget_view.dart';

class UncategorizedWidgetController extends State<UncategorizedWidgetView> implements MvcController {
  static late UncategorizedWidgetController instance;
  late UncategorizedWidgetView view;

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