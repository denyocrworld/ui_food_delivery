import 'package:flutter/material.dart';

import '../view/order_detail1_view.dart';

class OrderDetail1Controller extends State<OrderDetail1View> {
  static late OrderDetail1Controller instance;
  late OrderDetail1View view;

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
