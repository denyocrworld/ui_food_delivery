import 'package:flutter/material.dart';

import '../view/card_widget_view.dart';

class CardWidgetController extends State<CardWidgetView> {
  static late CardWidgetController instance;
  late CardWidgetView view;

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
