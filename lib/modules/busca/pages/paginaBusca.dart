import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:projeto_biblas/database/repository_mock/repository_mock.dart';
import 'package:projeto_biblas/modules/busca/widgets/funil/botaoFunil_widget.dart';
import 'package:projeto_biblas/modules/busca/widgets/menuCascata_widget.dart';
import 'package:projeto_biblas/modules/busca/widgets/barraPesquisa_widget.dart';
import 'package:projeto_biblas/shared/themes/app_colors.dart';
import 'package:projeto_biblas/shared/themes/breakpoints.dart';
import '../../../database/modules/livro/livro.dart';
import '../../../shared/widgets/app_bar_widget.dart';
import '../../livros/pages/paginaLivrosResponsiva.dart';
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                width: MediaQuery.of(context).size.width * 0.2,
                height: MediaQuery.of(context).size.width * 0.4,
                child: MenuCascataWidget(selecionarTag: funcionalidadeCascata),
              ),
              Column(
                children: [
                  Row(
                    children: [
                      SearchBarWidget(
                        detectaTexto: funcionalidadeBarraPesquisa,
                        reset: funcionalidadeResetLivros,
                      ),
                      const IconeProcessosWidget()
                    ],
                  ),
                  const SizedBox(
                    height: 64,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.7,
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount:
                            MediaQuery.of(context).size.width > tabletWidth
                                ? 4
                                : 3,
                        crossAxisSpacing: 64,
                        mainAxisSpacing: 64,
                      ),
                      shrinkWrap: true,
                      itemBuilder: (context, index) =>
                          CapaLivroWidget(livro: lista_livros_local[index]),
                      itemCount: lista_livros_local.length,
                    ),
                  ),
                  const SizedBox(
                    height: 64,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
      backgroundColor: AppColors.backgroundColor,
    );
  }

  void funcionalidadeBarraPesquisa(String query) {
    List<Livro> livros = repo.pegarLivroPorTitulo(query);
    // livros.forEach((element) {
    //   print(element.titulo);
    // });
    setState(() {
      lista_livros_local = livros;
    });
  }

  void funcionalidadeCascata(String query) {
    print(query);
    List<Livro> livros = repo.pegarLivroPorMateria(query);

    setState(() {
      lista_livros_local = livros;
    });
  }

  void funcionalidadeResetLivros() {
    setState(() {
      lista_livros_local = repo.livros;
    });
  }
}
