import 'package:flutter/material.dart';

main() => runApp(PerguntaApp());

class PerguntaAppState extends State<PerguntaApp> {
  var perguntaSelecionada = 0;

  void responder() {
    setState(() {
      perguntaSelecionada++;
    });
    print(perguntaSelecionada);
  }

  @override
  Widget build(BuildContext context) {
    final perguntas = [
      'Qual é a sua cor favorita?',
      'Qual é o seu carro favorito?',
    ];

    final respostas = [
      ['Azul', 'Amarelo', 'Vermelho'],
      ['Lamborguini', 'Bugati', 'Ferrari']
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
              child: Text(respostas[perguntaSelecionada][0]),
              onPressed: responder,
            ),
            ElevatedButton(
              child: Text(respostas[perguntaSelecionada][1]),
              onPressed: responder,
            ),
            ElevatedButton(
              child: Text(respostas[perguntaSelecionada][2]),
              onPressed: responder,
            ),
          ],
        ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  PerguntaAppState createState() {
    return PerguntaAppState();
  }
}
