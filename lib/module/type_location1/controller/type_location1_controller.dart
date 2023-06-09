import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/type_location1_view.dart';

class TypeLocation1Controller extends State<TypeLocation1View> implements MvcController {
  static late TypeLocation1Controller instance;
  late TypeLocation1View view;

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