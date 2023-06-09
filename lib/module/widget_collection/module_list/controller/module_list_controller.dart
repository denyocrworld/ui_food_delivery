import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class ModuleListController extends State<ModuleListView>
    implements MvcController {
  static late ModuleListController instance;
  late ModuleListView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  List menuList = [
    {
      "label": "Intro1View",
      "view": Intro1View(),
    },
    {
      "label": "Login1View ",
      "view": Login1View(),
    },
    {
      "label": "ForgotPassword1View",
      "view": ForgotPassword1View(),
    },
    {
      "label": "Dashboard1View",
      "view": Dashboard1View(),
    },
    {
      "label": "Dashboard2View",
      "view": Dashboard2View(),
    },
    {
      "label": "Dashboard3View",
      "view": Dashboard3View(),
    },
    {
      "label": "Dashboard4View",
      "view": Dashboard4View(),
    },
    {
      "label": "Dashboard4View",
      "view": RestaurantList1View(),
    },
    {
      "label": "Dashboard4View",
      "view": RestaurantList2View(),
    },
    {
      "label": "Dashboard4View",
      "view": ProductDetail1View(),
    },
    {
      "label": "Dashboard4View",
      "view": ProductDetail2View(),
    },
    {
      "label": "Dashboard4View",
      "view": ProductDetail3View(),
    },
    {
      "label": "Dashboard4View",
      "view": OrderDetail1View(),
    },
    {
      "label": "Dashboard4View",
      "view": AddPaymentMethod1View(),
    },
    {
      "label": "Dashboard4View",
      "view": Filter1View(),
    },
    {
      "label": "Dashboard4View",
      "view": ProductList1View(),
    },
    {
      "label": "Dashboard4View",
      "view": CategoryList1View(),
    },
    {
      "label": "Dashboard4View",
      "view": SearchProduct1View(),
    },
    {
      "label": "Dashboard4View",
      "view": SearchResult1View(),
    },
    {
      "label": "Dashboard4View",
      "view": SearchResult2View(),
    },
    {
      "label": "Dashboard4View",
      "view": OrderList1View(),
    },
    {
      "label": "Dashboard4View",
      "view": OrderDetail1View(),
    },
    {
      "label": "Dashboard4View",
      "view": DialogView(),
    },
    {
      "label": "Dashboard4View",
      "view": AccountSetting1View(),
    },
    {
      "label": "Dashboard4View",
      "view": ProfileSetting1View(),
    },
    {
      "label": "Dashboard4View",
      "view": ChangePassword1View(),
    },
    {
      "label": "Dashboard4View",
      "view": PaymentMethod1View(),
    },
    {
      "label": "Dashboard4View",
      "view": CardList1View(),
    },
    {
      "label": "Dashboard4View",
      "view": Locations1View(),
    },
    {
      "label": "Dashboard4View",
      "view": AddSocialAccounts1View(),
    },
    {
      "label": "Dashboard4View",
      "view": ReferToFriends1View(),
    },
  ];
}
