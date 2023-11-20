import 'package:flutter/material.dart';

import '../view/enter_address1_view.dart';

class EnterAddress1Controller extends State<EnterAddress1View> {
  static late EnterAddress1Controller instance;
  late EnterAddress1View view;

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
