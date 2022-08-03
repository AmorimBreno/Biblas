import 'package:flutter/material.dart';
import 'package:projeto_biblas/database/enum/livroSituacao_enum.dart';
import 'package:projeto_biblas/modules/meus_processos/widgets/blocoLivro_widget.dart';
import 'package:projeto_biblas/shared/widgets/app_bar_widget.dart';

class PaginaProcessos extends StatelessWidget {
  const PaginaProcessos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                    caminhoImagem: 'assets/images/calculo.png',
                    tituloLivro: 'Cálculo',
                    codigoLivro: '#5CB8E',
                    dataLimite: '04/02/2022',
                    dataRetirada: '11/02/2022',
                    situacaoLivro: LivroSituacao.EMPOSSE),
                const SizedBox(
                  height: 40,
                ),
                BlocoLivro(
                  caminhoImagem:
                      'assets/images/introducao_a_programacao_com_python.png',
                  tituloLivro: 'Introdução a programação com Python',
                  codigoLivro: '#3TL8B',
                  dataLimite: '05/02/2022',
                  dataRetirada: '12/02/2022',
                  situacaoLivro: LivroSituacao.DEVOLVIDO,
                ),
                const SizedBox(
                  height: 40,
                ),
                BlocoLivro(
                  caminhoImagem: 'assets/images/resistencia_dos_materiais.png',
                  tituloLivro: 'Resistência dos Materiais',
                  codigoLivro: '#9RM3O',
                  dataLimite: '06/02/2022',
                  dataRetirada: '13/02/2022',
                  situacaoLivro: LivroSituacao.ATRASADO,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
