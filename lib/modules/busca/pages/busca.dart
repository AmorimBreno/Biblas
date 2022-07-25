import 'package:flutter/material.dart';
import 'package:projeto_biblas/modules/busca/widgets/dropdown_menu.dart';
import 'package:projeto_biblas/modules/busca/widgets/icone_processos.dart';
import 'package:projeto_biblas/modules/busca/widgets/menu_cascata.dart';
import 'package:projeto_biblas/modules/widgets/search_bar.dart';

class BuscaPage extends StatelessWidget {
  const BuscaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(children: const [
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
        SizedBox(
          height: 50,
        ),
        SizedBox(
          width: 500,
          height: 1000,
          child: MenuCascata(),
        ),
      ]),
    );
  }
}
