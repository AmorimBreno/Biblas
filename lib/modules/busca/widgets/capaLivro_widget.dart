import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../../../database/modules/livro/livro.dart';

class CapaLivroWidget extends StatelessWidget {
  final Livro livro;
  // ignore: use_key_in_widget_constructors
  const CapaLivroWidget({required this.livro});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 64),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            livro.imagemLivro,
            height: 198,
            width: 128,
            filterQuality: FilterQuality.high,
          ),
          SizedBox(
            width: 128,
            child: Text(
              livro.titulo,
            ),
          )
        ],
      ),
    );
  }
}
