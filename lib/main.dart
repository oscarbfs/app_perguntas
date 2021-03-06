import 'package:flutter/material.dart';
import './questionario.dart';
import './resultado.dart';

main() => runApp(new PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  var _pontucaoTotal = 0;
  final _perguntas = const [
    {
      'texto': 'Qual é a sua cor favorita?',
      'respostas': [
        {'texto': 'Azul', 'pontos': 20},
        {'texto': 'Amarelo', 'pontos': 15},
        {'texto': 'Vermelho', 'pontos': 10},
        {'texto': 'Verde', 'pontos': 5},
      ],
    },
    {
      'texto': 'Qual é o seu carro favorito?',
      'respostas': [
        {'texto': 'Lamborguini', 'pontos': 20},
        {'texto': 'Bugati', 'pontos': 15},
        {'texto': 'Ferrari', 'pontos': 10},
        {'texto': 'Fusca', 'pontos': 5},
      ],
    },
    {
      'texto': 'Qual é o seu animal favorito?',
      'respostas': [
        {'texto': 'Tigre', 'pontos': 20},
        {'texto': 'Carangueijo', 'pontos': 15},
        {'texto': 'Urso', 'pontos': 10},
        {'texto': 'Tubarão', 'pontos': 5},
      ],
    },
  ];

  void _responder(int pontos) {
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
        _pontucaoTotal += pontos;
      });
    }
  }

  void _reiniciarQuestionario() {
    setState(() {
      _perguntaSelecionada = 0;
      _pontucaoTotal = 0;
    });
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: temPerguntaSelecionada
            ? Questionario(_perguntas, _perguntaSelecionada, _responder)
            : Resultado(_pontucaoTotal, _reiniciarQuestionario),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
