import 'package:flutter/material.dart';

var item1 = Container(
  height: 50,
  width: double.infinity,
  margin: const EdgeInsets.all(10),
  child: Stack(
    alignment: Alignment.center,
    children: [
      Align(
        alignment: Alignment.centerLeft,
        child: Container(
          height: 45,
          width: 45,
          margin: const EdgeInsets.only(left: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Colors.yellow[100],
          ),
          child: const Icon(
            Icons.monetization_on,
            color: Colors.black,
          ),
        ),
      ),
      Align(
        alignment: Alignment.centerLeft,
        child: Container(
          margin: const EdgeInsets.only(left: 60),
          child: RichText(
            text: TextSpan(
              style: const TextStyle(color: Colors.black),
              children: [
                const TextSpan(text: 'Bitcoin'),
                const TextSpan(text: '\n'),
                TextSpan(
                  text: '-0.30533 BTC',
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.5),
                    fontSize: 10,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      Align(
        alignment: Alignment.centerRight,
        child: Container(
          child: RichText(
            textAlign: TextAlign.right,
            text: TextSpan(
              style: const TextStyle(color: Colors.black),
              children: [
                TextSpan(
                  text: '05 sep 2019',
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.5),
                    fontSize: 10,
                  ),
                ),
                const TextSpan(text: '\n'),
                const TextSpan(
                  text: 'Sent',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ],
  ),
);
var item2 = Container(
  height: 50,
  width: double.infinity,
  margin: const EdgeInsets.all(10),
  child: Stack(
    alignment: Alignment.center,
    children: [
      Align(
        alignment: Alignment.centerLeft,
        child: Container(
          height: 45,
          width: 45,
          margin: const EdgeInsets.only(left: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Colors.purple[300],
          ),
          child: const Icon(
            Icons.diamond,
            color: Colors.black,
          ),
        ),
      ),
      Align(
        alignment: Alignment.centerLeft,
        child: Container(
          margin: const EdgeInsets.only(left: 60),
          child: RichText(
            text: TextSpan(
              style: const TextStyle(color: Colors.black),
              children: [
                const TextSpan(text: 'Ethereum'),
                const TextSpan(text: '\n'),
                TextSpan(
                  text: '+4.2830 ETH',
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.5),
                    fontSize: 10,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      Align(
        alignment: Alignment.centerRight,
        child: RichText(
          textAlign: TextAlign.right,
          text: TextSpan(
            style: const TextStyle(color: Colors.black),
            children: [
              TextSpan(
                text: '04 sep 2019',
                style: TextStyle(
                  color: Colors.black.withOpacity(0.5),
                  fontSize: 10,
                ),
              ),
              const TextSpan(text: '\n'),
              const TextSpan(
                text: 'Received',
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
      ),
    ],
  ),
);

class MainContent extends StatelessWidget {
  const MainContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color.fromARGB(255, 0, 2, 44),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 45),
                height: 250,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
              Container(
                height: 350,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: const Color.fromARGB(255, 255, 255, 255),
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        height: 60,
                        width: 160,
                        margin: const EdgeInsets.all(25),
                        child: const Text(
                          'My transactions',
                          style: TextStyle(
                              color: Color.fromARGB(255, 0, 2, 44),
                              fontSize: 22),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        margin: const EdgeInsets.all(25),
                        height: 25,
                        width: 45,
                        child: ElevatedButton(
                          style: OutlinedButton.styleFrom(
                            backgroundColor: Colors.blue,
                          ),
                          onPressed: () {},
                          child: const Icon(
                            Icons.format_list_numbered,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      child: Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: 230,
                          width: double.infinity,
                          margin: const EdgeInsets.symmetric(horizontal: 15),
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                item1,
                                item2,
                                item1,
                                item2,
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
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
