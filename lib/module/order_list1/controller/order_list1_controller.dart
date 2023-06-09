import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/order_list1_view.dart';

class OrderList1Controller extends State<OrderList1View> implements MvcController {
  static late OrderList1Controller instance;
  late OrderList1View view;

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