// ignore: file_names
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:projeto_biblas/database/modules/livro/livro.dart';
import 'package:projeto_biblas/modules/busca/widgets/iconeProcessos_widget.dart';
import 'package:projeto_biblas/modules/livros/widgets/botoesPegarLivro_widget.dart';
import 'package:projeto_biblas/modules/livros/widgets/infoLivro_widget.dart';
import 'package:projeto_biblas/modules/livros/widgets/resumoLivro_widget.dart';
import 'package:projeto_biblas/shared/widgets/app_bar_widget.dart';

import '../../../shared/themes/app_colors.dart';
import '../widgets/TermosCondicoes_Widget.dart';

class PaginaLivros extends StatefulWidget {
  const PaginaLivros({Key? key, required this.livro}) : super(key: key);

  final Livro livro;

  @override
  State<PaginaLivros> createState() =>
      // ignore: no_logic_in_create_state
      _PaginaLivroResponsivaState(livro: livro);
}

class _PaginaLivroResponsivaState extends State<PaginaLivros> {
  _PaginaLivroResponsivaState({required this.livro});

  final Livro livro;
  bool isOpen = false;
  double alturaContainer = 0;

  @override
  Widget build(BuildContext context) {
    final larguratela = MediaQuery.of(context).size.width;
    final alturatela = MediaQuery.of(context).size.height;

    return Scaffold(
        body: Stack(
      children: [
        ListView(
          children: [
            const AppBarMaua(),
            Center(
                child: Expanded(
              child: SizedBox(
                  height:
                      larguratela > 800 ? alturatela * 1.4 : alturatela * 0.9,
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
                            MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isOpen = !isOpen;
                                  });
                                },
                                child: BotoesLivros(
                                  texto: "Solicitar",
                                ),
                              ),
                            ),
                            MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isOpen = !isOpen;
                                  });
                                },
                                child: BotoesLivros(
                                  texto: "Reservar",
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: Divider(
                          thickness: 2,
                          color: Colors.black87,
                        ),
                      ),
                      Expanded(child: Sinopse_Widget(livro: livro)),
                    ],
                  )),
            ))
          ],
        ),
        Visibility(
          visible: isOpen,
          child: Stack(children: [
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
              child: GestureDetector(
                onTap: () => setState(() {
                  isOpen = !isOpen;
                }),
                child: Container(
                  height: alturatela,
                  width: larguratela,
                  color: Colors.transparent,
                ),
              ),
            ),
            Center(child: TermosCondicoesWidget())
          ]),
        ),
      ],
    ));
  }
}
