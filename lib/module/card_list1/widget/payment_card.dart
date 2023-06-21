import 'package:flutter/material.dart';

import '../../../shared/theme/theme_config.dart';

class PaymentCard extends StatelessWidget {
  final String paymentName;
  final String paymentImageUrl;
  final String paymentDescription;
  const PaymentCard({
    super.key,
    required this.paymentName,
    required this.paymentImageUrl,
    required this.paymentDescription,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.all(
            Radius.circular(6.0),
          ),
          child: Image.network(
            paymentImageUrl,
            width: 40.0,
            height: 34.0,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(
          width: 16.0,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              paymentName,
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 12.0,
            ),
            Text(
              paymentDescription,
              style: TextStyle(
                fontSize: 14.0,
                color: secondaryTextColor,
              ),
            ),
          ],
        ),
        Spacer(),
        const Icon(
          Icons.arrow_forward_ios,
          size: 16.0,
        ),
      ],
    );
  }
}
