import 'package:flutter/material.dart';
import 'package:projeto_biblas/modules/busca/widgets/icone_processos.dart';
import 'package:projeto_biblas/modules/widgets/search_bar.dart';

class BuscaPage extends StatelessWidget {
  const BuscaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(children: const [
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Align(
            alignment: Alignment.topRight,
            child: IconeProcessos(),
          ),
        ),
      ]),
    );
  }
}
