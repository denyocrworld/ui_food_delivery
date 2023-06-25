import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

import '../../../../shared/widget/typography/category_list/category_list.dart';

class TypographyWidgetView extends StatefulWidget {
  TypographyWidgetView({Key? key}) : super(key: key);

  Widget build(context, TypographyWidgetController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: Text("TypographyWidget"),
        actions: [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Divider(),
              "h1".snippet,
              //#TEMPLATE h1
              H1(title: "Heading1"),
              //#END
              "h2".snippet,
              //#TEMPLATE h2
              H2(title: "Heading2"),
              //#END
              "h3".snippet,
              //#TEMPLATE h3
              H3(title: "Heading3"),
              //#END
              "h4".snippet,
              //#TEMPLATE h4
              H4(title: "Heading4"),
              //#END
              "h5".snippet,
              //#TEMPLATE h5
              H5(title: "Heading5"),
              //#END
              "h6".snippet,
              //#TEMPLATE h6
              H6(title: "Heading6"),
              //#END
              Divider(),
              "hs1".snippet,
              //#TEMPLATE hs1
              H1(
                title: "Heading1",
                subtitle: "Subtitle1",
              ),
              //#END
              "hs2".snippet,
              //#TEMPLATE hs2
              H2(
                title: "Heading2",
                subtitle: "Subtitle2",
              ),
              //#END
              "hs3".snippet,
              //#TEMPLATE hs3
              H3(
                title: "Heading3",
                subtitle: "Subtitle3",
              ),
              //#END
              "hs4".snippet,
              //#TEMPLATE hs4
              H4(
                title: "Heading4",
                subtitle: "Subtitle4",
              ),
              //#END
              "hs5".snippet,
              //#TEMPLATE hs5
              H5(
                title: "Heading5",
                subtitle: "Subtitle5",
              ),
              //#END
              "hs6".snippet,
              //#TEMPLATE hs6
              H6(
                title: "Heading6",
                subtitle: "Subtitle6",
              ),
              //#END

              Divider(),
              "q_category_list".snippet,
              //#TEMPLATE q_category_list
              QCategoryList(
                items: [
                  "Masakan Nusantara",
                  "Padang",
                  "Sumatera",
                ],
              ),
              //#END
              const SizedBox(
                height: 50.0,
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<TypographyWidgetView> createState() => TypographyWidgetController();
}
