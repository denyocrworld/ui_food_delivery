import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class PaymentMethod1View extends StatefulWidget {
  const PaymentMethod1View({Key? key}) : super(key: key);

  Widget build(context, PaymentMethod1Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Payment Method",
        ),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Image.network(
                "https://i.ibb.co/G2C1mbz/greencard-illustration-removebg.png",
                width: 120.0,
                height: 120.0,
                fit: BoxFit.cover,
              ),
              const SizedBox(
                height: 40.0,
              ),
              Text(
                "Don't have any card :)",
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 24.0,
              ),
              Text(
                "It's seems like you don't add any credit or debit card. You may easily add card.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16.0,
                  color: secondaryTextColor,
                ),
              ),
              const SizedBox(
                height: 40.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 60),
                child: QOutlineSuccessButton(
                  label: "ADD CREDIT CARDS",
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<PaymentMethod1View> createState() => PaymentMethod1Controller();
}
