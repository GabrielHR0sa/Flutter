import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() {
  runApp(MyWidget());
}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //debugShowCheckedModeBanner: false, // retirar o banner de debug
      home: HomePage(),
    );
  }
}

var counter = 1;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Builder(builder: (context) {
        return Stack(
          alignment: Alignment.center,
          children: [
            Container(
              color: Colors.red,
              height: 200,
              width: 200,
            ),
            Container(
              color: Color.fromARGB(255, 108, 244, 54),
              height: 150,
              width: 150,
            ),
            Container(
              color: Color.fromARGB(255, 54, 200, 244),
              height: 100,
              width: 100,
            ),
          ],
        );
      }),
    ));
  }
}
