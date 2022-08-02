import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:projeto_biblas/database/modules/livro/livro.dart';
import 'package:projeto_biblas/modules/busca/widgets/iconeProcessos_widget.dart';
import 'package:projeto_biblas/modules/livros/widgets/botoesPegarLivro_widget.dart';
import 'package:projeto_biblas/modules/livros/widgets/infoLivro_widget.dart';
import 'package:projeto_biblas/modules/livros/widgets/resumoLivro_widget.dart';
import 'package:projeto_biblas/modules/meus_processos/pages/processos_pagina.dart';
import 'package:projeto_biblas/shared/widgets/app_bar_widget.dart';

class PaginaLivrosResponsiva extends StatefulWidget {
  const PaginaLivrosResponsiva({Key? key, required this.livro})
      : super(key: key);

  final Livro livro;

  @override
  State<PaginaLivrosResponsiva> createState() =>
      // ignore: no_logic_in_create_state
      _PaginaLivroResponsivaState(livro: livro);
}

class _PaginaLivroResponsivaState extends State<PaginaLivrosResponsiva> {
  _PaginaLivroResponsivaState({required this.livro});

  final Livro livro;

  @override
  Widget build(BuildContext context) {
    final larguratela = MediaQuery.of(context).size.width;
    final alturatela = MediaQuery.of(context).size.height;

    return Scaffold(
        body: ListView(
      children: [
        const AppBarMaua(),
        Center(
            child: Expanded(
          child: SizedBox(
              height: larguratela > 800 ? alturatela * 1.3 : alturatela * 0.9,
              width: larguratela > 800 ? 800 : larguratela,
              child: Column(
                children: [
                  const Align(
                      alignment: Alignment.centerRight,
                      child: IconeProcessosWidget()),
                  InfoLivrosWidget(livro: livro),
                  Padding(
                    padding: const EdgeInsets.only(top: 32.0, bottom: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        BotoesLivros(texto: "Solicitar"),
                        BotoesLivros(texto: "Reservar"),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Divider(
                      thickness: 2,
                      color: Colors.grey,
                    ),
                  ),
                  Expanded(child: Sinopse_Widget(livro: livro)),
                ],
              )),
        ))
      ],
    ));
  }
}
