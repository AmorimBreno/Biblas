import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:projeto_biblas/modules/livros/widgets/TermosWidget.dart';
import 'package:projeto_biblas/modules/livros/widgets/botoesPegarLivro_widget.dart';
import 'package:projeto_biblas/my_app.dart';
import 'package:projeto_biblas/shared/themes/app_colors.dart';
import 'package:projeto_biblas/shared/themes/text_styles.dart';

import '../../meus_processos/pages/processos_pagina.dart';

class TermosCondicoesWidget extends StatefulWidget {
  TermosCondicoesWidget();

  @override
  State<TermosCondicoesWidget> createState() => _TermosCondicoesWidgetState();
}

class _TermosCondicoesWidgetState extends State<TermosCondicoesWidget> {
  _TermosCondicoesWidgetState();
  bool isVisivel = true;

  @override
  Widget build(BuildContext context) {
    final larguraTela = MediaQuery.of(context).size.width;
    final alturaTela = MediaQuery.of(context).size.height;

    const double alturaContainerBranco = 600;
    final double larguraContainerBranco =
        larguraTela < 800 ? larguraTela * 0.8 : 0.45 * larguraTela;

    return Visibility(
      visible: isVisivel,
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(
                      1.0,
                      1.0,
                    ),
                    blurRadius: 10.0,
                    spreadRadius: 1.0,
                  )
                ]),
            height: alturaContainerBranco,
            width: larguraContainerBranco,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Center(
                  child: Padding(
                padding: EdgeInsets.only(
                  top: larguraTela < 800
                      ? alturaContainerBranco * 0.15
                      : alturaContainerBranco * 0.2,
                  bottom: larguraTela < 800
                      ? alturaContainerBranco * 0.05
                      : alturaContainerBranco * 0.1,
                ),
                child: ListView.builder(
                    itemCount: 3,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: TermosWidget(),
                      );
                    }),
              )),
            ),
          ),
          Container(
            color: AppColors.lightblue,
            height: larguraTela < 800
                ? alturaContainerBranco * 0.15
                : alturaContainerBranco * 0.2,
            width: larguraTela < 800 ? larguraTela * 0.8 : 0.45 * larguraTela,
            child: Center(
                child: Text(
              "CONDIÇÕES DE EMPRÉSTIMO DA BIBLIOTECA",
              style: AppTextStyles.titulos.copyWith(fontSize: 24),
            )),
          ),
          Positioned(
              bottom: 10,
              right: 0.22 * larguraContainerBranco,
              child: MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                    onTap: () => Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const ProcessosPage();
                        })),
                    child: const BotoesLivros(texto: "CONFIRMAR")),
              ))
        ],
      ),
    );
  }
}
