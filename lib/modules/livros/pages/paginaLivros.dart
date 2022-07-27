import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projeto_biblas/modules/busca/widgets/botaoLivro_widget.dart';
import 'package:projeto_biblas/modules/busca/widgets/iconeProcessos_widget.dart';
import 'package:projeto_biblas/modules/livros/widgets/botoesPegarLivro_widget.dart';
import 'package:projeto_biblas/modules/livros/widgets/infoLivro_widget.dart';
import 'package:projeto_biblas/modules/livros/widgets/resumoLivro_widget.dart';
import 'package:projeto_biblas/modules/meus_processos/pages/processos_pagina.dart';
import 'package:projeto_biblas/shared/widgets/app_bar_widget.dart';

class PaginaLivros extends StatelessWidget {
  final double largura = 250;
  final double altura = 35;

  const PaginaLivros({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
      const AppBarMaua(),
      const IconeProcessos(),
      const Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: InfoLivrosWidget()),
      Padding(
        padding:
            const EdgeInsets.only(top: 28.0, left: 24, right: 24, bottom: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BotoesLivros(
              texto: "Solicitar",
              altura: altura,
              largura: largura,
            ),
            BotoesLivros(texto: 'Reservar', altura: altura, largura: largura),
          ],
        ),
      ),
      Padding(
        padding:
            const EdgeInsets.only(left: 24.0, right: 24.0, top: 8, bottom: 12),
        child: Container(
          height: 0.5,
          width: 600,
          color: Colors.black,
        ),
      ),
      const Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Sinopse_Widget())
    ]));
  }
}
