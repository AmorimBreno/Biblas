import 'package:flutter/material.dart';
import 'package:projeto_biblas/database/enum/livroSituacao_enum.dart';
import 'package:projeto_biblas/modules/meus_processos/widgets/blocoLivro_widget.dart';
import 'package:projeto_biblas/shared/widgets/app_bar_widget.dart';

class PaginaProcessos extends StatelessWidget {
  const PaginaProcessos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<int> teste = [0, 1, 2, 3, 4, 5];
    List<String> dataLimites = [
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
    ];
    List<LivroSituacao> situacoesLivros = [
      LivroSituacao.EMPOSSE,
      LivroSituacao.DEVOLVIDO,
      LivroSituacao.ATRASADO,
      LivroSituacao.RESERVADO,
      LivroSituacao.RETIRAR,
      LivroSituacao.FILA
    ];

    return Scaffold(
      body: ListView(
        children: [
          const AppBarMaua(),
          const SizedBox(
            height: 73,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 61),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Processos:',
                    style:
                        TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
                const SizedBox(
                  height: 10,
                ),
                BlocoLivro(
                    indice: 0,
                    dataLimite: '04/02/2022',
                    dataRetirada: '11/02/2022',
                    situacaoLivro: LivroSituacao.EMPOSSE),
                const SizedBox(
                  height: 40,
                ),
                BlocoLivro(
                  indice: 1,
                  dataLimite: '05/02/2022',
                  dataRetirada: '12/02/2022',
                  situacaoLivro: LivroSituacao.DEVOLVIDO,
                ),
                const SizedBox(
                  height: 40,
                ),
                BlocoLivro(
                  indice: 2,
                  dataLimite: '06/02/2022',
                  dataRetirada: '13/02/2022',
                  situacaoLivro: LivroSituacao.ATRASADO,
                ),
                const SizedBox(
                  height: 40,
                ),
                BlocoLivro(
                  indice: 3,
                  dataLimite: '07/02/2022',
                  dataRetirada: '14/02/2022',
                  situacaoLivro: LivroSituacao.RESERVADO,
                ),
                const SizedBox(
                  height: 40,
                ),
                BlocoLivro(
                  indice: 4,
                  dataLimite: '10/02/2022',
                  dataRetirada: '20/02/2022',
                  situacaoLivro: LivroSituacao.RETIRAR,
                ),
                const SizedBox(
                  height: 40,
                ),
                BlocoLivro(
                  indice: 5,
                  dataLimite: '04/02/2022',
                  dataRetirada: '11/02/2022',
                  situacaoLivro: LivroSituacao.FILA,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
