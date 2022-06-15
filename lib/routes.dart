import 'package:amazonclone/screens/Auth/AuthScreen.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoutes({required RouteSettings routeSettings}) {
  switch (routeSettings.name) {
    case AuthScreen.authRouteName:
      return MaterialPageRoute(
          settings: routeSettings, builder: (_) => const AuthScreen());

    default:
      return MaterialPageRoute(
          builder: (_) => const Scaffold(
                  body: Center(
                child: Text("No Route providered"),
              )));
  }
}
