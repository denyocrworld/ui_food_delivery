import 'package:flutter/material.dart';

class QAlternativeRoundedTextField extends StatelessWidget {
  final String hintText;
  final Icon? suffixIcon;
  final bool? obscureText;
  const QAlternativeRoundedTextField({
    super.key,
    required this.hintText,
    required this.suffixIcon,
    this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(color: Color.fromRGBO(134, 134, 134, 1)),
      obscureText: obscureText ?? false,
      decoration: InputDecoration(
        hintText: hintText,
        suffixIcon: suffixIcon,
        fillColor: Colors.white,
      ),
      onChanged: (value) {},
    );
  }
}
