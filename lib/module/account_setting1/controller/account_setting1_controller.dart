import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/account_setting1_view.dart';

class AccountSetting1Controller extends State<AccountSetting1View> implements MvcController {
  static late AccountSetting1Controller instance;
  late AccountSetting1View view;

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