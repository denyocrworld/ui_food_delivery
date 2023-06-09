import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/restaurant_list2_view.dart';

class RestaurantList2Controller extends State<RestaurantList2View> implements MvcController {
  static late RestaurantList2Controller instance;
  late RestaurantList2View view;

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