import 'package:flutter/material.dart';

import '../view/change_password1_view.dart';

class ChangePassword1Controller extends State<ChangePassword1View> {
  static late ChangePassword1Controller instance;
  late ChangePassword1View view;

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
