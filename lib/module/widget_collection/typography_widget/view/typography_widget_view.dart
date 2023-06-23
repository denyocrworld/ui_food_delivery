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
            children: [
              Divider(),
              //#TEMPLATE h1
              H1(title: "Heading1"),
              //#END
              //#TEMPLATE h2
              H2(title: "Heading2"),
              //#END
              //#TEMPLATE h3
              H3(title: "Heading3"),
              //#END
              //#TEMPLATE h4
              H4(title: "Heading4"),
              //#END
              //#TEMPLATE h5
              H5(title: "Heading5"),
              //#END
              //#TEMPLATE h6
              H6(title: "Heading6"),
              //#END
              Divider(),
              //#TEMPLATE hs1
              H1(
                title: "Heading1",
                subtitle: "Subtitle1",
              ),
              //#END
              //#TEMPLATE hs2
              H2(
                title: "Heading2",
                subtitle: "Subtitle2",
              ),
              //#END
              //#TEMPLATE hs3
              H3(
                title: "Heading3",
                subtitle: "Subtitle3",
              ),
              //#END
              //#TEMPLATE hs4
              H4(
                title: "Heading4",
                subtitle: "Subtitle4",
              ),
              //#END
              //#TEMPLATE hs5
              H5(
                title: "Heading5",
                subtitle: "Subtitle5",
              ),
              //#END
              //#TEMPLATE hs6
              H6(
                title: "Heading6",
                subtitle: "Subtitle6",
              ),
              //#END

              Divider(),
              //#TEMPLATE q_category_list
              QCategoryList(
                items: [
                  "Masakan Nusantara",
                  "Padang",
                  "Sumatera",
                ],
              ),
              //#END
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<TypographyWidgetView> createState() => TypographyWidgetController();
}
