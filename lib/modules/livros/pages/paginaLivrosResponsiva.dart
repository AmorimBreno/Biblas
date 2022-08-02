import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:projeto_biblas/database/modules/livro/livro.dart';
import 'package:projeto_biblas/modules/busca/widgets/iconeProcessos_widget.dart';
import 'package:projeto_biblas/modules/livros/widgets/botoesPegarLivro_widget.dart';
import 'package:projeto_biblas/modules/livros/widgets/infoLivro_widget.dart';
import 'package:projeto_biblas/modules/livros/widgets/resumoLivro_widget.dart';
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
            child: Padding(
          padding: const EdgeInsets.only(top: 24.0),
          child: SizedBox(
              height: larguratela > 800 ? alturatela * 1.2 : alturatela * 0.9,
              width: larguratela > 800 ? 800 : larguratela,
              child: Column(
                children: [
                  InfoLivrosWidget(livro: livro),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BotoesLivros(texto: "Solicitar"),
                      BotoesLivros(texto: "Reservar"),
                    ],
                  ),
                  Expanded(child: Sinopse_Widget(livro: livro)),
                ],
              )),
        ))
      ],
    ));
  }
}