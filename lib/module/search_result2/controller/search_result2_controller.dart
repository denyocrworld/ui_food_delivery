import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/search_result2_view.dart';

class SearchResult2Controller extends State<SearchResult2View> implements MvcController {
  static late SearchResult2Controller instance;
  late SearchResult2View view;

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