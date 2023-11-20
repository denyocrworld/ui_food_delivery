import 'package:flutter/material.dart';

import '../view/order_list1_view.dart';

class OrderList1Controller extends State<OrderList1View> {
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
