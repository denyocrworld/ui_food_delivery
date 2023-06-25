import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class AccountSetting1View extends StatefulWidget {
  const AccountSetting1View({Key? key}) : super(key: key);

  Widget build(context, AccountSetting1Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Account Settings",
        ),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Update your settings like notifications, payments, profile edit etc.",
                style: TextStyle(
                  fontSize: 16.0,
                  color: secondaryTextColor,
                ),
              ),
              const SizedBox(
                height: 24.0,
              ),
              ListView.builder(
                itemCount: AccountData.accountDataList.length,
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  var item = AccountData.accountDataList[index];
                  bool value = true;

                  return Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            item['leading_icon'],
                            color: index == 9 ? primaryColor : Colors.grey[900],
                          ),
                          const SizedBox(
                            width: 20.0,
                          ),
                          if (item['subtitle'] == null)
                            Text(
                              item['title'],
                              style: TextStyle(
                                fontSize: 16.0,
                              ),
                            ),
                          if (item['subtitle'] != null)
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  item['title'],
                                  style: TextStyle(
                                    fontSize: 16.0,
                                  ),
                                ),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                Text(
                                  item['subtitle'],
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    color: secondaryTextColor,
                                  ),
                                ),
                              ],
                            ),
                          Spacer(),
                          Icon(
                            item['action_icon'],
                          ),
                          if (item['action_icon'] == null)
                            CupertinoSwitch(
                              value: value,
                              onChanged: (value) {},
                            ),
                        ],
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      if (index == 5)
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 20,
                            bottom: 15,
                          ),
                          child: Row(
                            children: [
                              Text(
                                "NOTIFICATIONS",
                                style: TextStyle(
                                  fontSize: 16.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      if (index == 8)
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 20,
                            bottom: 15,
                          ),
                          child: Row(
                            children: [
                              Text(
                                "MORE",
                                style: TextStyle(
                                  fontSize: 16.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<AccountSetting1View> createState() => AccountSetting1Controller();
}
