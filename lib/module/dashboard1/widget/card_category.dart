// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CardCategory extends StatefulWidget {
  String image;
  String title;
  String location;
  String rating;
  String time;
  String delivery;
  CardCategory({
    Key? key,
    required this.image,
    required this.title,
    required this.location,
    required this.rating,
    required this.time,
    required this.delivery,
  }) : super(key: key);

  @override
  State<CardCategory> createState() => _CardCategoryState();
}

class _CardCategoryState extends State<CardCategory> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 254.0,
      width: 200,
      padding: const EdgeInsets.only(
        left: 14.0,
      ),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(
            16.0,
          ),
        ),
      ),
      child: Column(
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
            height: 14.0,
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
            crossAxisAlignment: CrossAxisAlignment.start,
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
                    widget.rating,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12.0,
                        fontWeight: FontWeight.w600),
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
              const SizedBox(
                width: 12.0,
              ),
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
