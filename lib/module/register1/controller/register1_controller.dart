import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/register1_view.dart';

class Register1Controller extends State<Register1View> implements MvcController {
  static late Register1Controller instance;
  late Register1View view;

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