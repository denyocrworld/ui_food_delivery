import 'package:flutter/material.dart';

import '../../../shared/theme/theme_config.dart';

class OptionWidget extends StatelessWidget {
  final Color? containerColor;
  final Color? textColor;
  final String text;
  const OptionWidget({
    super.key,
    required this.text,
    this.containerColor,
    this.textColor,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: containerColor ?? Color.fromRGBO(241, 241, 241, 1),
        borderRadius: BorderRadius.all(
          Radius.circular(5.0),
        ),
      ),
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 27),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 12.0,
          fontWeight: FontWeight.bold,
          color: textColor ?? secondaryTextColor,
        ),
      ),
    );
  }
}
