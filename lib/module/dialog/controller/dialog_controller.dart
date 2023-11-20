import 'package:flutter/material.dart';

import '../view/dialog_view.dart';

class DialogController extends State<DialogView> {
  static late DialogController instance;
  late DialogView view;

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
