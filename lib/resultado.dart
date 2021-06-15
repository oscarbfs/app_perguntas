import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() _quandoReiniciarQuestionario;

  Resultado(this.pontuacao, this._quandoReiniciarQuestionario);

  String get fraseResultado {
    if (pontuacao < 16) {
      return 'Parabéns!';
    } else if (pontuacao < 31) {
      return 'Você é bom!';
    } else if (pontuacao < 46) {
      return 'Impressionante!';
    } else {
      return 'Nivel Jedi!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(fraseResultado, style: const TextStyle(fontSize: 28)),
        ),
        TextButton(
          child: Text(
            'Reiniciar?',
            style: TextStyle(fontSize: 18),
          ),
          style: TextButton.styleFrom(
            primary: Colors.blue, // background
          ),
          onPressed: _quandoReiniciarQuestionario,
        )
      ],
    );
  }
}
