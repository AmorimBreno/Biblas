import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:projeto_biblas/shared/themes/app_colors.dart';

class BotoesLivros extends StatelessWidget {
  BotoesLivros(
      {Key? key,
      required this.texto,
      required this.altura,
      required this.largura})
      : super(key: key);

  String texto;
  double altura;
  double largura;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: altura,
      width: largura,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(2),
        color: AppColors.darkblue,
      ),
      child: Center(
          child: Text(texto,
              style: TextStyle(
                  letterSpacing: 2,
                  color: Colors.white,
                  fontSize: 22.5,
                  fontWeight: FontWeight.bold))),
    );
  }
}
