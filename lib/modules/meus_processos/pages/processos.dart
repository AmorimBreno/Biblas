import 'package:flutter/material.dart';

class ProcessosPage extends StatelessWidget {
  const ProcessosPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
          child: Text(
        'Meus Processos (em desenvolvimento)',
        style: TextStyle(fontSize: 40),
      )),
    );
  }
}
