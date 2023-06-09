import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/refer_to_friends1_view.dart';

class ReferToFriends1Controller extends State<ReferToFriends1View> implements MvcController {
  static late ReferToFriends1Controller instance;
  late ReferToFriends1View view;

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