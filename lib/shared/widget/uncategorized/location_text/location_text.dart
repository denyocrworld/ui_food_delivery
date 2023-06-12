import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:flutter/material.dart';

class QLocationText extends StatelessWidget {
  final String title;
  final Function? onPressed;
  const QLocationText({
    Key? key,
    required this.title,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        if (onPressed != null) onPressed!();
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.w500,
                color: const Color(0xff22A45D)),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Text(
                    "San Francisco",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Icon(
                    MdiIcons.chevronDown,
                    size: 24.0,
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
