import 'package:flutter/material.dart';
import 'package:hello_world/homeController.dart';
import 'package:hello_world/homePage.dart';
import 'package:hello_world/main.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeController(
        child: HomePage(),
      ),
    );
  }
}
