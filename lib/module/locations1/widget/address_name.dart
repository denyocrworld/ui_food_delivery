import 'package:flutter/material.dart';

class Location1AddressName extends StatelessWidget {
  final String locationName;

  const Location1AddressName({
    required this.locationName,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.location_on_rounded,
          color: Color.fromRGBO(134, 134, 134, 1),
        ),
        const SizedBox(
          width: 17.0,
        ),
        Text(
          locationName,
          style: TextStyle(
            fontSize: 16.0,
          ),
        ),
      ],
    );
  }
}
