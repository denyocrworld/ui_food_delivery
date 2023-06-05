import 'package:flutter/material.dart';

extension TextWidgetExtension on String {
  Widget get snippet {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 12.0),
      child: Card(
        color: Colors.black,
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 12.0,
            vertical: 6.0,
          ),
          child: Text(
            this,
            style: TextStyle(
              color: Colors.white,
              fontSize: 14.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
