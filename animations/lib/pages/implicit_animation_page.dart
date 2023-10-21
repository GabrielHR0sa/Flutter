import 'dart:async';

import 'package:flutter/material.dart';

class ImplicitAnimationsPage extends StatefulWidget {
  const ImplicitAnimationsPage({Key? key}) : super(key: key);

  @override
  State<ImplicitAnimationsPage> createState() => _ImplicitAnimationPageState();
}

class _ImplicitAnimationPageState extends State<ImplicitAnimationsPage> {
  bool isExpanded = false;
  final duration = Duration(seconds: 1);

  //deixa a animação em execução
  late final Timer timer;

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(duration, (timer) {
      setState(() {
        isExpanded = !isExpanded;
      });
    });
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Implicit Animations')),
      body: AnimatedAlign(
        duration: duration,
        alignment: isExpanded ? Alignment.center : Alignment.bottomCenter,
        child: GestureDetector(
          onTap: () {
            setState(() {
              isExpanded = !isExpanded;
            });
          },
          child: AnimatedScale(
            duration: duration,
            scale: isExpanded ? 2 : 1, //muda de tamanho todo o conteúdo
            child: AnimatedContainer(
              duration: duration,
              alignment: Alignment.center,
              color: isExpanded ? Colors.red : Color.fromARGB(255, 7, 65, 255),
              width: 100, //isExpanded ? 200 : 50,
              height: 100, //isExpanded ? 200 : 50,
              child: Text('Flutterando'),
            ),
          ),
        ),
      ),
    );
  }
}
