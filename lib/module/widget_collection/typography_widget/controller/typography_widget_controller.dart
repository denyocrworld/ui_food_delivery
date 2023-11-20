import 'package:flutter/material.dart';

import '../view/typography_widget_view.dart';

class TypographyWidgetController extends State<TypographyWidgetView> {
  static late TypographyWidgetController instance;
  late TypographyWidgetView view;

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
