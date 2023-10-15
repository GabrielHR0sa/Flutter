import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      'Hello World',
      textDirection: TextDirection.rtl,
    ));
  }
}
