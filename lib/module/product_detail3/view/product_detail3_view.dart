import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hyper_ui/core.dart';

class ProductDetail3View extends StatefulWidget {
  const ProductDetail3View({Key? key}) : super(key: key);

  Widget build(context, ProductDetail3Controller controller) {
    controller.view = this;

    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarBrightness: Brightness.dark),
    );

    return SafeArea(
      top: false,
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Stack(
                  children: [
                    Image.network(
                      "https://i.ibb.co/dG68KJM/photo-1513104890138-7c749659a591-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 12,
                        left: 12,
                      ),
                      child: FloatingActionButton(
                        onPressed: () => Navigator.maybePop(context),
                        backgroundColor: Colors.black45,
                        mini: true,
                        child: Icon(
                          Icons.close,
                          size: 20,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      H2(
                        title: "Cookie Sandwich",
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Shortbread, chocolate turtle cookies, and red velvet. 8 ounces cream cheese, softened.",
                        style: TextStyle(fontSize: 16.0, color: Colors.black54),
                      ),
                      SizedBox(height: 12),
                      QCategoryList(
                        items: [
                          "\$\$",
                          "Masakan Nusantara",
                          "Padang",
                          "Sumatera",
                        ],
                      ),
                      SizedBox(height: 24),
                      QRadioFieldWithHeader(
                        primary: false,
                        radioListPadding: EdgeInsets.zero,
                        label: "Choice of top Cookie",
                        validator: Validator.atLeastOneitem,
                        items: [
                          {
                            "label": "Chocolate Chip",
                            "value": "Chocolate Chip",
                          },
                          {
                            "label": "Cookies and Cream",
                            "value": "Cookies and Cream",
                          },
                          {
                            "label": "Funfetti",
                            "value": "Funfetti",
                          },
                          {
                            "label": "M and M",
                            "value": "M and M",
                          },
                          {
                            "label": "Red Velvet",
                            "value": "Red Velvet",
                          },
                        ],
                        onChanged: (value, label) {},
                      ),
                      QRadioFieldWithHeader(
                        primary: false,
                        padding: EdgeInsets.zero,
                        radioListPadding: EdgeInsets.zero,
                        label: "Choice of Bottom Cookie",
                        validator: Validator.atLeastOneitem,
                        items: [
                          {
                            "label": "Chocolate Chip",
                            "value": "Chocolate Chip",
                          },
                          {
                            "label": "Cookies and Cream",
                            "value": "Cookies and Cream",
                          },
                          {
                            "label": "Funfetti",
                            "value": "Funfetti",
                          },
                          {
                            "label": "M and M",
                            "value": "M and M",
                          },
                          {
                            "label": "Red Velvet",
                            "value": "Red Velvet",
                          },
                        ],
                        onChanged: (value, label) {},
                      ),
                      ListTile(
                        onTap: () {},
                        title: Text("Add Special Instructions"),
                        trailing: Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 18,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              QCounterPicker(
                onChanged: (value) {},
              ),
              QActionButton(
                label: "Add to Order (\$11.98)",
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<ProductDetail3View> createState() => ProductDetail3Controller();
}
