import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class ColorWidgetController extends State<ColorWidgetView>
    implements MvcController {
  static late ColorWidgetController instance;
  late ColorWidgetView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  List<Map> colors = [
    {
      "color": primaryColor,
      "label": "primaryColor",
    },
    {
      "color": secondaryColor,
      "label": "secondaryColor",
    },
    {
      "color": disabledColor,
      "label": "disabledColor",
    },
    {
      "color": textColor,
      "label": "textColor",
    },
    {
      "color": secondaryTextColor,
      "label": "secondaryTextColor",
    },
    {
      "color": scaffoldBackgroundColor,
      "label": "scaffoldBackgroundColor",
    }
  ];
}
