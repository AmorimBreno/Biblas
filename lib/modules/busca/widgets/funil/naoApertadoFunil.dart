import 'package:flutter/material.dart';
import 'package:projeto_biblas/modules/busca/widgets/funil/op%C3%A7%C3%B5esFunil.dart';
import 'package:projeto_biblas/modules/busca/widgets/funil/botaoFunil_widget.dart';

import '../../../../shared/themes/app_colors.dart';

class NaoApertadoFunil extends State<BotaoFunilWidget> {
  final color = Colors.black;
  final icon = Icons.menu;

  double containerHeight = 0;
  bool isOpen = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Column(
        children: [
          GestureDetector(
              onTap: () => setState(() {
                    if (isOpen == false) {
                      containerHeight = 170;
                    } else {
                      containerHeight = 0;
                    }
                    isOpen = !isOpen;
                  }),
              child: Icon(icon, color: color, size: 16)),
          Padding(
            padding: const EdgeInsets.only(top: 14.0),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 100),
              height: containerHeight,
              width: 150,
              color: AppColors.greyblue,
              padding: const EdgeInsets.all(4),
              child: const Filtros(),
            ),
          )
        ],
      ),
    );
  }
}
