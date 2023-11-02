import 'package:flutter/material.dart';
import 'package:prototype_apps/src/home/center_content.dart';
import 'package:prototype_apps/src/home/down_bar.dart';
import 'package:prototype_apps/src/home/top_bar.dart';
import 'package:prototype_apps/src/home/top_content.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

const downBar = DownBar();
const mainContent = MainContent();
const topContent = TopContent();
const topBar = TopBar();

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Material(
      color: Color.fromARGB(255, 0, 2, 44),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          topBar,
          SizedBox(
            height: 10,
          ),
          topContent,
          SizedBox(
            height: 25,
          ),
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              mainContent,
              downBar,
            ],
          ),
        ],
      ),
    );
  }
}
