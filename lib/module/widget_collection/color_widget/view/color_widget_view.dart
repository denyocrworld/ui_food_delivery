import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class ColorWidgetView extends StatefulWidget {
  ColorWidgetView({Key? key}) : super(key: key);

  Widget build(context, ColorWidgetController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: Text("ColorWidget"),
        actions: [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: [
              GridView.builder(
                padding: EdgeInsets.zero,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 1.0,
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemCount: controller.colors.length,
                shrinkWrap: true,
                physics: ScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  var item = controller.colors[index];
                  return Container(
                    decoration: BoxDecoration(
                      color: item["color"],
                      border: Border.all(
                        width: 1.0,
                        color: Colors.grey[700]!,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(12.0),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Card(
                          color: Colors.black,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "${item["label"]}",
                              style: TextStyle(
                                fontSize: 10.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
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
  State<ColorWidgetView> createState() => ColorWidgetController();
}
