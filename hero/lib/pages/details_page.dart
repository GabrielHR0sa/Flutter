import 'package:animations/pages/home_page.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final crew = ModalRoute.of(context)!.settings.arguments as Crew;
    return Scaffold(
        appBar: AppBar(title: Text('Details')),
        body: Center(
          child: SizedBox(
            height: 400,
            width: 400,
            child: Hero(
              tag: crew.urlImage,
              child: Image.network(crew.urlImage),
            ),
          ),
        ));
  }
}
