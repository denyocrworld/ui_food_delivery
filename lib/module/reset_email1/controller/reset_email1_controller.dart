import 'package:flutter/material.dart';

import '../view/reset_email1_view.dart';

class ResetEmail1Controller extends State<ResetEmail1View> {
  static late ResetEmail1Controller instance;
  late ResetEmail1View view;

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
