import 'package:flutter/material.dart';
import 'package:projeto_biblas/database/modules/livro/livro.dart';
import 'package:projeto_biblas/modules/meus_processos/widgets/situacaoLivro_widget.dart';
import 'package:projeto_biblas/shared/themes/app_colors.dart';
import 'package:projeto_biblas/shared/themes/text_styles.dart';

import '../../../database/repository_mock/repository_mock.dart';

class BlocoLivro extends StatelessWidget {
  final String caminhoImagem;
  final String tituloLivro;
  final String codigoLivro;
  final String dataLimite;
  final String dataRetirada;
  final List<Livro> teste = RepositoryMock().livros;
  final int situacaoLivro; // 0 EM POSSE, 1 DEVOLVIDO, -1 ATRASADO

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
        child: Row(
          children: [
            Container(
              height: 154,
              width: 209,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(caminhoImagem))),
            ),
            const SizedBox(
              width: 10,
            ),
            SizedBox(
              width: 1547,
              height: 209,
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(tituloLivro, style: AppTextStyles.titulos),
                      const SizedBox(width: 1300),
                      Text(codigoLivro, style: AppTextStyles.titulosBold)
                    ],
                  ),
                  const Divider(
                    thickness: 1,
                    color: Colors.black,
                  ),
                  const SizedBox(height: 30),
                  Row(
                    children: const [
                      SizedBox(
                        width: 30,
                      ),
                      Text('Retirada', style: AppTextStyles.titulos),
                      SizedBox(width: 542),
                      Text('Limite', style: AppTextStyles.titulos),
                      SizedBox(width: 542),
                      Text('Status', style: AppTextStyles.titulos),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      Text(dataRetirada, style: AppTextStyles.titulos),
                      const SizedBox(width: 470),
                      Text(dataLimite, style: AppTextStyles.titulos),
                      const SizedBox(width: 465),
                      SituacaoLivro(situacao: situacaoLivro),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
