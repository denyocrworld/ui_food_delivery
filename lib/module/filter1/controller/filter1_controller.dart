import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/filter1_view.dart';

class Filter1Controller extends State<Filter1View> implements MvcController {
  static late Filter1Controller instance;
  late Filter1View view;

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