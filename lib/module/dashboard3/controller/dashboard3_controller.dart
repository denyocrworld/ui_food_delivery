import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/dashboard3_view.dart';

class Dashboard3Controller extends State<Dashboard3View> implements MvcController {
  static late Dashboard3Controller instance;
  late Dashboard3View view;

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