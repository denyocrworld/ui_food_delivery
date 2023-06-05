// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class Productcard extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String category;
  Productcard({
    Key? key,
    required this.imageUrl,
    required this.name,
    required this.category,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  imageUrl,
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
        SizedBox(
          height: 8.0,
        ),
        Text(
          name,
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 6.0,
        ),
        Text(
          "\$\$ . ${category}",
          style: TextStyle(
            fontSize: 12.0,
          ),
        ),
      ],
    );
  }
}

/*
Bloc sebagai State Management
Bloc sebagai Architecture (Bloc Architecture)
  Bloc
  Event
  State
  Widget

Clean Architecture
  Presentation
    Login
      Bloc
      Event
      State
      Widget
      View/Page
    Dashboard
      Controller
      View
    Dashboard
      Model
      ViewModel
      View
  Repository

Layer First
Feature First

MVC (layer first)
  model/
    product.dart
    user.dart
  view/
    product_view.dart
    user_view.dart
  controller
    product_controller.dart
    user_controller.dart


MVC (feature first)
  module
    product
      view
        product_view.dart
      controller
        product_controller.dart
    user
      view
        user_view.dart
      controller
        user_controller.dart
      

BLoc (layer first)
  event
    product_event.dart
    user_event.dart
  bloc
    product_bloc.dart
    user_bloc.dart
  state
    product_state.dart
    user_state.dart
  widget
    product_widget.dart
    user_widget.dart

Bloc (feature first)
  module
    product
      event
      state
      bloc
      widget      
    user
      event
      state
      bloc
      widget

  

*/