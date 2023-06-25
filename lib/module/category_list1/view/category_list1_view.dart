import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class CategoryList1View extends StatefulWidget {
  const CategoryList1View({Key? key}) : super(key: key);

  Widget build(context, CategoryList1Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        title: Text("CategoryList1"),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              QTextField(
                label: "Search",
                validator: Validator.required,
                onChanged: (value) {},
              ),
              H5(
                title: "Top Categories",
              ),
              const SizedBox(
                height: 8.0,
              ),
              GridView.builder(
                padding: EdgeInsets.zero,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 1.0,
                  crossAxisCount: 2,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 15,
                ),
                itemCount: CategoryData.categoryDataList.length,
                shrinkWrap: true,
                physics: ScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  var item = CategoryData.categoryDataList[index];
                  return LayoutBuilder(
                    builder: (context, constraints) {
                      return Stack(
                        children: [
                          Container(
                            width: constraints.maxWidth,
                            height: constraints.maxHeight,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: ColorFiltered(
                                colorFilter: ColorFilter.mode(
                                    Colors.black.withOpacity(0.5),
                                    BlendMode.darken),
                                child: Image.network(
                                  item['image'],
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Center(
                            child: Text(
                              item['title'],
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      );
                    },
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
  State<CategoryList1View> createState() => CategoryList1Controller();
}
