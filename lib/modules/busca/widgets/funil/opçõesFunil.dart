import 'package:flutter/material.dart';

class Filtros extends StatelessWidget {
  const Filtros({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> filtros = [
      'Data de Lançamento',
      'Ordem Alfabética',
      'Matéria',
      'Edição',
    ];

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Textos(texto: filtros[index]);
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
