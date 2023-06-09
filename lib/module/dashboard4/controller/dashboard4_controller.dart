import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/dashboard4_view.dart';

class Dashboard4Controller extends State<Dashboard4View> implements MvcController {
  static late Dashboard4Controller instance;
  late Dashboard4View view;

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