import 'package:flutter/material.dart';

import '../view/card_list1_view.dart';

class CardList1Controller extends State<CardList1View> {
  static late CardList1Controller instance;
  late CardList1View view;

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
