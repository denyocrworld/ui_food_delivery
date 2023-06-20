import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

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
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.all(
                      Radius.circular(6.0),
                    ),
                    child: Image.network(
                      "https://i.ibb.co/pvCqDGK/paypal-icon.png",
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
                        "Paypal",
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 12.0,
                      ),
                      Text(
                        "Default Payment",
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
              ),
              const SizedBox(
                height: 32.0,
              ),
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.all(
                      Radius.circular(6.0),
                    ),
                    child: Image.network(
                      "https://i.ibb.co/2SPxLsd/mastercard-icon.png",
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
                        "MasterCard",
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 12.0,
                      ),
                      Text(
                        "Not Default",
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
              ),
              const SizedBox(
                height: 32.0,
              ),
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.all(
                      Radius.circular(6.0),
                    ),
                    child: Image.network(
                      "https://i.ibb.co/wr704s6/visa-icon.png",
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
                        "Visa",
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 12.0,
                      ),
                      Text(
                        "Not Default",
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
