import 'dart:html';

import 'package:flutter/material.dart';

class Filtros extends StatelessWidget {
  const Filtros({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> filtros = [
      'Lançamento',
      'Alfabética',
      'Matéria',
      'Edição',
    ];

    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Expanded(
            child: Row(
              children: [
                Textos(texto: filtros[index]),
              ],
            ),
          );
        },
        itemCount: 4,
      ),
    );
  }
}

class Textos extends StatelessWidget {
  final String texto;
  const Textos({Key? key, required this.texto}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          texto,
          textScaleFactor: 0.7,
        )
      ],
    );
  }
}

class CheckBox_Widget extends StatefulWidget {
  @override
  _CheckBox_Widget createState() => _CheckBox_Widget();
}

class _CheckBox_Widget extends State<CheckBox_Widget> {
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 10,
      child: Checkbox(
          value: this.value,
          onChanged: (value) {
            setState(() {
              this.value = value!;
            });
          }),
    );
  }
}
