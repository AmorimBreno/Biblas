import 'package:flutter/material.dart';
import 'package:projeto_biblas/modules/meus_processos/pages/processos_pagina.dart';

class IconeProcessosWidget extends StatelessWidget {
  const IconeProcessosWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        Icons.history,
        size: MediaQuery.of(context).size.width / 90,
      ),
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const PaginaProcessos();
        }));
      },
    );
  }
}
