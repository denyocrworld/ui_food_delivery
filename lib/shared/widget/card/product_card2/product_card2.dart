import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class ProductCard2 extends StatelessWidget {
  final String image;
  final String title;
  final String category;
  ProductCard2({
    Key? key,
    required this.image,
    required this.title,
    required this.category,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180.0,
      width: 160,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(
            8.0,
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
                    8.0,
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
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 16.0,
            ),
          ),
          const SizedBox(
            height: 4.0,
          ),
          Row(
            children: [
              Text(
                "\$\$",
                style: TextStyle(
                  fontSize: 14.0,
                ),
              ),
              DotContainer(),
              Text(
                category,
                style: TextStyle(
                  fontSize: 14.0,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
