import 'package:flutter/material.dart';

class DotContainer extends StatelessWidget {
  const DotContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 3,
      width: 3,
      margin: EdgeInsets.symmetric(horizontal: 7),
      decoration: BoxDecoration(color: Colors.grey, shape: BoxShape.circle),
    );
  }
}
