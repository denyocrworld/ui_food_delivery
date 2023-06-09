import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/profile_setting1_view.dart';

class ProfileSetting1Controller extends State<ProfileSetting1View> implements MvcController {
  static late ProfileSetting1Controller instance;
  late ProfileSetting1View view;

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