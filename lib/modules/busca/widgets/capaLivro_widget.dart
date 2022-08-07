// ignore: file_names
import 'package:flutter/material.dart';

import 'package:projeto_biblas/modules/livros/pages/paginaLivrosResponsiva.dart';

import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:projeto_biblas/database/usuario/usuario_singleton.dart';
import '../../../database/modules/livro/livro.dart';
import '../../livros/pages/paginaLivrosResponsiva.dart';
import '../../meus_processos/pages/processos_pagina.dart';
import '../pages/paginaBusca.dart';

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
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return PaginaLivros(livro: livro);
                }));
              },
              style: ButtonStyle(
                  elevation: MaterialStateProperty.all(0.0),
                  backgroundColor:
                      MaterialStateProperty.all(Colors.transparent)),
              child: Image.asset(
                livro.imagemLivro,
                height: MediaQuery.of(context).size.width / (1 * 7),
                width: MediaQuery.of(context).size.width / (1.5 * 7),
                filterQuality: FilterQuality.high,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 32),
            child: SizedBox(
              width: MediaQuery.of(context).size.width / (1.5 * 7),
              child: Text(
                livro.titulo,
              ),
            ),
          )
        ],
      ),
    );
  }
}
