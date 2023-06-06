import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/dashboard2_view.dart';

class Dashboard2Controller extends State<Dashboard2View> implements MvcController {
  static late Dashboard2Controller instance;
  late Dashboard2View view;

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