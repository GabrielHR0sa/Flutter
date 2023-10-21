import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ControlledAnimationPage extends StatefulWidget {
  const ControlledAnimationPage({super.key});

  @override
  State<ControlledAnimationPage> createState() =>
      _ControlledAnimationPageState();
}

class _ControlledAnimationPageState extends State<ControlledAnimationPage>
    with TickerProviderStateMixin {
  late AnimationController controller;
  late Animation<Size?> sizeAnimation;
  late Animation<Color?> colorAnimation;

  void toggle() {
    if (controller.value == 0) {
      controller.forward(); //iniciar a aplicação
    } else {
      controller.reverse();
    }
  }

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 1));

    sizeAnimation =
        SizeTween(begin: Size(50, 50), end: Size(100, 100)).animate(controller);

    colorAnimation =
        ColorTween(begin: Color.fromARGB(255, 245, 0, 0), end: Colors.green)
            .animate(controller);
  }

  @override
  void dispose() {
    super.dispose;
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Controlled Animation')),
      body: Center(
        child: AnimatedBuilder(
            animation: controller,
            builder: (context, child) {
              return GestureDetector(
                onTap: toggle,
                child: Container(
                  width: sizeAnimation.value?.width,
                  height: sizeAnimation.value?.height,
                  color: colorAnimation.value,
                ),
              );
            }),
      ),
    );
  }
}
