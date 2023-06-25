import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/search_product1_view.dart';

class SearchProduct1Controller extends State<SearchProduct1View>
    implements MvcController {
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
