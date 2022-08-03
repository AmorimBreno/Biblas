// ignore: file_names
import 'package:flutter/material.dart';
import 'package:projeto_biblas/modules/busca/pages/paginaBusca.dart';
import 'package:projeto_biblas/shared/themes/app_colors.dart';

class BotoesLivros extends StatefulWidget {
  const BotoesLivros({Key? key, this.texto}) : super(key: key);

  // ignore: prefer_typing_uninitialized_variables
  final texto;

  @override
  State<BotoesLivros> createState() =>
      // ignore: no_logic_in_create_state
      BotoesLivrosState(texto: texto);
}

class BotoesLivrosState extends State<BotoesLivros> {
  BotoesLivrosState({required this.texto});

  String texto;

  @override
  Widget build(BuildContext context) {
    final larguraTela = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        height: larguraTela < 800 ? 40 : 50,
        width: larguraTela < 800 ? 270 : 370,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(2),
          color: AppColors.darkblue,
        ),
        child: Center(
            child: Text(texto,
                style: TextStyle(
                    letterSpacing: 2,
                    color: Colors.white,
                    fontSize: larguraTela < 800 ? 22.5 : 30,
                    fontWeight: FontWeight.bold))),
      ),
    );
  }
}
