import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/login_by_phone_number1_view.dart';

class LoginByPhoneNumber1Controller extends State<LoginByPhoneNumber1View> implements MvcController {
  static late LoginByPhoneNumber1Controller instance;
  late LoginByPhoneNumber1View view;

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