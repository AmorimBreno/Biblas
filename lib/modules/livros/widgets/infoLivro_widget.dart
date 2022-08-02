import 'package:flutter/material.dart';
import 'package:projeto_biblas/shared/themes/app_colors.dart';

import '../../../database/modules/livro/livro.dart';

class InfoLivrosWidget extends StatelessWidget {
  const InfoLivrosWidget({required this.livro});

  final Livro livro;

  @override
  Widget build(BuildContext context) {
    final alturaTela = MediaQuery.of(context).size.height;
    final larguraTela = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Image.asset(
          livro.imagemLivro,
          height: alturaTela / 3,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: SizedBox(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 72.0),
                      child: Expanded(
                        child: Text(
                          livro.titulo,
                          style: TextStyle(
                              fontSize: 14.4, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: AppColors.darkblue,
                          borderRadius: BorderRadius.circular(2)),
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child:
                            //**************************CÓDIGO DO LIVRO*************************************
                            Text(livro.codigo,
                                style: TextStyle(
                                    letterSpacing: 2,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600)),
                      ),
                    )
                  ],
                ),
                Text(
                  livro.autor[0],
                  style: TextStyle(fontSize: 14.4, fontWeight: FontWeight.w100),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 48.0, bottom: 4),
                  child: RichText(
                      text: TextSpan(
                          text: 'Lançamento: ',
                          style: TextStyle(fontWeight: FontWeight.bold),
                          children: <TextSpan>[
                        TextSpan(
                          // ******************************** LANÇAMENTO DO LIVRO ************************
                          text: livro.lancamento.toString(),
                          style: TextStyle(fontWeight: FontWeight.w100),
                        )
                      ])),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 4.0),
                  child: RichText(
                      text: TextSpan(
                          text: 'Edição: ',
                          style: TextStyle(fontWeight: FontWeight.bold),
                          children: <TextSpan>[
                        TextSpan(
                          // ******************************** LANÇAMENTO DO LIVRO ************************
                          text: livro.edicao,
                          style: TextStyle(fontWeight: FontWeight.w100),
                        )
                      ])),
                ),
                Row(children: [
                  Text("Tags: ", style: TextStyle(fontWeight: FontWeight.bold)),
                  Container()
                ]),
                Padding(
                  padding: const EdgeInsets.only(top: 32.0),
                  child: RichText(
                      text: TextSpan(
                          text: 'Disponibilidade: ',
                          style: TextStyle(fontWeight: FontWeight.bold),
                          children: <TextSpan>[
                        TextSpan(
                          text: "Disponível",
                          style: TextStyle(color: Colors.green),
                        )
                      ])),
                )
              ])),
        ),
      ]),
    );
  }
}
