import 'package:flutter/material.dart';

main() => runApp(PerguntaApp());

class PerguntaApp extends StatelessWidget {
  var perguntaSelecionada = 0;

  void responder() {
    perguntaSelecionada++;
    print(perguntaSelecionada);
  }

  @override
  Widget build(BuildContext context) {
    final perguntas = [
      'Qual é a sua cor favorita?',
      'Qual é o seu carro favorito?',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: <Widget>[
            Text(perguntas[perguntaSelecionada]),
            ElevatedButton(
              child: Text('Azul'),
              onPressed: responder,
            ),
            ElevatedButton(
              child: Text('Amarelo'),
              onPressed: responder,
            ),
            ElevatedButton(
              child: Text('Vermelho'),
              onPressed: responder,
            ),
          ],
        ),
      ),
    );
  }
}
