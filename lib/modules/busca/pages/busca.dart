import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:projeto_biblas/widgets/app_bar.dart';

class BuscaPage extends StatelessWidget {
  const BuscaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      //appBar: PreferredSize(preferredSize: Size(52, 64), child: AppBarMaua()),
      body: AppBarMaua(),
      backgroundColor: Colors.black,
    );
  }
}
