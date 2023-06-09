import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/forgot_password1_view.dart';

class ForgotPassword1Controller extends State<ForgotPassword1View> implements MvcController {
  static late ForgotPassword1Controller instance;
  late ForgotPassword1View view;

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