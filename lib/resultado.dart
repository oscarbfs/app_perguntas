import 'package:flutter/cupertino.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;

  Resultado(this.pontuacao);

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
    return Center(
      child: Text(fraseResultado, style: const TextStyle(fontSize: 28)),
    );
  }
}
