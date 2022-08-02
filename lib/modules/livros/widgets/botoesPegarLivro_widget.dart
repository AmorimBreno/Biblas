import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:projeto_biblas/shared/themes/app_colors.dart';

class BotoesLivros extends StatefulWidget {
  const BotoesLivros({Key? key, this.texto}) : super(key: key);

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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: GestureDetector(
        onTap: () {},
        child: Container(
          height: 40,
          width: 270,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(2),
            color: AppColors.darkblue,
          ),
          child: Center(
              child: Text(texto,
                  style: const TextStyle(
                      letterSpacing: 2,
                      color: Colors.white,
                      fontSize: 22.5,
                      fontWeight: FontWeight.bold))),
        ),
      ),
    );
  }
}
