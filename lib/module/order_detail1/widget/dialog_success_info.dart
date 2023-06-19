import 'package:flutter_animate/flutter_animate.dart';
import 'package:hyper_ui/core.dart';
import 'package:flutter/material.dart';

Future showCheckoutSuccessDialog() async {
  await showDialog<void>(
    context: globalContext,
    barrierDismissible: true,
    builder: (BuildContext context) {
      return Stack(
        children: [
          Container(
            color: Colors.black.withOpacity(0.4),
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20.0),
                  ),
                  color: Colors.white,
                ),
                child: SizedBox(
                  height: 220,
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: Wrap(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(20.0),
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(
                              height: 20.0,
                            ),
                            const Text(
                              "You Place the Order Successfully",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            Text(
                              "You place the order successfully. You will get your food within 25 minutes. Enjoy your food. :)",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 14.0,
                                color: secondaryTextColor,
                              ),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Text(
                                "KEEP BROWSING",
                                style: TextStyle(
                                  fontSize: 12.0,
                                  color: primaryColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ).animate().fade().shake(),
            ),
          ),
          Column(
            children: [
              const SizedBox(
                height: 230.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: primaryColor,
                    child: Icon(
                      Icons.check,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      );
    },
  );
}
