import 'package:flutter/material.dart';
import 'package:projeto_biblas/database/enum/livroSituacao_enum.dart';
import 'package:projeto_biblas/shared/themes/app_colors.dart';

Text tiposSituacao(LivroSituacao situacao) {
  switch (situacao) {
    case LivroSituacao.ATRASADO:
      return const Text('ATRASADO',
          style: TextStyle(fontSize: 32, color: AppColors.atrasado));
    case LivroSituacao.EMPOSSE:
      return const Text('EM POSSE',
          style: TextStyle(fontSize: 32, color: AppColors.emposse));
    case LivroSituacao.DEVOLVIDO:
      return const Text('DEVOLVIDO',
          style: TextStyle(fontSize: 32, color: AppColors.devolvido));
    default:
      return const Text('ERRO',
          style: TextStyle(fontSize: 32, color: AppColors.atrasado));
  }
}
