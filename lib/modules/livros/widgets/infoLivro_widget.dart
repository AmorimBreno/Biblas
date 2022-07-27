import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

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
  final int disponivel;
  final String disponibilidade = "Disponível";

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Container(
        color: Color.fromARGB(255, 2, 21, 54),
        height: 300,
        width: 200,
      ),

      // Aqui sera inserido o widget com as informações do livro
      SizedBox(
          height: 300,
          width: 300,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(titulo),
                Container(
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 2, 21, 54),
                      borderRadius: BorderRadius.circular(2)),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(codigo, style: TextStyle(color: Colors.white)),
                  ),
                )
              ],
            ),
            Text(autor),
            Padding(
              padding: const EdgeInsets.only(top: 64.0),
              child: Text('Lançamento: $lancamento'),
            ),
            Text("Edição: $edicao"),
            Padding(
              padding: const EdgeInsets.only(top: 64.0),
              child: Text('Disponibilidade: $disponibilidade'),
            )
          ])),
    ]);
  }
}
