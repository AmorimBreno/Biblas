import 'package:flutter/material.dart';
import 'package:projeto_biblas/shared/themes/app_colors.dart';
import 'package:projeto_biblas/shared/themes/text_styles.dart';

class TermosWidget extends StatelessWidget {
  TermosWidget({Key? key, required this.titulo, required this.conteudo})
      : super(key: key);

  late String titulo = '';
  late String conteudo = '';

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(
        titulo,
        style:
            AppTextStyles.titulos.copyWith(fontSize: 20, color: Colors.white),
        textAlign: TextAlign.left,
      ),
      maintainState: true,
      backgroundColor: AppColors.darkblue,
      collapsedBackgroundColor: AppColors.darkblue,
      children: [
        Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              conteudo,
              style: AppTextStyles.titulos.copyWith(fontSize: 16),
            ),
          ),
        )
      ],
    );
  }
}
