import 'package:flutter/material.dart';

import '../view/button_widget_view.dart';

class ButtonWidgetController extends State<ButtonWidgetView> {
  static late ButtonWidgetController instance;
  late ButtonWidgetView view;

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
