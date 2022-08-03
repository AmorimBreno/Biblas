import 'package:flutter/material.dart';
import 'package:projeto_biblas/shared/themes/app_colors.dart';
import 'package:projeto_biblas/shared/themes/text_styles.dart';

class TermosWidget extends StatelessWidget {
  TermosWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(
        "Penalidade Por Atraso Na Devolução",
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
          child: const Text(
            'AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA',
            style: AppTextStyles.titulos,
          ),
        )
      ],
    );
  }
}
