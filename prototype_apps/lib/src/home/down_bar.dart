import 'package:flutter/material.dart';

class DownBar extends StatelessWidget {
  const DownBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color.fromARGB(255, 255, 255, 255),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Stack(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 25),
                height: 30,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 0, 2, 44),
                ),
              ),
              Container(
                height: 45,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: const Color.fromARGB(255, 0, 2, 44),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ClipOval(
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Icon(
                          Icons.bento_sharp,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                    ),
                    ClipOval(
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Icon(
                          Icons.wallet_rounded,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                    ),
                    ClipOval(
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Icon(
                          Icons.rotate_left_rounded,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                    ),
                    ClipOval(
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Icon(
                          Icons.perm_identity_sharp,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
