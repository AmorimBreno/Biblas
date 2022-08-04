import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:projeto_biblas/database/repository_mock/repository_mock.dart';
import 'package:projeto_biblas/modules/busca/widgets/funil/botaoFunil_widget.dart';
import 'package:projeto_biblas/modules/busca/widgets/menuCascata_widget.dart';
import 'package:projeto_biblas/modules/busca/widgets/barraPesquisa_widget.dart';
import 'package:projeto_biblas/shared/themes/app_colors.dart';
import '../../../database/modules/livro/livro.dart';
import '../../../shared/widgets/app_bar_widget.dart';
import '../../livros/pages/paginaLivros.dart';
import '../widgets/capaLivro_widget.dart';
import '../widgets/iconeProcessos_widget.dart';

class PaginaBusca extends StatelessWidget {
  PaginaBusca({Key? key}) : super(key: key);

  final RepositoryMock repo = RepositoryMock();

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
              // Stack(
              //   alignment: Alignment.topCenter,
              //   children: [
              //     TypeAheadField(
              //       onSuggestionSelected: (Livro suggestion) {
              //         () {
              //           Navigator.push(context,
              //               MaterialPageRoute(builder: (context) {
              //             return PaginaLivros(livro: suggestion);
              //           }));
              //         };
              //       },
              //       itemBuilder: (context, Livro suggestion) {
              //         return Wrap(
              //             children: repo.livros
              //                 .map((suggestion) =>
              //                     CapaLivroWidget(livro: suggestion))
              //                 .toList());
              //       },
              //       suggestionsCallback: (String pattern) {
              //         return RepositoryMock().pegarLivroPorTitulo(pattern);
              //       },
              //     ),
              //     Padding(
              //       padding: const EdgeInsets.only(top: 64.0),
              //       child: Wrap(
              //           children: repo.livros
              //               .map((livro) => CapaLivroWidget(livro: livro))
              //               .toList()),
              //     ),
              //     Container(
              //       margin: const EdgeInsets.only(left: 520),
              //       child: const Padding(
              //         padding: EdgeInsets.only(top: 16.0),
              //         child: BotaoFunilWidget(),
              //       ),
              //     ),
              //   ],
              // ),
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
}
