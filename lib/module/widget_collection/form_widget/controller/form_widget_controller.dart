import 'package:flutter/material.dart';

import '../view/form_widget_view.dart';

class FormWidgetController extends State<FormWidgetView> {
  static late FormWidgetController instance;
  late FormWidgetView view;

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
