import 'package:dashboar_flutter_web/pages/authentication/authentication.dart';
import 'package:dashboar_flutter_web/pages/lent_cars/lent_cars.dart';
import 'package:dashboar_flutter_web/pages/orders/orders.dart';
import 'package:dashboar_flutter_web/pages/overview/overview.dart';
import 'package:dashboar_flutter_web/routing/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case overViewPageRoute:
      return _getPageRoute(const OverViewPage());
    case lentCarsPageRoute:
      return _getPageRoute(const LentCarsPage());
    case ordersPageRoute:
      return _getPageRoute(const OrdersPage());
    case authenticationPageRoute:
      return _getPageRoute(const AuthenticationPage());
    default:
      return _getPageRoute(const OverViewPage());
  }
}

PageRoute _getPageRoute(Widget child) {
  return MaterialPageRoute(builder: (context) => child);
}
