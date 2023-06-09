import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/product_detail3_view.dart';

class ProductDetail3Controller extends State<ProductDetail3View> implements MvcController {
  static late ProductDetail3Controller instance;
  late ProductDetail3View view;

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