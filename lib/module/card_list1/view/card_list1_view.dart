import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

import '../widget/payment_card.dart';

class CardList1View extends StatefulWidget {
  const CardList1View({Key? key}) : super(key: key);

  Widget build(context, CardList1Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("CardList1"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Row(
                children: [
                  Icon(Icons.chevron_left),
                  Expanded(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Payment Method",
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 57.0,
              ),
              PaymentCard(
                paymentName: "Paypal",
                paymentDescription: "Default Payment",
                paymentImageUrl: "https://i.ibb.co/pvCqDGK/paypal-icon.png",
              ),
              const SizedBox(
                height: 32.0,
              ),
              PaymentCard(
                paymentName: "MasterCard",
                paymentDescription: "Not Default",
                paymentImageUrl: "https://i.ibb.co/2SPxLsd/mastercard-icon.png",
              ),
              const SizedBox(
                height: 32.0,
              ),
              PaymentCard(
                paymentName: "Visa",
                paymentDescription: "Not Default",
                paymentImageUrl: "https://i.ibb.co/wr704s6/visa-icon.png",
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<CardList1View> createState() => CardList1Controller();
}
