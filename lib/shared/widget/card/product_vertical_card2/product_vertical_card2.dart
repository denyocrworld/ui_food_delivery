import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class ProductVerticalCard2 extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  final EdgeInsetsGeometry? margin;

  ProductVerticalCard2({
    Key? key,
    required this.image,
    required this.title,
    required this.subtitle,
    this.margin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      width: 140,
      margin: margin,
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
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    image,
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
          ),
          const SizedBox(
            height: 10.0,
          ),
          Text(
            title,
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 4.0,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "\$\$",
                style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500),
              ),
              DotContainer(),
              Text(
                subtitle,
                style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500),
              )
            ],
          ),
        ],
      ),
    );
  }
}
