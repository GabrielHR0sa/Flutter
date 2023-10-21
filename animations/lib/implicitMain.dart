import 'package:flutter/material.dart';
import 'package:implicit_animation/pages/implicit_animation_page.dart';

main() {
  runApp(MyWidget());
}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: const ImplicitAnimationsPage(),
    );
  }
}
