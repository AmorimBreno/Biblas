import 'package:flutter/material.dart';
import 'package:projeto_biblas/modules/busca/pages/busca.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Biblas",
      home: BuscaPage(),
    );
  }
}
