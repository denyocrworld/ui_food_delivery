import 'package:flutter/material.dart';

import '../view/uncategorized_widget_view.dart';

class UncategorizedWidgetController extends State<UncategorizedWidgetView> {
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
