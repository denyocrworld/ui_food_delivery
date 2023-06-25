import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import 'package:latlong2/latlong.dart';

class RestaurantList2View extends StatefulWidget {
  const RestaurantList2View({Key? key}) : super(key: key);

  Widget build(context, RestaurantList2Controller controller) {
    controller.view = this;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 3.3,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        16.0,
                      ),
                    ),
                  ),
                  child: Stack(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height / 2,
                        decoration: const BoxDecoration(),
                        child: Stack(
                          children: [
                            Builder(
                              builder: (context) {
                                List<Marker> allMarkers = [
                                  Marker(
                                    point: LatLng(
                                      -6.1754234,
                                      106.827224,
                                    ),
                                    builder: (context) => const Icon(
                                      Icons.pin_drop,
                                      color: Colors.red,
                                      size: 24,
                                    ),
                                  ),
                                ];
                                return SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.4,
                                  child: FlutterMap(
                                    options: MapOptions(
                                      center: LatLng(
                                        -6.1754234,
                                        106.827224,
                                      ),
                                      zoom: 16,
                                      interactiveFlags: InteractiveFlag.all -
                                          InteractiveFlag.rotate,
                                    ),
                                    children: [
                                      TileLayer(
                                        urlTemplate:
                                            'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                                        userAgentPackageName:
                                            'dev.fleaflet.flutter_map.example',
                                      ),
                                      MarkerLayer(
                                        markers: allMarkers,
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                            Positioned(
                              top: 54,
                              left: 0,
                              right: 0,
                              child: Container(
                                height: 50.0,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(
                                      16.0,
                                    ),
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    const SizedBox(
                                      width: 20.0,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                      child: CircleAvatar(
                                        backgroundColor: Colors.white,
                                        radius: 28.0,
                                        child: Icon(
                                          Icons.arrow_back,
                                          color: Colors.black,
                                          size: 28.0,
                                        ),
                                      ),
                                    ),
                                    Spacer(),
                                    CircleAvatar(
                                      backgroundColor: Colors.white,
                                      radius: 28.0,
                                      child: Icon(
                                        Icons.search,
                                        color: Colors.black,
                                        size: 28.0,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 20.0,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        top: 280,
                        left: 0,
                        right: 0,
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(16.0),
                            ),
                          ),
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 36.0,
                              ),
                              H3(
                                title: "Top Pick Restaurants",
                              ),
                              const SizedBox(
                                height: 16.0,
                              ),
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                controller: ScrollController(),
                                child: Row(
                                  children: List.generate(
                                    controller.category.length,
                                    (index) {
                                      var item = controller.category[index];
                                      bool selected = index == 0;

                                      return Container(
                                        height: 38,
                                        width: 101,
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 12.0,
                                          vertical: 8.0,
                                        ),
                                        margin:
                                            const EdgeInsets.only(right: 10.0),
                                        decoration: BoxDecoration(
                                          color: selected
                                              ? primaryColor.withOpacity(0.1)
                                              : Colors.grey.withOpacity(0.1),
                                          borderRadius: const BorderRadius.all(
                                            Radius.circular(16.0),
                                          ),
                                        ),
                                        child: Center(
                                          child: Text(
                                            "${item}",
                                            style: TextStyle(
                                              color: selected
                                                  ? primaryColor
                                                  : Colors.grey,
                                              fontSize: 12.0,
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 49.0,
                              ),
                              GridView.builder(
                                padding: EdgeInsets.zero,
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                  childAspectRatio: 1 / 2,
                                  crossAxisCount: 2,
                                  mainAxisSpacing: 15,
                                  crossAxisSpacing: 15,
                                ),
                                itemCount: controller.products.length,
                                shrinkWrap: true,
                                physics: ScrollPhysics(),
                                itemBuilder: (BuildContext context, int index) {
                                  var item = controller.products[index];
                                  return Container(
                                    child: ProductRatingCard(
                                      image: item["photo"],
                                      title: item["product_name"],
                                      categories: ["Chinese", "Traditional"],
                                      rating: 4.5,
                                      time: "25min",
                                      delivery: "Free",
                                    ),
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
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
  State<RestaurantList2View> createState() => RestaurantList2Controller();
}
