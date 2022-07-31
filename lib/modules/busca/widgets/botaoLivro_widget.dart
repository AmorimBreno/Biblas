import 'package:flutter/material.dart';
import 'package:projeto_biblas/modules/livros/pages/paginaLivros.dart';
import 'package:projeto_biblas/modules/meus_processos/pages/processos_pagina.dart';

class BotaoLivros extends StatelessWidget {
  const BotaoLivros({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.book, size: 28),
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return PaginaLivros();
        }));
      },
    );
  }
}
