import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class InfoLivrosWidget extends StatelessWidget {
  const InfoLivrosWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Container(
        color: Colors.blue,
        height: 300,
        width: 200,
      ),

      // Aqui sera inserido o widget com as informações do livro
      SizedBox(
          height: 300,
          width: 200,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [Text("Teste")])),
    ]);
  }
}
