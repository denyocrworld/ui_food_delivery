import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class Locations1View extends StatefulWidget {
  const Locations1View({Key? key}) : super(key: key);

  Widget build(context, Locations1Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Locations1"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Row(
                children: [
                  Icon(Icons.chevron_left),
                  Expanded(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Payment Method",
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 41.0,
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 6.0,
                  horizontal: 12.0,
                ),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(251, 251, 251, 1),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(8.0),
                  ),
                  border: Border.all(
                    width: 1.0,
                    color: Color.fromRGBO(134, 134, 134, 0.1),
                  ),
                ),
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.location_on_rounded,
                        color: Color.fromRGBO(134, 134, 134, 1),
                      ),
                    ),
                    Expanded(
                      child: TextFormField(
                        initialValue: null,
                        decoration: const InputDecoration.collapsed(
                          filled: true,
                          fillColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          hintText: "Search new addresss",
                        ),
                        onFieldSubmitted: (value) {},
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 24.0,
              ),
              H6(
                title: "RECENT ADDRESS",
                subtitle: "CLEAR ALL",
                titleColor: secondaryTextColor,
                subtitleColor: Colors.black,
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                children: [
                  Icon(
                    Icons.location_on_rounded,
                    color: Color.fromRGBO(134, 134, 134, 1),
                  ),
                  const SizedBox(
                    width: 17.0,
                  ),
                  Text(
                    "San Fransisco",
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 18.0,
              ),
              Row(
                children: [
                  Icon(
                    Icons.location_on_rounded,
                    color: Color.fromRGBO(134, 134, 134, 1),
                  ),
                  const SizedBox(
                    width: 17.0,
                  ),
                  Text(
                    "San Fransisco City Hall",
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 18.0,
              ),
              Row(
                children: [
                  Icon(
                    Icons.location_on_rounded,
                    color: Color.fromRGBO(134, 134, 134, 1),
                  ),
                  const SizedBox(
                    width: 17.0,
                  ),
                  Text(
                    "San Fransisco Zoo",
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 18.0,
              ),
              Row(
                children: [
                  Icon(
                    Icons.location_on_rounded,
                    color: Color.fromRGBO(134, 134, 134, 1),
                  ),
                  const SizedBox(
                    width: 17.0,
                  ),
                  Text(
                    "San Fransisco, Colorado",
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<Locations1View> createState() => Locations1Controller();
}
