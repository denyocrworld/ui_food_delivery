import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class AddSocialAccounts1View extends StatefulWidget {
  const AddSocialAccounts1View({Key? key}) : super(key: key);

  Widget build(context, AddSocialAccounts1Controller controller) {
    controller.view = this;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                H3(
                  title: "Add social accounts",
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 24.0,
                ),
                Text(
                  "Add your social accounts for more security. You will go directly to their site.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16.0,
                    color: secondaryTextColor,
                  ),
                ),
                const SizedBox(
                  height: 34.0,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 44,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(57, 89, 152, 1),
                    borderRadius: BorderRadius.all(
                      Radius.circular(8.0),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 8.0,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.all(
                            Radius.circular(4.0),
                          ),
                          child: Image.network(
                            "https://i.ibb.co/GWtZKWM/facebook.png",
                            width: 28.0,
                            height: 28.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(
                          width: 30.0,
                        ),
                        Text(
                          "CONNECT WITH FACEBOOK",
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 44,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(66, 133, 244, 1),
                    borderRadius: BorderRadius.all(
                      Radius.circular(8.0),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 8.0,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.all(
                            Radius.circular(4.0),
                          ),
                          child: Image.network(
                            "https://i.ibb.co/KD66dYg/google.png",
                            width: 28.0,
                            height: 28.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(
                          width: 40.0,
                        ),
                        Text(
                          "CONNECT WITH GOOGLE",
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  State<AddSocialAccounts1View> createState() => AddSocialAccounts1Controller();
}
