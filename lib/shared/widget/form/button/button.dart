// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class QButton extends StatelessWidget {
  final String label;
  final Function onPressed;
  final Color? color;
  final IconData? icon;
  final double? width;
  QButton({
    Key? key,
    required this.label,
    required this.onPressed,
    this.icon,
    this.color,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? MediaQuery.of(context).size.width,
      height: 42,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color ?? primaryColor,
        ),
        onPressed: () => onPressed(),
        child: Row(
          children: [
            if (icon != null)
              Icon(
                icon,
                size: 24.0,
              ),
            Spacer(),
            Text(
              label,
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
