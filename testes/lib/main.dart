import 'package:flutter/material.dart';
import 'package:testes/pages/home_page.dart';
import 'package:testes/pages/products_page.dart';
import 'package:testes/pages/register_page.dart';
import 'package:testes/routes/routes.dart';

void main() {
  runApp(const MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          brightness: Brightness.dark,
        ),
        routes: {
          HOME: (context) => HomePage(),
          PRODUCTS: (context) => ProductsPage(),
          REGISTER: (context) => RegisterPage(),
        });
  }
}
