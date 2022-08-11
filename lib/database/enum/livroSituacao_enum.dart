
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:projeto_biblas/shared/themes/app_colors.dart';

enum LivroSituacao { EMPOSSE, DEVOLVIDO, ATRASADO, RESERVADO, FILA, RETIRAR }

extension LivroSituacaoExtensao on LivroSituacao {
  Text get name {
    switch (this) {
      case LivroSituacao.ATRASADO:
        return const Text('ATRASADO',
            style: TextStyle(fontSize: 32, color: AppColors.atrasado));
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
        return const Text('RESERVADO',
            style: TextStyle(fontSize: 32, color: AppColors.reservado));
      case LivroSituacao.FILA:
        return const Text('FILA: 4',
            style: TextStyle(fontSize: 32, color: AppColors.fila));
      default:
        return const Text('ERRO',
            style: TextStyle(fontSize: 32, color: AppColors.atrasado));
    }
  }
}

