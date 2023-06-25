import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class SearchProduct1View extends StatefulWidget {
  const SearchProduct1View({Key? key}) : super(key: key);

  Widget build(context, SearchProduct1Controller controller) {
    controller.view = this;
    List<String> suggestions = [
      'Subway',
      'Burgers',
      'Sandwich',
      'Pizza',
      'Fried Rice with meat',
      'Bakery',
      'Cake',
      'Cookies',
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("SearchProduct1"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(
                    Icons.search,
                    size: 30.0,
                    color: Colors.grey,
                  ),
                  suffixIcon: Padding(
                    padding: const EdgeInsets.only(top: 13.0),
                    child: Text(
                      "Cancel",
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                  border: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  hintText: 'Search',
                  hintStyle: TextStyle(
                    color: secondaryTextColor,
                    fontSize: 24,
                  ),
                ),
                onChanged: (value) {},
              ),
              const SizedBox(
                height: 15.0,
              ),
              const SizedBox(
                height: 34.0,
              ),
              H6(
                title: "RECENT SEARCHES",
                subtitle: "CLEAR ALL",
                titleColor: secondaryTextColor,
                subtitleColor: Colors.black,
              ),
              const SizedBox(
                height: 18.0,
              ),
              ListView.builder(
                shrinkWrap: true,
                itemCount: suggestions.length,
                physics: const ScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  final suggestion = suggestions[index];

                  return ListTile(
                    leading: Icon(
                      Icons.search,
                      color: Colors.black87,
                    ),
                    title: Text(
                      suggestion,
                      style: TextStyle(
                        fontSize: 16.0,
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
  State<SearchProduct1View> createState() => SearchProduct1Controller();
}
