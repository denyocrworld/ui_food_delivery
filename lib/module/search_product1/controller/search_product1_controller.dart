import 'package:flutter/material.dart';

import '../view/search_product1_view.dart';

class SearchProduct1Controller extends State<SearchProduct1View> {
  static late SearchProduct1Controller instance;
  late SearchProduct1View view;

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
