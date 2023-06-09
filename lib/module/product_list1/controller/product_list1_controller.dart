import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/product_list1_view.dart';

class ProductList1Controller extends State<ProductList1View> implements MvcController {
  static late ProductList1Controller instance;
  late ProductList1View view;

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