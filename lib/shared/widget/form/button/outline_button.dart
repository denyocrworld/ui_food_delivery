// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class QOutlineButton extends StatelessWidget {
  final String label;
  final Function onPressed;
  final Color? color;
  final double? width;
  QOutlineButton({
    Key? key,
    required this.label,
    required this.onPressed,
    this.width,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? MediaQuery.of(context).size.width,
      height: 42,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          foregroundColor: Colors.green,
          side: BorderSide(
            color: color ?? Color(0xffd9dbd9),
          ),
        ),
        onPressed: () => onPressed(),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 16.0,
            color: color ?? Color(0xff434d48),
          ),
        ),
      ),
    );
  }
}
