// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class QOutlineIconButton extends StatelessWidget {
  final String label;
  final IconData icon;
  final Function onPressed;
  final double? width;
  final Color? color;
  QOutlineIconButton({
    Key? key,
    required this.label,
    required this.icon,
    required this.onPressed,
    this.width,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? MediaQuery.of(context).size.width,
      height: 42,
      child: OutlinedButton.icon(
        icon: Icon(
          icon,
          color: color ?? Color(0xff434d48),
        ),
        label: Text(
          label,
          style: TextStyle(
            fontSize: 16.0,
            color: color ?? Color(0xff434d48),
          ),
        ),
        style: OutlinedButton.styleFrom(
          foregroundColor: Colors.green,
          side: BorderSide(
            color: color ?? Color(0xffd9dbd9),
          ),
        ),
        onPressed: () => onPressed(),
      ),
    );
  }
}
