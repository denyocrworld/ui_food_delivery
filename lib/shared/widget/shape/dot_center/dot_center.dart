import 'package:flutter/material.dart';

class DotCenter extends StatelessWidget {
  const DotCenter({
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
