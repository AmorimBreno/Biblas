import 'package:flutter/material.dart';
import 'package:projeto_biblas/database/enum/livroSituacao_enum.dart';
import 'package:projeto_biblas/database/enum/tiposSituacao.dart';
import 'package:projeto_biblas/database/modules/livro/livro.dart';
import 'package:projeto_biblas/shared/themes/text_styles.dart';

import '../../../database/repository_mock/repository_mock.dart';

class BlocoLivro extends StatelessWidget {
  final String caminhoImagem;
  final String tituloLivro;
  final String codigoLivro;
  final String dataLimite;
  final String dataRetirada;
  final List<Livro> teste = RepositoryMock().livros;
  final LivroSituacao situacaoLivro; // EM POSSE, DEVOLVIDO, ATRASADO

  BlocoLivro(
      {Key? key,
      required this.caminhoImagem,
      required this.tituloLivro,
      required this.codigoLivro,
      required this.dataLimite,
      required this.dataRetirada,
      required this.situacaoLivro})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.white),
          elevation: MaterialStateProperty.all(10),
        ),
        onPressed: () {},
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 209, maxHeight: 154),
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage(caminhoImagem))),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(tituloLivro, style: AppTextStyles.titulos),
                        Text(codigoLivro, style: AppTextStyles.titulosBold)
                      ],
                    ),
                    const Divider(
                      thickness: 1,
                      color: Colors.black,
                    ),
                    const SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Retirada', style: AppTextStyles.titulos),
                            Text(dataRetirada, style: AppTextStyles.titulos),
                          ],
                        ),
                        Column(
                          children: [
                            Text('Limite', style: AppTextStyles.titulos),
                            Text(dataLimite, style: AppTextStyles.titulos),
                          ],
                        ),
                        Column(
                          children: [
                            Text('Status', style: AppTextStyles.titulos),
                            tiposSituacao(situacaoLivro),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
