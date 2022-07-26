import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../../../database/modules/livro/livro.dart';

class CapaLivro extends StatelessWidget {
  final Livro livro;
  // ignore: use_key_in_widget_constructors
  const CapaLivro({required this.livro});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          livro.imagemLivro,
          height: 198,
          width: 128,
          filterQuality: FilterQuality.high,
        ),
        SizedBox(
          width: 168,
          child: Text(
            livro.titulo,
          ),
        )
      ],
    );
  }
}
