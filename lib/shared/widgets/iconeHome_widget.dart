import 'package:flutter/material.dart';
import 'package:projeto_biblas/modules/busca/pages/paginaBusca.dart';

class IconeHomeWidget extends StatelessWidget {
  const IconeHomeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(
        Icons.arrow_back,
        size: 28,
      ),
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return PaginaBusca();
        }));
      },
    );
  }
}
