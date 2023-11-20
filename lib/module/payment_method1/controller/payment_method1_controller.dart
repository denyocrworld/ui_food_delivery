import 'package:flutter/material.dart';

import '../view/payment_method1_view.dart';

class PaymentMethod1Controller extends State<PaymentMethod1View> {
  static late PaymentMethod1Controller instance;
  late PaymentMethod1View view;

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
