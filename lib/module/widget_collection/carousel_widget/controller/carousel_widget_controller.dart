import 'package:flutter/material.dart';

import '../view/carousel_widget_view.dart';

class CarouselWidgetController extends State<CarouselWidgetView> {
  static late CarouselWidgetController instance;
  late CarouselWidgetView view;

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
