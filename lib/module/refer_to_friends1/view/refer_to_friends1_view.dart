import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class ReferToFriends1View extends StatefulWidget {
  const ReferToFriends1View({Key? key}) : super(key: key);

  Widget build(context, ReferToFriends1Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: Text("Refer to Friends"),
        elevation: 0.0,
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Image.network(
              "https://i.ibb.co/GJkh0KD/greengift-illustration-removebg-preview.png",
              width: 120.0,
              height: 120.0,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 30.0,
            ),
            Text(
              "Refer a Friend, Get \$10",
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 24.0,
            ),
            Text(
              "Get \$10 in credits when someone sign up using your refer link.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16.0,
                color: secondaryTextColor,
              ),
            ),
            const SizedBox(
              height: 40.0,
            ),
            Container(
              width: 245,
              height: 50,
              decoration: BoxDecoration(
                color: Color.fromRGBO(248, 248, 248, 1),
                borderRadius: BorderRadius.all(
                  Radius.circular(6.0),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 14.0,
                    ),
                    Image.network(
                      "https://i.ibb.co/d76LdxQ/share-icon-removebg-preview.png",
                      width: 20.0,
                      height: 20.0,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(
                      width: 12.0,
                    ),
                    Text(
                      "https://ui8.net/76738b",
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Spacer(),
            QButton(
              label: "EMAIL",
              onPressed: () {},
            ),
            const SizedBox(
              height: 20.0,
            ),
            QOutlineButton(
              label: "OTHERS",
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
  State<ReferToFriends1View> createState() => ReferToFriends1Controller();
}
