import 'package:flutter/material.dart';

import '../../../theme/theme_config.dart';

class CustomUnderlinedTextField extends StatelessWidget {
  final String labelText;
  final String initialValue;
  const CustomUnderlinedTextField({
    super.key,
    required this.labelText,
    required this.initialValue,
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
          readOnly: true,
          initialValue: initialValue,
          decoration: const InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 0),
            fillColor: Colors.white,
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
