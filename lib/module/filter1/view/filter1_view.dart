import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

import '../widget/circle_option_widget.dart';
import '../widget/option_widget.dart';

class Filter1View extends StatefulWidget {
  const Filter1View({Key? key}) : super(key: key);

  Widget build(context, Filter1Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Filter1"),
        actions: const [],
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            H6(
              title: "CATEGORIES",
              subtitle: "CLEAR ALL",
              titleColor: Colors.black,
              subtitleColor: Colors.black,
            ),
            const SizedBox(
              height: 18.0,
            ),
            Wrap(
              spacing: 12,
              runSpacing: 12,
              children: [
                OptionWidget(
                  text: "ALL",
                ),
                OptionWidget(
                  text: "BRUNCH",
                ),
                OptionWidget(
                  text: "DINNER",
                ),
                OptionWidget(
                  text: "BURGERS",
                  containerColor: primaryColor,
                  textColor: Colors.white,
                ),
                OptionWidget(
                  text: "CHINESE",
                ),
                OptionWidget(
                  text: "PIZZA",
                ),
                OptionWidget(
                  text: "SALADS",
                ),
                OptionWidget(
                  text: "SOUPS",
                ),
                OptionWidget(
                  text: "BREAKFAST",
                ),
              ],
            ),
            const SizedBox(
              height: 30.0,
            ),
            H6(
              title: "DIETARY",
              subtitle: "CLEAR ALL",
              titleColor: Colors.black,
              subtitleColor: Colors.black,
            ),
            const SizedBox(
              height: 18.0,
            ),
            Wrap(
              spacing: 12,
              runSpacing: 12,
              children: [
                OptionWidget(
                  text: "ANY",
                  containerColor: primaryColor,
                  textColor: Colors.white,
                ),
                OptionWidget(
                  text: "VEGETARIAN",
                ),
                OptionWidget(
                  text: "VEGAN",
                ),
                OptionWidget(
                  text: "GLUTEN-FREE",
                ),
              ],
            ),
            const SizedBox(
              height: 30.0,
            ),
            H6(
              title: "PRICE RANGE",
              subtitle: "CLEAR ALL",
              titleColor: Colors.black,
              subtitleColor: Colors.black,
            ),
            const SizedBox(
              height: 18.0,
            ),
            Container(
              height: 70,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                physics: const ScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  String dollarString = '\$' * (index + 1);

                  return CircleOptionWidget(
                    dollarString: dollarString,
                    textColor: index == 1 ? Colors.white : Colors.black87,
                    containerColor: index == 1
                        ? primaryColor
                        : Color.fromRGBO(241, 241, 241, 1),
                  );
                },
              ),
            ),
            Spacer(),
            QButton(
              label: "APPLY FILTERS",
              onPressed: () {},
            ),
            const SizedBox(
              height: 20.0,
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<Filter1View> createState() => Filter1Controller();
}
