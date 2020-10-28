// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:proyek_addah_attafwagiffar/ui/views/menu_view.dart';

abstract class Routes {
  static const menuViewRoute = '/';
  static const all = {
    menuViewRoute,
  };
}

class Router extends RouterBase {
  @override
  Set<String> get allRoutes => Routes.all;

  @Deprecated('call ExtendedNavigator.ofRouter<Router>() directly')
  static ExtendedNavigatorState get navigator =>
      ExtendedNavigator.ofRouter<Router>();

  @override
  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.menuViewRoute:
        return MaterialPageRoute<dynamic>(
          builder: (context) => MenuView(),
          settings: settings,
        );
      default:
        return unknownRoutePage(settings.name);
    }
  }
}
