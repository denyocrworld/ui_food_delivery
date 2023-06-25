import 'package:flutter/material.dart';

import '../../../shared/theme/theme_config.dart';

class QAlternativeTextField extends StatelessWidget {
  final String labelText;
  final String initialValue;
  final bool? obscureText;
  final bool? readOnly;
  final Icon? suffixIcon;
  const QAlternativeTextField({
    super.key,
    required this.labelText,
    required this.initialValue,
    this.obscureText,
    this.readOnly,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelText,
          style: TextStyle(
            fontSize: 12.0,
            color: secondaryTextColor,
          ),
        ),
        TextFormField(
          readOnly: readOnly ?? false,
          obscureText: obscureText ?? false,
          initialValue: initialValue,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 0),
            fillColor: Colors.white,
            suffixIcon: suffixIcon,
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Color.fromRGBO(243, 242, 242, 1),
              ),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide:
                  BorderSide(width: 2, color: Color.fromRGBO(243, 242, 242, 1)),
            ),
          ),
          onChanged: (value) {},
        ),
      ],
    );
  }
}
