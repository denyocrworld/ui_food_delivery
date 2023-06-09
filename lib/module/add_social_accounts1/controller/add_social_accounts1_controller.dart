import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/add_social_accounts1_view.dart';

class AddSocialAccounts1Controller extends State<AddSocialAccounts1View> implements MvcController {
  static late AddSocialAccounts1Controller instance;
  late AddSocialAccounts1View view;

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