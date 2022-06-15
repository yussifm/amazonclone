// ignore_for_file: prefer_const_constructors

import 'package:amazonclone/constants/GlobeColor.dart';
import 'package:amazonclone/routes.dart';
import 'package:amazonclone/screens/Auth/AuthScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Amazon Clone',
      theme: ThemeData(
        scaffoldBackgroundColor: GlobalColors.globalBackgroundColor,
        colorScheme:
            ColorScheme.light(primary: GlobalColors.globalPrimaryColor),
        appBarTheme: AppBarTheme(
            elevation: 0, iconTheme: IconThemeData(color: Colors.black)),
      ),
      onGenerateRoute: (settings) => generateRoutes(routeSettings: settings),
      home: AuthScreen(),
    );
  }
}
