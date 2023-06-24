import 'package:flutter/material.dart';

class CircleOptionWidget extends StatelessWidget {
  final Color? containerColor;
  final Color? textColor;
  const CircleOptionWidget({
    super.key,
    required this.dollarString,
    this.containerColor,
    this.textColor,
  });

  final String dollarString;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Container(
        width: 70,
        height: 70,
        decoration: BoxDecoration(
          color: containerColor,
          borderRadius: BorderRadius.all(
            Radius.circular(50.0),
          ),
          border: Border.all(
            width: 1.0,
            color: Colors.grey.shade300,
          ),
        ),
        child: Center(
          child: Text(
            dollarString,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18.0,
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }
}
