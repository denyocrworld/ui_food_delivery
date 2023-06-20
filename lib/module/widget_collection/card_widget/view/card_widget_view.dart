import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import 'package:latlong2/latlong.dart';

class CardWidgetView extends StatefulWidget {
  CardWidgetView({Key? key}) : super(key: key);

  Widget build(context, CardWidgetController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: Text("CardWidget"),
        actions: [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              "q_product_card".snippet,
              //#TEMPLATE q_product_card
              ProductCard(
                image:
                    "https://images.unsplash.com/photo-1484723091739-30a097e8f929?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTZ8fGZvb2R8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=400&q=60",
                title: "Miracle Bread",
                location: "Bogor",
                rating: 4.5,
                time: "25min",
                delivery: "Free",
              ),
              //#END
              "q_product_rating_card".snippet,
              //#TEMPLATE q_product_rating_card
              Container(
                height: 300,
                child: ProductRatingCard(
                  image:
                      "https://images.unsplash.com/photo-1484723091739-30a097e8f929?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTZ8fGZvb2R8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=400&q=60",
                  title: "Miracle Bread",
                  categories: ["Chinese", "Traditional"],
                  rating: 4.5,
                  time: "25min",
                  delivery: "Free",
                ),
              ),
              //#END
              "q_product_vertical_card".snippet,
              //#TEMPLATE q_product_vertical_card
              ProductVerticalCard(
                images: [
                  "https://images.unsplash.com/photo-1613844237701-8f3664fc2eff?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fFNPVVB8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60",
                ],
                title: "Soup Kuning",
                categories: ["Masakan Nusantara", "Padang", "Sumatera"],
                ratingCount: 300,
                delivery: "Free",
                rating: 4.8,
                time: "30min",
              ),
              //#END
              Divider(),
              "q_promotion_card".snippet,
              //#TEMPLATE q_promotion_card
              PromotionCard(
                title: "Free Delivery",
                subtitle:
                    r"You've to order at least $10 for using free delivery for I month.",
              ),
              //#END
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
                    Marker(
                      point: LatLng(
                        -6.1754234,
                        106.828524,
                      ),
                      builder: (context) => const Icon(
                        Icons.pin_drop,
                        color: Colors.green,
                        size: 24,
                      ),
                    ),
                    Marker(
                      point: LatLng(
                        -6.1767234,
                        106.828524,
                      ),
                      builder: (context) => const Icon(
                        Icons.pin_drop,
                        color: Colors.blue,
                        size: 24,
                      ),
                    ),
                    Marker(
                      point: LatLng(
                        -6.1767234,
                        106.827224,
                      ),
                      builder: (context) => const Icon(
                        Icons.pin_drop,
                        color: Colors.orange,
                        size: 24,
                      ),
                    ),
                  ];

                  List<LatLng> polygonPoints =
                      allMarkers.map((marker) => marker.point).toList();

                  LatLngBounds bounds = LatLngBounds.fromPoints(polygonPoints);

                  return SizedBox(
                    height: MediaQuery.of(context).size.height * 0.4,
                    child: FlutterMap(
                      options: MapOptions(
                        bounds: bounds,
                        boundsOptions:
                            FitBoundsOptions(padding: EdgeInsets.all(50.0)),
                        interactiveFlags:
                            InteractiveFlag.all - InteractiveFlag.rotate,
                      ),
                      children: [
                        TileLayer(
                          urlTemplate:
                              'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                          userAgentPackageName:
                              'dev.fleaflet.flutter_map.example',
                        ),
                        PolygonLayer(
                          polygons: [
                            Polygon(
                              points: polygonPoints,
                              color: Colors.black.withOpacity(0.6),
                              isFilled: true,
                            ),
                          ],
                        ),
                        MarkerLayer(
                          markers: allMarkers,
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
  State<CardWidgetView> createState() => CardWidgetController();
}
