import 'package:flutter/material.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  static const titleStyle = TextStyle(
    fontSize: 20,
    color: Colors.black,
    fontWeight: FontWeight.bold,
  );

  static const legendStyle = TextStyle(
    fontSize: 16,
    color: Colors.grey,
  );

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
              padding: const EdgeInsets.all(20),
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
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
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
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Icon(
                        Icons.call,
                        color: Colors.blue,
                      ),
                      Text("Ligar"),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.place,
                        color: Colors.blue,
                      ),
                      Text("Endereço"),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.share,
                        color: Colors.blue,
                      ),
                      Text("Compartilhar"),
                    ],
                  ),
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
