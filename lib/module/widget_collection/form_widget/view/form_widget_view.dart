import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/shared/widget/form/radio_with_header/radio_with_header.dart';

class FormWidgetView extends StatefulWidget {
  const FormWidgetView({Key? key}) : super(key: key);

  Widget build(context, FormWidgetController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("FormWidget"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                ),
                onPressed: () => Get.to(HUIWidgetDemoView()),
                child: const Text("HUIWidgetDemoView"),
              ),
              Divider(),
              //#TEMPLATE q_radiofield_with_header
              QRadioFieldWithHeader(
                label: "Gender",
                validator: Validator.atLeastOneitem,
                items: [
                  {
                    "label": "Female",
                    "value": 1,
                  },
                  {
                    "label": "Male",
                    "value": 2,
                  }
                ],
                onChanged: (value, label) {},
              ),
              //#END
              QRadioFieldWithHeader(
                label: "Gender",
                validator: Validator.atLeastOneitem,
                items: [
                  {
                    "label": "XXX",
                    "value": 1,
                  },
                  {
                    "label": "YYY",
                    "value": 2,
                  },
                  {
                    "label": "ZZZ",
                    "value": 2,
                  },
                  {
                    "label": "DDD",
                    "value": 2,
                  }
                ],
                onChanged: (value, label) {},
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<FormWidgetView> createState() => FormWidgetController();
}
