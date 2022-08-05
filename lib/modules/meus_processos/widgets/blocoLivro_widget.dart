import 'package:flutter/material.dart';
import 'package:projeto_biblas/database/enum/livroSituacao_enum.dart';
import 'package:projeto_biblas/database/enum/tiposSituacao.dart';
import 'package:projeto_biblas/database/modules/livro/livro.dart';
import 'package:projeto_biblas/shared/themes/text_styles.dart';

import '../../../database/repository_mock/repository_mock.dart';

class BlocoLivro extends StatelessWidget {
  final int indice;
  final String dataLimite;
  final String dataRetirada;
  final List<Livro> repositorioLivros = RepositoryMock().livros;
  final LivroSituacao situacaoLivro; // EM POSSE, DEVOLVIDO, ATRASADO

  BlocoLivro(
      {Key? key,
      required this.dataLimite,
      required this.dataRetirada,
      required this.situacaoLivro,
      required this.indice})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 5,
              )
            ]),
        // onPressed: () {},
        child: GestureDetector(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                ConstrainedBox(
                  constraints:
                      const BoxConstraints(maxWidth: 150, maxHeight: 215),
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                repositorioLivros[indice].imagemLivro))),
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                Expanded(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(repositorioLivros[indice].titulo,
                              style: AppTextStyles.titulos),
                          Text('#${repositorioLivros[indice].codigo}',
                              style: AppTextStyles.titulosBold)
                        ],
                      ),
                      const Divider(
                        thickness: 1,
                        color: Colors.black,
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              const Text('Retirada',
                                  style: AppTextStyles.titulos),
                              const SizedBox(
                                height: 20,
                              ),
                              Text(dataRetirada, style: AppTextStyles.titulos),
                            ],
                          ),
                          Column(
                            children: [
                              const Text('Limite',
                                  style: AppTextStyles.titulos),
                              const SizedBox(
                                height: 20,
                              ),
                              Text(dataLimite, style: AppTextStyles.titulos),
                            ],
                          ),
                          Column(
                            children: [
                              const Text('Status',
                                  style: AppTextStyles.titulos),
                              const SizedBox(
                                height: 20,
                              ),
                              tiposSituacao(situacaoLivro),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
