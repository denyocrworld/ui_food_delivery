import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class TypeLocation1View extends StatefulWidget {
  const TypeLocation1View({Key? key}) : super(key: key);

  Widget build(context, TypeLocation1Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        actions: const [],
        elevation: 0.0,
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(
            Icons.clear,
            size: 24.0,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              const SizedBox(
                height: 24.0,
              ),
              H2(
                title: "Find restaurants near you",
              ),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                "Please enter your location or allow access to\nyour location to find restaurants near your.",
                style: TextStyle(
                  fontSize: 16.0,
                  color: secondaryTextColor,
                ),
              ),
              const SizedBox(
                height: 34.0,
              ),
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Padding(
                    padding: const EdgeInsets.only(left: 16.0, right: 12),
                    child: Icon(Icons.location_on_rounded),
                  ),
                  suffixIcon: Icon(
                    Icons.cancel_rounded,
                    color: Colors.grey.shade400,
                    size: 20,
                  ),
                  hintText: 'Search',
                  hintStyle: TextStyle(
                    color: secondaryTextColor,
                  ),
                ),
                onChanged: (value) {},
              ),
              const SizedBox(
                height: 16.0,
              ),
              ListView.builder(
                shrinkWrap: true,
                itemCount: 3,
                physics: const ScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  final suggestion = controller.suggestionsList[index];

                  return ListTile(
                    contentPadding: EdgeInsets.only(
                      left: 20,
                    ),
                    leading: Transform.rotate(
                      angle: 45 * (47 / 180),
                      child: Icon(
                        Icons.send_rounded,
                        color: secondaryTextColor,
                        size: 20,
                      ),
                    ),
                    title: Text(suggestion['title']),
                    subtitle: Text(
                      suggestion['subtitle'],
                      style: TextStyle(
                        color: secondaryTextColor,
                      ),
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
  State<TypeLocation1View> createState() => TypeLocation1Controller();
}
