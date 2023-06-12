// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

import '../location_text/location_text.dart';

class QLocationHeaderText extends StatelessWidget {
  const QLocationHeaderText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            Spacer(),
            QLocationText(
              title: "Delivery to",
            ),
            Spacer(),
          ],
        ),
        Positioned(
          right: 0,
          top: 0,
          bottom: 0,
          child: TextButton(
            onPressed: () {},
            child: Text("Filter"),
          ),
        ),
      ],
    );
  }
}
