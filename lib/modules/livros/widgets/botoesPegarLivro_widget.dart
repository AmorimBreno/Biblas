import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

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
        color: Color.fromARGB(255, 2, 21, 54),
      ),
      child: Center(
          child:
              Text(texto, style: TextStyle(color: Colors.white, fontSize: 20))),
    );
  }
}
