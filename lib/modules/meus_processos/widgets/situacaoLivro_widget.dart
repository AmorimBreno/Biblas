import 'package:flutter/material.dart';
import '../../../shared/themes/app_colors.dart';

class SituacaoLivro extends StatelessWidget {
  final int situacao;
  const SituacaoLivro({Key? key, required this.situacao}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (situacao == 0) {
      return const Text('EM POSSE',
          style: TextStyle(fontSize: 32, color: AppColors.emposse));
    } else if (situacao == 1) {
      return const Text('DEVOLVIDO',
          style: TextStyle(fontSize: 32, color: AppColors.devolvido));
    } else if (situacao == -1) {
      return const Text('ATRASADO',
          style: TextStyle(fontSize: 32, color: AppColors.atrasado));
    } else {
      return const Text('ERRO',
          style: TextStyle(fontSize: 32, color: AppColors.atrasado));
    }
  }
}
