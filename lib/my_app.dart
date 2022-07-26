import 'package:flutter/material.dart';
import 'package:projeto_biblas/modules/busca/pages/busca_pagina.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Biblas",
      home: BuscaPage(),
    );
  }
}
