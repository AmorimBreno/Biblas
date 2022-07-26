import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';
import 'package:projeto_biblas/modules/widgets/Funil/OptionsFunil.dart';
import 'package:projeto_biblas/modules/widgets/Funil/funil.dart';

class non_pressed_funil extends State<FunilButton> {
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
          AnimatedContainer(
            duration: const Duration(milliseconds: 100),
            height: containerHeight,
            width: 150,
            color: Colors.lightBlue[700],
            padding: const EdgeInsets.all(4),
            child: const Filtros(),
          )
        ],
      ),
    );
  }
}
