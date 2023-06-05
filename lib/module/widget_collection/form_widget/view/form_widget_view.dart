import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

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
              const SizedBox(
                height: 12.0,
              ),
              QCategoryPicker(
                label: "Category",
                items: [
                  {
                    "label": "Main Course",
                    "value": "Main Course",
                  },
                  {
                    "label": "Drink",
                    "value": "Drink",
                  },
                  {
                    "label": "Snack",
                    "value": "Snack",
                  },
                  {
                    "label": "Dessert",
                    "value": "Dessert",
                  }
                ],
                validator: Validator.required,
                onChanged: (index, label, value, item) {},
              ),
              QDropdownField(
                label: "Roles",
                validator: Validator.required,
                items: [
                  {
                    "label": "Admin",
                    "value": 1,
                  },
                  {
                    "label": "Staff",
                    "value": 2,
                  }
                ],
                onChanged: (value, label) {},
              ),
              QWrapCategoryPicker(
                label: "Category",
                items: [
                  {
                    "label": "Main Course",
                    "value": "Main Course",
                  },
                  {
                    "label": "Drink",
                    "value": "Drink",
                  },
                  {
                    "label": "Snack",
                    "value": "Snack",
                  },
                  {
                    "label": "Dessert",
                    "value": "Dessert",
                  },
                  {
                    "label": "Soft Drink",
                    "value": "Soft Drink",
                  },
                  {
                    "label": "Coffee",
                    "value": "Coffee",
                  }
                ],
                validator: Validator.required,
                onChanged: (index, label, value, item) {},
              ),
              QTextField(
                label: "Name",
                hint: "Name",
                validator: Validator.required,
                value: "John Doe",
                onChanged: (value) {},
              ),
              QImagePicker(
                label: "Photo",
                hint: "Your photo",
                validator: Validator.required,
                value: null,
                onChanged: (value) {},
              ),
              QCheckField(
                label: "Club",
                hint: "Your favorite football club",
                validator: Validator.atLeastOneitem,
                items: [
                  {
                    "label": "Persib",
                    "value": 101,
                    "checked": false,
                  },
                  {
                    "label": "Persikabo",
                    "value": 102,
                    "checked": true,
                  }
                ],
                onChanged: (values, ids) {},
              ),
              QRadioField(
                label: "Gender",
                hint: "Gender",
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
              QLocationPicker(
                id: "location",
                label: "Location",
                latitude: -6.218481065235333,
                longitude: 106.80254435779423,
                onChanged: (latitude, longitude) {},
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
