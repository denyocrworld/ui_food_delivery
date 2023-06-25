import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hyper_ui/core.dart';

class AddPaymentMethod1View extends StatefulWidget {
  const AddPaymentMethod1View({Key? key}) : super(key: key);

  Widget build(context, AddPaymentMethod1Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Text(
                "Add your payment methods",
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 12.0,
              ),
              Text(
                "This card will only be charged when\nyou place an order.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16.0,
                  color: secondaryTextColor,
                ),
              ),
              const SizedBox(
                height: 34.0,
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                  CardNumberInputFormatter(),
                  LengthLimitingTextInputFormatter(22),
                ],
                decoration: InputDecoration(
                  hintText: '4343 4343 4343 4343',
                  hintStyle: TextStyle(
                    color: secondaryTextColor.withOpacity(0.5),
                  ),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(
                        Radius.circular(5.0),
                      ),
                      child: Image.network(
                        "https://i.ibb.co/4Ws7j9y/card-image.png",
                        width: 30.0,
                        height: 10.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                onChanged: (value) {},
              ),
              const SizedBox(
                height: 16.0,
              ),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                        CardMonthInputFormatter(),
                        LengthLimitingTextInputFormatter(5),
                      ],
                      decoration: InputDecoration(
                        hintText: 'MM/YY',
                        hintStyle: TextStyle(
                            color: secondaryTextColor.withOpacity(0.5)),
                      ),
                      onChanged: (value) {},
                    ),
                  ),
                  const SizedBox(
                    width: 16.0,
                  ),
                  Expanded(
                    child: TextFormField(
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                        LengthLimitingTextInputFormatter(4),
                      ],
                      decoration: InputDecoration(
                        hintText: 'CVV',
                        hintStyle: TextStyle(
                            color: secondaryTextColor.withOpacity(0.5)),
                      ),
                      onChanged: (value) {},
                    ),
                  ),
                ],
              ),
              Spacer(),
              QButton(
                label: "ADD CARD",
                onPressed: () {},
              ),
              const SizedBox(
                height: 16.0,
              ),
              QOutlineIconButton(
                label: "SCAN CARD",
                icon: Icons.credit_card,
                onPressed: () {},
              ),
              const SizedBox(
                height: 20.0,
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<AddPaymentMethod1View> createState() => AddPaymentMethod1Controller();
}
