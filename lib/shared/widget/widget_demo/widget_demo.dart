// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class HUIWidgetDemoView extends StatelessWidget {
  const HUIWidgetDemoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Widget Demo"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              QImagePicker(
                label: "Photo",
                validator: Validator.required,
                value: null,
                onChanged: (value) {},
              ),
              QLocationPicker(
                id: "location",
                label: "Location",
                latitude: -6.218481065235333,
                longitude: 106.80254435779423,
                onChanged: (latitude, longitude) {},
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
              QRatingField(
                label: "Rating",
                value: 3,
                validator: Validator.required,
                onChanged: (value) {},
              ),
              QAutoComplete(
                label: "Favorite employee",
                hint: "Your favorite Employee",
                validator: Validator.required,
                items: [
                  {
                    "label": "Jackie Roo",
                    "value": "101",
                    "info": "Hacker",
                  },
                  {
                    "label": "Dan Milton",
                    "value": "102",
                    "info": "UI/UX Designer",
                  },
                  {
                    "label": "Ryper Roo",
                    "value": "103",
                    "info": "Android Developer",
                  }
                ],
                onChanged: (value, label) {},
              ),
              QTextField(
                label: "Name",
                hint: "Name",
                validator: Validator.required,
                // value: "John Doe",
                onChanged: (value) {},
              ),
              QNumberField(
                label: "Age",
                hint: "Your age's",
                validator: Validator.required,
                // value: "24",
                onChanged: (value) {},
              ),
              QDatePicker(
                label: "Birth date",
                hint: "Your birth date",
                validator: Validator.required,
                onChanged: (value) {
                  print("value: $value");
                },
              ),
              QTimePicker(
                label: "Working hour",
                hint: "Your working hour",
                validator: Validator.required,
                onChanged: (value) {
                  print("value: $value");
                },
              ),
              QMemoField(
                label: "Address",
                hint: "Your addresses",
                validator: Validator.required,
                value: "Kamboja street 16, Bogor, West Java, Indonesia",
                onChanged: (value) {},
              ),
              QCheckField(
                label: "Club",
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
              QSwitch(
                label: "Member",
                validator: Validator.atLeastOneitem,
                items: [
                  {
                    "label": "Private",
                    "value": 1,
                  },
                  {
                    "label": "Premium",
                    "value": 2,
                  }
                ],
                onChanged: (values, ids) {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
