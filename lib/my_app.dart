import 'package:flutter/material.dart';

import 'package:projeto_biblas/modules/meus_processos/pages/processos_pagina.dart';

import 'package:projeto_biblas/modules/busca/pages/paginaBusca.dart';

import 'modules/livros/pages/paginaLivros.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Biblas",
      home: PaginaProcessos(),
    );
  }
}
