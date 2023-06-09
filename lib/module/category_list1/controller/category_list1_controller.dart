import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/category_list1_view.dart';

class CategoryList1Controller extends State<CategoryList1View> implements MvcController {
  static late CategoryList1Controller instance;
  late CategoryList1View view;

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