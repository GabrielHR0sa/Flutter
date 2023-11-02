import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color.fromARGB(255, 0, 2, 44),
      child: SizedBox(
        height: 100,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 40,
              width: 40,
              margin: const EdgeInsets.all(5),
              child: ClipOval(
                child: Image.asset(
                  'assets/images/perfil.jfif',
                ),
              ),
            ),
            Container(
              height: 50,
              width: 138,
              margin: const EdgeInsets.only(top: 30),
              child: const Text(
                'MY TRANSACTIONS',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
                height: 50,
                width: 50,
                margin: const EdgeInsets.all(5),
                child: const Icon(Icons.notifications_none)),
          ],
        ),
      ),
    );
  }
}
