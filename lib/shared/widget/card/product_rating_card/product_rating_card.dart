import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../shape/dot_center/dot_container.dart';

class ProductRatingCard extends StatefulWidget {
  final String image;
  final String title;
  final List<String> categories;
  final double rating;
  final String time;
  final String delivery;
  final EdgeInsetsGeometry? margin;

  ProductRatingCard({
    Key? key,
    required this.image,
    required this.title,
    required this.rating,
    required this.time,
    required this.delivery,
    required this.categories,
    this.margin,
  }) : super(key: key);

  @override
  State<ProductRatingCard> createState() => _ProductRatingCardState();
}

class _ProductRatingCardState extends State<ProductRatingCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      margin: widget.margin,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(
            16.0,
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    widget.image,
                  ),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    16.0,
                  ),
                ),
              ),
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.2),
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    left: 10,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(
                              MdiIcons.clock,
                              size: 16.0,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 6.0,
                            ),
                            Text(
                              widget.time,
                              style: TextStyle(
                                fontSize: 12.0,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 4.0,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.delivery_dining,
                              size: 16.0,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 6.0,
                            ),
                            Text(
                              widget.delivery,
                              style: TextStyle(
                                fontSize: 12.0,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    right: 10,
                    bottom: 10,
                    child: Container(
                      height: 20.0,
                      width: 36,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            6.0,
                          ),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "${widget.rating}",
                          style: TextStyle(color: Colors.white, fontSize: 12.0, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 6.0,
          ),
          Text(
            widget.title,
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 4.0,
          ),
          SingleChildScrollView(
            controller: ScrollController(),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(widget.categories.length, (index) {
                var category = widget.categories[index];
                return Row(
                  children: [
                    if (index > 0) DotContainer(),
                    Text(
                      "${category}",
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
