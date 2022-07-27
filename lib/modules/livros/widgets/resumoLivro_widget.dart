import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Sinopse_Widget extends StatelessWidget {
  const Sinopse_Widget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: 600,
      child: ListView(children: [
        const Text('Sinopse:', style: TextStyle(fontSize: 20)),
        const Text("exemplo")
      ]),
    );
  }
}
