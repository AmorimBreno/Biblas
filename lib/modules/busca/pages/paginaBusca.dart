import 'package:flutter/material.dart';
import 'package:projeto_biblas/database/repository_mock/repository_mock.dart';
import 'package:projeto_biblas/modules/busca/widgets/funil/botaoFunil_widget.dart';
import 'package:projeto_biblas/modules/busca/widgets/menuCascata_widget.dart';
import 'package:projeto_biblas/modules/busca/widgets/barraPesquisa_widget.dart';
import 'package:projeto_biblas/shared/themes/app_colors.dart';
import '../../../database/modules/livro/livro.dart';
import '../../../shared/widgets/app_bar_widget.dart';
import '../widgets/capaLivro_widget.dart';
import '../widgets/iconeProcessos_widget.dart';

class PaginaBusca extends StatefulWidget {
  PaginaBusca({Key? key}) : super(key: key);

  @override
  State<PaginaBusca> createState() => _PaginaBuscaState();
}

class _PaginaBuscaState extends State<PaginaBusca> {
  final RepositoryMock repo = RepositoryMock();
  late List<Livro> lista_livros_local;

  @override
  void initState() {
    super.initState();
    lista_livros_local = repo.livros;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: PreferredSize(preferredSize: Size(52, 64), child: AppBarMaua()),
      body: ListView(
        children: [
          const AppBarMaua(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                width: 500,
                height: 1000,
                child: const MenuCascataWidget(),
              ),
              Stack(
                alignment: Alignment.topCenter,
                children: [
                  SearchBarWidget(detectaTexto: detectaTexto),
                  Padding(
                    padding: const EdgeInsets.only(top: 64.0),
                    child: Wrap(
                        children: lista_livros_local
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
      backgroundColor: AppColors.backgroundColor,
    );
  }

  void detectaTexto(String query) {
    List<Livro> livros = repo.pegarLivroPorTitulo(query);
    // livros.forEach((element) {
    //   print(element.titulo);
    // });
    setState(() {
      lista_livros_local = livros;
    });
  }
}
