import 'package:flutter/material.dart';
import 'package:projeto_biblas/database/repository_mock/LivrosRepository.dart';

import 'package:projeto_biblas/modules/busca/widgets/barraPesquisa_widget.dart';
import 'package:projeto_biblas/modules/busca/widgets/funil/botaoFunil_widget.dart';

import '../../../database/modules/livro/livro.dart';
import '../../../shared/widgets/app_bar_widget.dart';
import '../widgets/capaLivro_widget.dart';
import '../widgets/iconeProcessos_widget.dart';

class BuscaPage extends StatelessWidget {
  BuscaPage({Key? key}) : super(key: key);
  final RepositoryMock repo = RepositoryMock();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: PreferredSize(preferredSize: Size(52, 64), child: AppBarMaua()),
      body: Column(
        children: [
          const AppBarMaua(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(
                width: 400,
                height: 600,
              ),
              Stack(
                alignment: Alignment.topCenter,
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width / 3),
                          child: Stack(
                            children: [
                              const SearchBarWidget(),
                              Container(
                                margin: EdgeInsets.only(
                                    left: MediaQuery.of(context).size.width /
                                            3 -
                                        MediaQuery.of(context).size.width / 15),
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 12.0),
                                  child: Container(
                                      margin: const EdgeInsets.only(right: 12),
                                      child: const BotaoFunilWidget()),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const IconeProcessosWidget()
                      ]),
                  Padding(
                    padding: const EdgeInsets.only(top: 64.0),
                    child: Wrap(
                        children: repo.livros
                            .map((livro) => CapaLivroWidget(livro: livro))
                            .toList()),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
      backgroundColor: Colors.white,
    );
  }
}
