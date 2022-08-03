import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:projeto_biblas/modules/livros/widgets/TermosWidget.dart';
import 'package:projeto_biblas/my_app.dart';
import 'package:projeto_biblas/shared/themes/app_colors.dart';
import 'package:projeto_biblas/shared/themes/text_styles.dart';

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

    final tamanhoContainerBranco =
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
            height: 500,
            width: tamanhoContainerBranco,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Center(child: TermosWidget()),
            ),
          ),
          Container(
            color: AppColors.lightblue,
            height: larguraTela < 800 ? 500 * 0.15 : 500 * 0.2,
            width: larguraTela < 800 ? larguraTela * 0.8 : 0.45 * larguraTela,
            child: Center(
                child: Text(
              "CONDIÇÕES DE EMPRÉSTIMO DA BIBLIOTECA",
              style: AppTextStyles.titulos.copyWith(fontSize: 24),
            )),
          ),
        ],
      ),
    );
  }
}
