import 'package:flutter/material.dart';
import 'package:projeto_biblas/database/modules/menu_cascata/construtorBlocos.dart';

import '../../../database/repository_mock/repository_mock.dart';

class MenuCascataWidget extends StatefulWidget {
  final void Function(String) selecionarTag;
  const MenuCascataWidget({Key? key, required this.selecionarTag})
      : super(key: key);

  @override
  State<MenuCascataWidget> createState() => _MenuCascataState();
}

class _MenuCascataState extends State<MenuCascataWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: RepositoryMock().blocos.map(buildTile).toList(),
    );
  }

  Widget buildTile(ConstrutorBlocos bloco, {double leftPadding = 16}) {
    if (bloco.blocos.isEmpty) {
      return ListTile(
        contentPadding: EdgeInsets.only(left: leftPadding),
        title: Text(bloco.titulo),
        onTap: () {
          widget.selecionarTag(bloco.titulo);
        },
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
