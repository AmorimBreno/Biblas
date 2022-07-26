import 'package:flutter/material.dart';
import 'package:projeto_biblas/database/modules/menu_cascata/construtorBlocos.dart';
import 'package:projeto_biblas/modules/busca/pages/busca_pagina.dart';
import '../../../database/repository_mock/CascataRepository.dart';

class MenuCascata extends StatefulWidget {
  const MenuCascata({Key? key}) : super(key: key);

  @override
  State<MenuCascata> createState() => _MenuCascataState();
}

class _MenuCascataState extends State<MenuCascata> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: cursosData.map(buildTile).toList(),
    );
  }

  Widget buildTile(ConstrutorBlocos bloco, {double leftPadding = 16}) {
    if (bloco.blocos.isEmpty) {
      return ListTile(
        contentPadding: EdgeInsets.only(left: leftPadding),
        title: Text(bloco.titulo),
        onTap: () =>
            Navigator.push(context, MaterialPageRoute(builder: (context) {
          return BuscaPage();
        })),
      );
    } else {
      return ExpansionTile(
        tilePadding: EdgeInsets.only(left: leftPadding),
        title: Text(bloco.titulo),
        children: bloco.blocos
            .map((bloco) => buildTile(bloco, leftPadding: 16 + leftPadding))
            .toList(),
      );
    }
  }
}
