import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class DashboardWidgetView extends StatefulWidget {
  DashboardWidgetView({Key? key}) : super(key: key);

  Widget build(context, DashboardWidgetController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: Text("WidgetCollection"),
        actions: [],
      ),
      body: SingleChildScrollView(
        controller: ScrollController(),
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              GridView.builder(
                padding: EdgeInsets.all(20.0),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 1.0,
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                ),
                itemCount: controller.menuList.length,
                shrinkWrap: true,
                physics: ScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  var item = controller.menuList[index];
                  return InkWell(
                    onTap: () => Get.to(item["view"]),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.all(
                          Radius.circular(12.0),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            item["label"],
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      // bottomNavigationBar: Container(
      //   padding: EdgeInsets.all(12.0),
      //   height: 66.0,
      //   child: ElevatedButton(
      //     style: ElevatedButton.styleFrom(
      //       backgroundColor: successColor,
      //     ),
      //     onPressed: () {},
      //     child: Text("Save"),
      //   ),
      // ),
      bottomNavigationBar: QActionButton(
        label: "Checkout",
        onPressed: () {},
      ),
    );
  }

  @override
  State<DashboardWidgetView> createState() => DashboardWidgetController();
}
