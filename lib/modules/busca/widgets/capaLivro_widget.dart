import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../../../database/modules/livro/livro.dart';
import '../../meus_processos/pages/processos_pagina.dart';

class CapaLivroWidget extends StatelessWidget {
  final Livro livro;
  // ignore: use_key_in_widget_constructors
  const CapaLivroWidget({required this.livro});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const ProcessosPage();
              }));
            },
            style: ButtonStyle(
                elevation: MaterialStateProperty.all(0.0),
                backgroundColor: MaterialStateProperty.all(Colors.transparent)),
            child: Image.asset(
              livro.imagemLivro,
              height: 200,
              width: 128,
              filterQuality: FilterQuality.high,
            ),
          ),
          SizedBox(
            width: 128,
            child: Text(
              livro.titulo,
            ),
          )
        ],
      ),
    );
  }
}
