import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:projeto_biblas/shared/themes/app_colors.dart';
import 'package:projeto_biblas/shared/themes/text_styles.dart';

import '../../../database/modules/livro/livro.dart';

class TagsWidget extends StatelessWidget {
  TagsWidget({required this.livro});

  Livro livro;

  @override
  Widget build(BuildContext context) {
    final alturaTela = MediaQuery.of(context).size.height;
    final larguraTela = MediaQuery.of(context).size.width;

    double letraTitulo = larguraTela < 800 ? 14.4 : 20;
    double letraResto = larguraTela < 800 ? 14.4 : 17;

    return Wrap(
        runSpacing: 4,
        children: List.generate(livro.tags.length, (index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 2.0),
            child: UnconstrainedBox(
              child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.lightblue,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Center(
                      child: Text(
                        "#${livro.tags[index].toLowerCase()}",
                        style: AppTextStyles.titulosBold
                            .copyWith(fontSize: letraResto),
                      ),
                    ),
                  )),
            ),
          );
        }));
  }
}
