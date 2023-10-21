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
      child: Builder(builder: (context) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround, //eixo y
          crossAxisAlignment: CrossAxisAlignment.center, //eixo x
          children: [
            Container(
              color: Colors.red,
              height: 100,
              width: 100,
            ),
            Container(
              color: Color.fromARGB(255, 0, 17, 255),
              height: 100,
              width: 100,
            ),
            Container(
              color: Color.fromARGB(255, 169, 23, 236),
              height: 100,
              width: 100,
            ),
            Container(
              color: Color.fromARGB(255, 0, 0, 0),
              height: 100,
              width: 100,
            ),
          ],
        );
      }),
    ));
  }
}
