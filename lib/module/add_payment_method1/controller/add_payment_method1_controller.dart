import 'package:flutter/material.dart';
import '../view/add_payment_method1_view.dart';

class AddPaymentMethod1Controller extends State<AddPaymentMethod1View> {
  static late AddPaymentMethod1Controller instance;
  late AddPaymentMethod1View view;

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
