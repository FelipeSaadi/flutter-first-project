import 'dart:ffi';

import 'package:flutter/material.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  static const titleStyle = TextStyle(
    fontSize: 18,
    color: Colors.black,
    fontWeight: FontWeight.bold,
  );

  static const legendStyle = TextStyle(
    fontSize: 16,
    color: Colors.grey,
  );

  callAction() {
    print("Ligando...");
  }

  mapAction() {
    print("Pegando endereço...");
  }

  shareAction() {
    print("Compartilhando...");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text("Meu primeiro App"),
          ),
        ),
        body: Column(
          children: [
            const Image(
              image: AssetImage('assets/muro.jpg'),
            ),
            Container(
              margin: const EdgeInsets.all(20),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Kotel",
                        textAlign: TextAlign.left,
                        style: titleStyle,
                      ),
                      Text(
                        "Jerusalem, Israel",
                        textAlign: TextAlign.left,
                        style: legendStyle,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.blue,
                      ),
                      Text("3.891"),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Button(
                    icon: Icons.call,
                    text: "Ligar",
                    onPress: callAction,
                  ),
                  Button(
                    icon: Icons.place,
                    text: "Endereço",
                    onPress: mapAction,
                  ),
                  Button(
                    icon: Icons.share,
                    text: "Compartilhar",
                    onPress: shareAction,
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(20),
              child: const Text(
                "O Muro das Lamentações ou Muro Ocidental é o único remanescente do Segundo Templo de Jerusalém que permanece de pé (516 a.C. - 70 d.C.). Concluído por Herodes, o Grande, este templo era um local sagrado para o judaísmo há dois mil anos, e seus vestígios continuam tendo o mesmo significado hoje em dia.",
                textAlign: TextAlign.left,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Button extends StatelessWidget {
  const Button({
    super.key,
    required this.icon,
    required this.text,
    required this.onPress,
  });

  final IconData icon;
  final String text;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPress,
      child: Column(
        children: [
          Icon(
            icon,
            color: Colors.blue,
          ),
          Text(
            text,
            style: const TextStyle(color: Colors.black),
          ),
        ],
      ),
    );
  }
}
