// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CardVerticalCategory extends StatelessWidget {
  String image;
  String title;
  String category;
  String rating;
  String countRating;
  String time;
  String delivery;

  CardVerticalCategory({
    Key? key,
    required this.image,
    required this.title,
    required this.category,
    required this.rating,
    required this.countRating,
    required this.time,
    required this.delivery,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 282.0,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(
            16.0,
          ),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 185.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(
                  16.0,
                ),
              ),
              image: DecorationImage(
                image: NetworkImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            height: 16.0,
          ),
          Text(
            title,
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 4.0,
          ),
          Text(
            "\$\$ ${category}",
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400),
          ),
          const SizedBox(
            height: 9.0,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                rating,
                style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                width: 9.0,
              ),
              const Icon(
                Icons.star,
                size: 12.0,
                color: Colors.green,
              ),
              const SizedBox(
                width: 9.0,
              ),
              Text(
                "${countRating}+ Ratings",
                style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                width: 9.0,
              ),
              const Icon(
                Icons.timer,
                size: 12.0,
              ),
              const SizedBox(
                width: 9.0,
              ),
              Text(
                time,
                style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                width: 9.0,
              ),
              const Icon(
                Icons.money,
                size: 12.0,
              ),
              const SizedBox(
                width: 9.0,
              ),
              Text(
                delivery,
                style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
