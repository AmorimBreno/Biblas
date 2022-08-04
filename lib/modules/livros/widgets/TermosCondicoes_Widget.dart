import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:projeto_biblas/modules/livros/widgets/botoesPegarLivro_widget.dart';
import 'package:projeto_biblas/modules/livros/widgets/termos_widget.dart';
import 'package:projeto_biblas/my_app.dart';
import 'package:projeto_biblas/shared/themes/app_colors.dart';
import 'package:projeto_biblas/shared/themes/text_styles.dart';

import '../../meus_processos/pages/processos_pagina.dart';

class TermosCondicoesWidget extends StatefulWidget {
  TermosCondicoesWidget(this.termo);

  bool termo; //1 = Solicitar | 2 = Agendar

  @override
  // ignore: no_logic_in_create_state
  State<TermosCondicoesWidget> createState() =>
      _TermosCondicoesWidgetState(termo);
}

class _TermosCondicoesWidgetState extends State<TermosCondicoesWidget> {
  _TermosCondicoesWidgetState(this.isVisivelTermos);
  bool isVisivelTudo = true;
  late bool isVisivelTermos;

  @override
  Widget build(BuildContext context) {
    final larguraTela = MediaQuery.of(context).size.width;
    final alturaTela = MediaQuery.of(context).size.height;

    const double alturaContainerBranco = 600;
    final double larguraContainerBranco =
        larguraTela < 800 ? larguraTela * 0.8 : 0.45 * larguraTela;

    return Visibility(
      visible: isVisivelTudo,
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
                child: Visibility(
                  visible: isVisivelTermos,
                  child: ListView.builder(
                      itemCount: 3,
                      itemBuilder: (context, int index) {
                        return Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: TermosWidget(),
                        );
                      }),
                ),
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
                    onTap: () => setState(() {
                          isVisivelTermos == true
                              ? Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                  return const ProcessosPage();
                                }))
                              : isVisivelTermos = true;
                        }),
                    child: const BotoesLivros(texto: "CONFIRMAR")),
              )),
          Visibility(
            visible: !isVisivelTermos,
            child: Positioned(
                right: larguraContainerBranco / 2,
                top: alturaContainerBranco / 2,
                child: Text(
                  "Calendário",
                  style: AppTextStyles.titulos,
                )),
          )
        ],
      ),
    );
  }
}
