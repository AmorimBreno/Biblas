import 'package:flutter/material.dart';
import 'package:projeto_biblas/database/enum/livroSituacao_enum.dart';
import 'package:projeto_biblas/shared/themes/app_colors.dart';

Text tiposSituacao(LivroSituacao situacao, String reservado) {
  switch (situacao) {
    case LivroSituacao.ATRASADO:
      return const Text(
        'ATRASADO\nR\$5,00',
        style: TextStyle(fontSize: 32, color: AppColors.atrasado),
        textAlign: TextAlign.center,
      );
    case LivroSituacao.EMPOSSE:
      return const Text('EM POSSE',
          style: TextStyle(fontSize: 32, color: AppColors.emposse));
    case LivroSituacao.DEVOLVIDO:
      return const Text('DEVOLVIDO',
          style: TextStyle(fontSize: 32, color: AppColors.devolvido));
    case LivroSituacao.RETIRAR:
      return const Text('À RETIRAR',
          style: TextStyle(fontSize: 32, color: AppColors.retirar));
    case LivroSituacao.RESERVADO:
      return Text(
        'RESERVADO\n${reservado}',
        style: TextStyle(fontSize: 32, color: AppColors.reservado),
        textAlign: TextAlign.center,
      );
    case LivroSituacao.FILA:
      return const Text('FILA: 6',
          style: TextStyle(fontSize: 32, color: AppColors.fila));
    default:
      return const Text('ERRO',
          style: TextStyle(fontSize: 32, color: AppColors.atrasado));
  }
}
