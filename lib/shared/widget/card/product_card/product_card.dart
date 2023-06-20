// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:hyper_ui/shared/widget/shape/dot_center/dot_container.dart';

class ProductCard extends StatefulWidget {
  final String image;
  final String title;
  final String location;
  final double rating;
  final String time;
  final String delivery;
  final EdgeInsetsGeometry? margin;

  ProductCard({
    Key? key,
    required this.image,
    required this.title,
    required this.location,
    required this.rating,
    required this.time,
    required this.delivery,
    this.margin,
  }) : super(key: key);

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      margin: widget.margin,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(
            16.0,
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 160.0,
            width: 200,
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
          ),
          const SizedBox(
            height: 12.0,
          ),
          Text(
            widget.title,
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 2.0,
          ),
          Text(
            widget.location,
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Row(
            children: [
              Container(
                height: 20.0,
                width: 36,
                decoration: const BoxDecoration(
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
              const SizedBox(
                width: 12.0,
              ),
              Text(
                widget.time,
                style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500),
              ),
              DotContainer(),
              Text(
                widget.delivery,
                style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
