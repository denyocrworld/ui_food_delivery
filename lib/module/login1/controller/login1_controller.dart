import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/login1_view.dart';

class Login1Controller extends State<Login1View> implements MvcController {
  static late Login1Controller instance;
  late Login1View view;

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