import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:projeto_biblas/shared/themes/app_colors.dart';
import 'package:projeto_biblas/shared/themes/text_styles.dart';

import '../../../database/modules/livro/livro.dart';

class TagsWidget extends StatelessWidget {
  TagsWidget({required this.tags});

  final List<String> tags;
  late int tamanho = tags.length;

  @override
  Widget build(BuildContext context) {
    final alturaTela = MediaQuery.of(context).size.height;
    final larguraTela = MediaQuery.of(context).size.width;

    double letraTitulo = larguraTela < 800 ? 14.4 : 20;
    double letraResto = larguraTela < 800 ? 14.4 : 17;

    return ListView.builder(
      
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 2.0),
            child: Container(
                decoration: BoxDecoration(
                  color: AppColors.lightblue,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Center(
                    child: Text(
                      "#${tags[index]}",
                      style: AppTextStyles.titulosBold
                          .copyWith(fontSize: letraResto),
                    ),
                  ),
                )),
          );
        },
        itemCount: tags.length);
  }
}

// ListView.builder(
//               scrollDirection: Axis.horizontal,
//               itemBuilder: (context, index) {
//                 return Text("Teste");
//               },
//               itemCount: tags.length)

// Container(
//                 decoration: BoxDecoration(
//                   color: Colors.lightBlueAccent[100],
//                   borderRadius: BorderRadius.circular(4),
//                 ),
//                 child: Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 8.0),
//                   child: Text(tags[index]),
//                 ),
//               )