import 'package:flutter/material.dart';
import 'package:projeto_biblas/database/enum/livroSituacao_enum.dart';
import 'package:projeto_biblas/database/repository_mock/repository_mock.dart';
import 'package:projeto_biblas/database/usuario/usuario_singleton.dart';
import 'package:projeto_biblas/modules/meus_processos/widgets/blocoLivro_widget.dart';
import 'package:projeto_biblas/shared/themes/text_styles.dart';
import 'package:projeto_biblas/shared/widgets/app_bar_widget.dart';
import 'package:projeto_biblas/shared/widgets/iconeHome_widget.dart';

class PaginaProcessos extends StatelessWidget {
  const PaginaProcessos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    UsuarioSingleton usuario = UsuarioSingleton();
    List<String> dataLimites = [
      '04/02/2022',
      '05/02/2022',
      '06/02/2022',
      '07/02/2022',
      '10/02/2022',
      '04/02/2022',
      '04/02/2022',
      '05/02/2022',
      '06/02/2022',
      '07/02/2022',
      '10/02/2022',
      '04/02/2022',
    ];
    List<String> dataRetiradas = [
      '11/02/2022',
      '12/02/2022',
      '13/02/2022',
      '14/02/2022',
      '20/02/2022',
      '11/02/2022',
      '11/02/2022',
      '12/02/2022',
      '13/02/2022',
      '14/02/2022',
      '20/02/2022',
      '11/02/2022',
    ];
    List<LivroSituacao> situacoesLivros = [
      LivroSituacao.EMPOSSE,
      LivroSituacao.DEVOLVIDO,
      LivroSituacao.ATRASADO,
      LivroSituacao.RESERVADO,
      LivroSituacao.RETIRAR,
      LivroSituacao.FILA,
      LivroSituacao.EMPOSSE,
      LivroSituacao.DEVOLVIDO,
      LivroSituacao.ATRASADO,
      LivroSituacao.RESERVADO,
      LivroSituacao.RETIRAR,
      LivroSituacao.FILA,
    ];

    return Scaffold(
      body: ListView(
        children: [
          const AppBarMaua(),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 50),
            alignment: Alignment.centerLeft,
            height: 70,
            child: const IconeHomeWidget(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 61),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Processos:', style: AppTextStyles.titulosBold),
                const SizedBox(
                  height: 10,
                ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: BlocoLivro(
                      livroUsuario:
                          usuario.livros[usuario.livros.length - index - 1],
                    ),
                  ),
                  itemCount: usuario.livros.length,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
