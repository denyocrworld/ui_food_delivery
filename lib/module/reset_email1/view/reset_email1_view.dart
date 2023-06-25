import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class ResetEmail1View extends StatefulWidget {
  const ResetEmail1View({Key? key}) : super(key: key);

  Widget build(context, ResetEmail1Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Reset Email"),
        centerTitle: true,
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
                title: "Reset Email",
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
                          "We have sent a instructions email to demo@gmail.com. ",
                      style: TextStyle(
                        fontSize: 14.0,
                      ),
                    ),
                    TextSpan(
                      text: "Having problem?",
                      style: TextStyle(
                        fontSize: 14.0,
                        color: primaryColor,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              QButton(
                label: "Send Again",
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<ResetEmail1View> createState() => ResetEmail1Controller();
}
