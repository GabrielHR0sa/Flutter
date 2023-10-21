import 'package:animations/routes/routes.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final crews = Crew.getCrew();

    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: ListView.builder(
        itemCount: crews.length,
        itemBuilder: (context, index) {
          final crew = crews[index];
          return ListTile(
            onTap: () {
              Navigator.of(context).pushNamed(DETAILS, arguments: crew);
            },
            leading: ClipOval(
              child: Hero(
                tag: crew.urlImage,
                child: Image.network(crew.urlImage),
              ),
            ),
            title: Text(crew.name),
          );
        },
      ),
    );
  }
}

class Crew {
  final String name;
  final String urlImage;

  Crew(this.name, this.urlImage);

  static List<Crew> getCrew() {
    return [
      Crew('Luffy',
          'https://i.pinimg.com/564x/7b/4c/6d/7b4c6d9638dd629705791d4f9cbe597b.jpg'),
      Crew('Zoro',
          'https://i.pinimg.com/564x/79/e2/c9/79e2c9402014ead1eebf6c9f184c5bf8.jpg'),
      Crew('Nami',
          'https://i.pinimg.com/564x/d6/56/16/d65616b121840373bc2e0bb79500882c.jpg'),
      Crew('Ussop',
          'https://i.pinimg.com/564x/ac/3b/90/ac3b90ffd6cccdba348ba518929083df.jpg'),
      Crew('Sanji',
          'https://i.pinimg.com/564x/dd/f4/a3/ddf4a310117af4ebf55114ec2ce57269.jpg'),
      Crew('Chopper',
          'https://i.pinimg.com/564x/c0/c7/1b/c0c71bcadc86be5ea1c9193e71e3b05a.jpg'),
      Crew('Robin',
          'https://i.pinimg.com/564x/f7/f0/c3/f7f0c3a27feca210f8b53edc33936ad8.jpg'),
      Crew('Frank',
          'https://i.pinimg.com/564x/03/5b/40/035b40228c942eb12eaa649460d9ffe5.jpg'),
      Crew('Brook',
          'https://i.pinimg.com/564x/d5/80/6e/d5806ecc88f8a396f8aff32b85a52fea.jpg'),
      Crew('Jinbei',
          'https://i.pinimg.com/564x/d8/47/97/d8479727f639c8f991533a9896a042a9.jpg'),
    ];
  }
}
