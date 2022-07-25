import 'package:flutter/material.dart';
import 'package:projeto_biblas/modules/busca/pages/processos.dart';

class IconeProcessos extends StatelessWidget {
  const IconeProcessos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.history, size: 28),
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const ProcessosPage();
        }));
      },
    );
  }
}
