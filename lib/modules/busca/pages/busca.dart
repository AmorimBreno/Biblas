import 'package:flutter/material.dart';
import 'package:projeto_biblas/modules/widgets/Funil/funil.dart';
import 'package:projeto_biblas/modules/widgets/search_bar.dart';

class BuscaPage extends StatelessWidget {
  const BuscaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Column(children: [FunilButton()])));
  }
}
