import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../database/modules/livro/livro.dart';

class Sinopse_Widget extends StatelessWidget {
  Sinopse_Widget({required this.livro});

  Livro livro;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: 600,
      child: ListView(children: [
        const Text('Sinopse:', style: TextStyle(fontSize: 22.5)),
        Text(livro.sinopse, style: TextStyle(fontSize: 13.5))
      ]),
    );
  }
}
