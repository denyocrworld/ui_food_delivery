import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/module/dashboard3/widget/dashboard_horizontal_list.dart';
import '../../../shared/widget/uncategorized/q_location_text_header/q_location_text_header.dart';

class Dashboard3View extends StatefulWidget {
  Dashboard3View({Key? key}) : super(key: key);

  Widget build(context, Dashboard3Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        leadingWidth: 0.0,
        title: QLocationHeaderText(),
        actions: [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              QCarouselBottomRightSlider(
                height: 160,
                images: [
                  "https://images.unsplash.com/photo-1555939594-58d7cb561ad1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
                  "https://images.unsplash.com/photo-1540189549336-e6e99c3679fe?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
                  "https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=781&q=80",
                  "https://images.unsplash.com/photo-1565958011703-44f9829ba187?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=765&q=80",
                  "https://images.unsplash.com/photo-1482049016688-2d3e1b311543?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=710&q=80",
                ],
                borderRadius: BorderRadius.all(
                  Radius.circular(12.0),
                ),
              ),
              const SizedBox(
                height: 12.0,
              ),
              H3(
                title: "Favorite Products",
                subtitle: "See all",
              ),
              /*
              Component
              User Control
              */
              const SizedBox(
                height: 12.0,
              ),
              DashboardHorizontalList(),
              H3(
                title: "Type of Foods",
                subtitle: "See all",
              ),
              SizedBox(
                height: 12.0,
              ),
              SingleChildScrollView(
                controller: ScrollController(),
                scrollDirection: Axis.horizontal,
                clipBehavior: Clip.none,
                child: Row(
                  children:
                      List.generate(controller.categories.length, (index) {
                    var item = controller.categories[index];
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 64.0,
                          width: 64.0,
                          margin: EdgeInsets.only(
                            right: 12.0,
                          ),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                item["image"],
                              ),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(
                                8.0,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 2.0,
                        ),
                        Text(
                          "${item["label"]} (${item["count"]})",
                          style: TextStyle(
                            fontSize: 10.0,
                          ),
                        ),
                      ],
                    );
                  }),
                ),
              ),
              const SizedBox(
                height: 12.0,
              ),
              H3(
                title: "New Restaurants",
                subtitle: "See all",
              ),
              SizedBox(
                height: 12.0,
              ),
              SingleChildScrollView(
                controller: ScrollController(),
                scrollDirection: Axis.horizontal,
                clipBehavior: Clip.none,
                child: Row(
                  children: List.generate(10, (index) {
                    return ProductCard(
                      image:
                          "https://images.unsplash.com/photo-1484723091739-30a097e8f929?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTZ8fGZvb2R8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=400&q=60",
                      title: "Miracle Bread",
                      location: "Bogor",
                      rating: 4.5,
                      time: "25min",
                      delivery: "Free",
                      margin: EdgeInsets.only(
                        right: 20.0,
                      ),
                    );
                  }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<Dashboard3View> createState() => Dashboard3Controller();
}
