import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../widgets/app_bar.dart';

class BuscaPage extends StatelessWidget {
  const BuscaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(preferredSize: Size(52, 52), child: AppBarMaua()),
      backgroundColor: Colors.black,
    );
  }
}
