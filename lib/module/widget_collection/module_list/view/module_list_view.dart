import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class ModuleListView extends StatefulWidget {
  ModuleListView({Key? key}) : super(key: key);

  Widget build(context, ModuleListController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: Text("ModuleList"),
        actions: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundColor: primaryColor.withOpacity(0.2),
              child: Text(
                "${controller.menuList.length}",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: primaryColor,
                ),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        controller: ScrollController(),
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 6.0,
                  horizontal: 12.0,
                ),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20.0),
                  ),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.search,
                        color: Colors.grey[500],
                      ),
                    ),
                    Expanded(
                      child: TextFormField(
                        initialValue: null,
                        decoration: InputDecoration.collapsed(
                          filled: true,
                          fillColor: Colors.transparent,
                          hintText: "What are you craving?",
                          hintStyle: TextStyle(
                            color: Colors.grey[500],
                          ),
                          hoverColor: Colors.transparent,
                        ),
                        // onFieldSubmitted: (value) {
                        //   controller.updateSearch(value);
                        // },
                        onChanged: (value) {
                          controller.updateSearch(value);
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Builder(builder: (context) {
                var items = controller.menuList;

                if (controller.search.isNotEmpty) {
                  items = controller.menuList
                      .where((i) => i["label"]
                          .toString()
                          .toLowerCase()
                          .contains(controller.search))
                      .toList();
                }

                return GridView.builder(
                  padding: EdgeInsets.all(20.0),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 1.0,
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                  ),
                  itemCount: items.length,
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    var item = items[index];

                    return InkWell(
                      onTap: () => Get.to(item["view"]),
                      child: Container(
                        decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.all(
                            Radius.circular(12.0),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "#${index + 1}",
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              height: 12.0,
                            ),
                            Text(
                              item["label"],
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              }),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<ModuleListView> createState() => ModuleListController();
}
