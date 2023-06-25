import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class Locations1View extends StatefulWidget {
  const Locations1View({Key? key}) : super(key: key);

  Widget build(context, Locations1Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Search location"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
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
                title: "Recent Address",
                subtitle: "Clear All",
              ),
              const SizedBox(
                height: 20.0,
              ),
              Location1AddressName(
                locationName: "San Fransisco",
              ),
              const SizedBox(
                height: 18.0,
              ),
              Location1AddressName(
                locationName: "San Fransisco City Hall",
              ),
              const SizedBox(
                height: 18.0,
              ),
              Location1AddressName(
                locationName: "San Fransisco Zoo",
              ),
              const SizedBox(
                height: 18.0,
              ),
              Location1AddressName(
                locationName: "San Fransisco, Colorado",
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
