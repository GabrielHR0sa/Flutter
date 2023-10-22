import 'package:flutter/material.dart';
import 'package:testes/routes/routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        color: const Color.fromARGB(255, 17, 21, 41),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.network(
                'https://images.vexels.com/media/users/3/131779/isolated/preview/3d4929d289ad98ad71637d5c257d2f08-logotipo-da-pizza-1.png',
                height: 250,
                width: 250,
              ),
              const SizedBox(height: 20),
              const Text('Pizzaria da Fulana',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(
                height: 13,
              ),
              Text(
                'Uma experiência de sabores',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 11, color: Colors.white.withOpacity(0.5)),
              ),
              const SizedBox(
                height: 80,
              ),
              SizedBox(
                width: double.infinity,
                height: 48,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: const Color.fromARGB(255, 182, 21, 21),
                    ),
                    onPressed: () {
                      Navigator.of(context).pushNamed(PRODUCTS);
                    },
                    child: const Text('Entrar')),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                width: double.infinity,
                height: 48,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: const Color.fromARGB(255, 255, 255, 255),
                      onPrimary: const Color.fromARGB(255, 182, 21, 21),
                    ),
                    onPressed: () {
                      Navigator.of(context).pushNamed(REGISTER);
                    },
                    child: const Text('Cadastrar')),
              ),
              const SizedBox(
                height: 60,
              ),
              RichText(
                text: const TextSpan(
                  style: TextStyle(color: Colors.white),
                  children: [
                    TextSpan(text: 'Precisa de ajuda ?'),
                    TextSpan(text: ' '),
                    TextSpan(
                      text: 'Fale com nossa Equipe',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
            ],
          ),
        ));
  }
}
