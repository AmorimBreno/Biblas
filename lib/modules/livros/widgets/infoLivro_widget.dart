import 'package:flutter/material.dart';
import 'package:projeto_biblas/shared/themes/themes_colors.dart';

class InfoLivrosWidget extends StatelessWidget {
  const InfoLivrosWidget(
      {Key? key,
      required this.titulo,
      required this.autor,
      required this.codigo,
      required this.edicao,
      required this.imagem,
      required this.lancamento,
      required this.disponivel})
      : super(key: key);

  final String titulo;
  final String autor;
  final String lancamento;
  final String edicao;
  final String codigo;
  final String imagem;
  // 1 para disponivel 0 para indisponivel
  final int disponivel;
  final String disponibilidade = "Disponível";

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(children: [
        Container(
          height: 254.25,
          width: 180,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                      "assets/images/introducao_a_programacao_com_python.png"))),
        ),

        // Aqui sera inserido o widget com as informações do livro
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: SizedBox(
              height: 254.25,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //**************************** TITULO DO LIVRO *********************************
                        Padding(
                          padding: const EdgeInsets.only(right: 72.0),
                          child: Text(
                            titulo,
                            style: TextStyle(
                                fontSize: 14.4, fontWeight: FontWeight.bold),
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
                                Text(codigo,
                                    style: TextStyle(
                                        letterSpacing: 2,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600)),
                          ),
                        )
                      ],
                    ),
                    Text(
                      //************************AUTOR DO LIVRO***************************************
                      autor,
                      style: TextStyle(
                          fontSize: 14.4, fontWeight: FontWeight.w100),
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
                              text: lancamento,
                              style: TextStyle(fontWeight: FontWeight.w100),
                            )
                          ])),
                    ),
                    //****************EDIÇÃO DO LIVRO **************************
                    Padding(
                      padding: const EdgeInsets.only(bottom: 4.0),
                      child: RichText(
                          text: TextSpan(
                              text: 'Edição: ',
                              style: TextStyle(fontWeight: FontWeight.bold),
                              children: <TextSpan>[
                            TextSpan(
                              // ******************************** LANÇAMENTO DO LIVRO ************************
                              text: edicao,
                              style: TextStyle(fontWeight: FontWeight.w100),
                            )
                          ])),
                    ),
                    Row(children: [
                      Text("Tags: ",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      Container()
                    ]),
                    Padding(
                      padding: const EdgeInsets.only(top: 32.0),
                      // DISPONIBILIDADE DO LIVRO
                      child: RichText(
                          text: TextSpan(
                              text: 'Disponibilidade: ',
                              style: TextStyle(fontWeight: FontWeight.bold),
                              children: <TextSpan>[
                            TextSpan(
                              // ******************************** LANÇAMENTO DO LIVRO ************************
                              text: disponibilidade,
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
