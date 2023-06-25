import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class EnterAddress1View extends StatefulWidget {
  const EnterAddress1View({Key? key}) : super(key: key);

  Widget build(context, EnterAddress1Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(
            Icons.close,
            size: 24.0,
          ),
        ),
        actions: const [],
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              H2(
                title: "Find restaurants near you",
              ),
              const SizedBox(
                height: 20.0,
              ),
              RichText(
                text: TextSpan(
                  text: '',
                  style: DefaultTextStyle.of(context).style,
                  children: <TextSpan>[
                    TextSpan(
                      text:
                          "Please enter your location or allow access to your location to find restaurants near you.",
                      style: TextStyle(
                        fontSize: 14.0,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              QOutlineIconButton(
                label: "Use current location",
                icon: Icons.location_on,
                color: primaryColor,
                onPressed: () {},
              ),
              const SizedBox(
                height: 20.0,
              ),
              QTextField(
                label: "Enter a new address",
                hint: "Enter a new address",
                validator: Validator.required,
                onChanged: (value) {},
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<EnterAddress1View> createState() => EnterAddress1Controller();
}
