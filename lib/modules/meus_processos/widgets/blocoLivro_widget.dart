import 'package:flutter/material.dart';
import 'package:projeto_biblas/database/enum/livroSituacao_enum.dart';
import 'package:projeto_biblas/database/enum/tiposSituacao.dart';
import 'package:projeto_biblas/database/modules/livro/livro.dart';
import 'package:projeto_biblas/database/modules/livro/livroUsuario.dart';
import 'package:projeto_biblas/modules/livros/pages/paginaLivrosResponsiva.dart';
import 'package:projeto_biblas/shared/themes/text_styles.dart';

import '../../../database/repository_mock/repository_mock.dart';

class BlocoLivro extends StatelessWidget {
  final LivroUsuario livroUsuario; // EM POSSE, DEVOLVIDO, ATRASADO

  const BlocoLivro({
    Key? key,
    required this.livroUsuario,
  }) : super(key: key);

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
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return PaginaLivros(
                livro: livroUsuario.livro,
              );
            }));
          },
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
                            image: AssetImage(livroUsuario.livro.imagemLivro))),
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
                          Text(livroUsuario.livro.titulo,
                              style: AppTextStyles.titulos),
                          Text('#${livroUsuario.livro.codigo}',
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
                              Text(
                                  livroUsuario.status == LivroSituacao.RESERVADO
                                      ? '---'
                                      : livroUsuario.dataRetirada,
                                  style: AppTextStyles.titulos),
                            ],
                          ),
                          Column(
                            children: [
                              const Text('Limite',
                                  style: AppTextStyles.titulos),
                              const SizedBox(
                                height: 20,
                              ),
                              Text(livroUsuario.dataLimite,
                                  style: AppTextStyles.titulos),
                            ],
                          ),
                          Column(
                            children: [
                              const Text('Status',
                                  style: AppTextStyles.titulos),
                              const SizedBox(
                                height: 20,
                              ),
                              tiposSituacao(livroUsuario.status,
                                  livroUsuario.dataRetirada),
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
