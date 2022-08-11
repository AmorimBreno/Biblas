// ignore: file_names
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:projeto_biblas/database/modules/livro/livro.dart';
import 'package:projeto_biblas/modules/busca/widgets/iconeProcessos_widget.dart';
import 'package:projeto_biblas/modules/livros/widgets/botoesPegarLivro_widget.dart';
import 'package:projeto_biblas/modules/livros/widgets/infoLivro_widget.dart';
import 'package:projeto_biblas/modules/livros/widgets/resumoLivro_widget.dart';
import 'package:projeto_biblas/shared/widgets/app_bar_widget.dart';
import 'package:projeto_biblas/shared/widgets/iconeHome_widget.dart';

import '../../../shared/themes/breakpoints.dart';
import '../widgets/termosCondicoes_widget.dart';

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
  bool isOpenSolicitar = false;
  bool isOpenReservar = false;
  double alturaContainer = 0;

  @override
  Widget build(BuildContext context) {
    final larguraTela = MediaQuery.of(context).size.width;
    final alturaTela = MediaQuery.of(context).size.height;

    return Scaffold(
        body: Stack(
      children: [
        ListView(
          children: [
            const AppBarMaua(),
            Center(
                child: SizedBox(
                    height: larguraTela > tabletWidth
                        ? alturaTela * 1.4
                        : alturaTela * 0.9,
                    width: larguraTela > tabletWidth ? 800 : larguraTela,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            IconeHomeWidget(),
                            IconeProcessosWidget(),
                          ],
                        ),
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
                                      isOpenSolicitar = !isOpenSolicitar;
                                    });
                                  },
                                  child: BotoesLivros(
                                    texto: livro.disponibilidade
                                        ? "Solicitar"
                                        : "Entrar na Fila",
                                  ),
                                ),
                              ),
                              MouseRegion(
                                cursor: SystemMouseCursors.click,
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      isOpenReservar = !isOpenReservar;
                                    });
                                  },
                                  child: const BotoesLivros(
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
                    )))
          ],
        ),
        Visibility(
          visible: isOpenSolicitar,
          child: Stack(children: [
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
              child: MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: () => setState(() {
                    isOpenSolicitar = !isOpenSolicitar;
                  }),
                  child: Container(
                    height: alturaTela,
                    width: larguraTela,
                    color: Colors.transparent,
                  ),
                ),
              ),
            ),
            Center(child: TermosCondicoesWidget(termo: true, livro: livro))
          ]),
        ),
        Visibility(
          visible: isOpenReservar,
          child: Stack(children: [
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
              child: MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: () => setState(() {
                    isOpenReservar = !isOpenReservar;
                  }),
                  child: Container(
                    height: alturaTela,
                    width: larguraTela,
                    color: Colors.transparent,
                  ),
                ),
              ),
            ),
            Center(
                child: TermosCondicoesWidget(
              termo: false,
              livro: livro,
            ))
          ]),
        )
      ],
    ));
  }
}
