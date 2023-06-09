import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/confirm_phone_number1_view.dart';

class ConfirmPhoneNumber1Controller extends State<ConfirmPhoneNumber1View> implements MvcController {
  static late ConfirmPhoneNumber1Controller instance;
  late ConfirmPhoneNumber1View view;

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