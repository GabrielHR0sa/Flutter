import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FlutterLogo(
              size: 80,
            ),
            SizedBox(
              height: 20,
            ),
            Text('Get your Money \n  Under Control',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold)),
            SizedBox(
              height: 20,
            ),
            Text('Manage your expenses. \n Seanlessly',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 18, color: Colors.white.withOpacity(0.5))),
            SizedBox(
              height: 80,
            ),
            Container(
              width: double.infinity,
              height: 48,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xff5e5ce5),
                  ),
                  onPressed: () {},
                  child: Text('Sign in with email ID')),
            ),
            SizedBox(height: 15),
            Container(
              width: double.infinity,
              height: 48,
              child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    onPrimary: Colors.black,
                  ),
                  onPressed: () {},
                  icon: Icon(Icons.add),
                  label: Text('Sign up with Google')),
            ),
            SizedBox(
              height: 34,
            ),
            RichText(
              text: TextSpan(
                style: TextStyle(color: Colors.white),
                children: const [
                  TextSpan(text: 'Already have an account ?'),
                  TextSpan(text: ' '),
                  TextSpan(
                    text: 'Sign in',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 75,
            )
          ],
        ),
      ),
    );
  }
}

//resumindo a tela
/*
Column para disposição na vertical (um acima do outro)
logo =>Image
título =>text
subtítulo => text
botão com texto => ElevatedButton
botão com icone e texto =>elevatedButton.icon
texto com link =>
*/
