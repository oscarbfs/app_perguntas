import 'package:flutter/material.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  void _responder() {
    setState(() {
      _perguntaSelecionada++;
    });
    print(_perguntaSelecionada);
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
            Text(perguntas[_perguntaSelecionada]),
            ElevatedButton(
              child: Text(respostas[_perguntaSelecionada][0]),
              onPressed: _responder,
            ),
            ElevatedButton(
              child: Text(respostas[_perguntaSelecionada][1]),
              onPressed: _responder,
            ),
            ElevatedButton(
              child: Text(respostas[_perguntaSelecionada][2]),
              onPressed: _responder,
            ),
          ],
        ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
