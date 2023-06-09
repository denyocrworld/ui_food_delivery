import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/product_detail1_view.dart';

class ProductDetail1Controller extends State<ProductDetail1View> implements MvcController {
  static late ProductDetail1Controller instance;
  late ProductDetail1View view;

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