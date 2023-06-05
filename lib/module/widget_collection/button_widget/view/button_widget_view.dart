import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class ButtonWidgetView extends StatefulWidget {
  ButtonWidgetView({Key? key}) : super(key: key);

  Widget build(context, ButtonWidgetController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: Text("ButtonWidget"),
        actions: [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "text",
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              "q_button".snippet,
              //#TEMPLATE q_button
              QButton(
                label: "Checkout",
                onPressed: () {},
              ),
              //#END
              "q_button_outline".snippet,
              //#TEMPLATE q_button_outline
              QOutlineButton(
                label: "Checkout",
                onPressed: () {},
              ),
              //#END
              "q_button_outline_success".snippet,
              //#TEMPLATE q_button_outline_success
              QOutlineSuccessButton(
                label: "Checkout",
                onPressed: () {},
              ),
              //#END
              "q_button_outline_danger".snippet,
              //#TEMPLATE q_button_outline_danger
              QOutlineDangerButton(
                label: "Checkout",
                onPressed: () {},
              ),
              //#END
              "q_button_outline_icon".snippet,
              //#TEMPLATE q_button_outline_icon
              QOutlineIconButton(
                label: "Checkout",
                icon: Icons.wallet,
                onPressed: () {},
              ),
              //#END
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Bottom Button",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              "q_action_button_with_options".snippet,
              //#TEMPLATE q_action_button_with_options
              QActionButtonWithOptions(
                label: "Checkout",
                icon: Icons.share,
                onPressed: () {},
                onOptionPressed: () {},
              ),
              //#END
              "q_action_button".snippet,
              //#TEMPLATE q_action_button
              QActionButton(
                label: "Checkout",
                onPressed: () {},
              ),
              //#END
            ],
          ),
        ),
      ),
      bottomNavigationBar: QActionButton(
        label: "Checkout",
        onPressed: () {},
      ),
    );
  }

  State<ButtonWidgetView> createState() => ButtonWidgetController();
}
