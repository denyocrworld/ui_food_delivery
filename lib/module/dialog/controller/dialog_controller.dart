import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/dialog_view.dart';

class DialogController extends State<DialogView> implements MvcController {
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