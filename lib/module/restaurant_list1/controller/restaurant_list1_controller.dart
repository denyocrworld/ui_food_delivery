import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/restaurant_list1_view.dart';

class RestaurantList1Controller extends State<RestaurantList1View> implements MvcController {
  static late RestaurantList1Controller instance;
  late RestaurantList1View view;

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