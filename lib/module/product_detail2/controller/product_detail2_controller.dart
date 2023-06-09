import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/product_detail2_view.dart';

class ProductDetail2Controller extends State<ProductDetail2View> implements MvcController {
  static late ProductDetail2Controller instance;
  late ProductDetail2View view;

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