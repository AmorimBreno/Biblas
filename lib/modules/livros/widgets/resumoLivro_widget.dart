import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../database/modules/livro/livro.dart';

class Sinopse_Widget extends StatelessWidget {
  Sinopse_Widget({required this.livro});

  Livro livro;

  @override
  Widget build(BuildContext context) {
    final larguraTela = MediaQuery.of(context).size.width;

    double letraSinopse = larguraTela < 800 ? 22.5 : 28;
    double letraTexto = larguraTela < 800 ? 14.4 : 20;

    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(children: [
          Text('Sinopse:', style: TextStyle(fontSize: letraSinopse)),
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Text(livro.sinopse, style: TextStyle(fontSize: letraTexto)),
          )
        ]),
      ),
    );
  }
}
