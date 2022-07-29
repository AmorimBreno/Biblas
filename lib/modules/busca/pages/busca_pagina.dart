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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 400,
                height: 600,
                child: Container(
                  color: Colors.black,
                ),
              ),
              Stack(
                alignment: Alignment.topCenter,
                children: [
                  const SearchBarWidget(),
                  Padding(
                    padding: const EdgeInsets.only(top: 64.0),
                    child: Wrap(
                        children: repo.livros
                            .map((livro) => CapaLivroWidget(livro: livro))
                            .toList()),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 520),
                    child: const Padding(
                      padding: EdgeInsets.only(top: 16.0),
                      child: BotaoFunilWidget(),
                    ),
                  ),
                ],
              ),
              Container(
                  margin: const EdgeInsets.only(right: 20),
                  child: const IconeProcessosWidget())
            ],
          ),
        ],
      ),
      backgroundColor: Colors.white,
    );
  }
}
