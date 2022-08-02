import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:projeto_biblas/shared/themes/app_colors.dart';

class TermosCondicoesWidget extends StatefulWidget {
  TermosCondicoesWidget({required this.alturaContainer});

  late double alturaContainer;

  @override
  State<TermosCondicoesWidget> createState() =>
      _TermosCondicoesWidgetState(alturaContainer: alturaContainer);
}

class _TermosCondicoesWidgetState extends State<TermosCondicoesWidget> {
  _TermosCondicoesWidgetState({required this.alturaContainer});
  double alturaContainer;

  @override
  Widget build(BuildContext context) {
    final larguraTela = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        AnimatedContainer(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(
                      1.0,
                      1.0,
                    ),
                    blurRadius: 10.0,
                    spreadRadius: 1.0,
                  )
                ]),
            height: alturaContainer,
            width: larguraTela < 800 ? larguraTela * 0.8 : 0.45 * larguraTela,
            duration: Duration.zero),
        Container(
          color: AppColors.greyblue,
          height:
              larguraTela < 800 ? alturaContainer * 0.15 : alturaContainer * 0.2,
          width: larguraTela < 800 ? larguraTela * 0.8 : 0.45 * larguraTela,
        ),
      ],
    );
  }
}
