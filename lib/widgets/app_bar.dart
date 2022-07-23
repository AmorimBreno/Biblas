import 'package:flutter/material.dart';

import '../themes/themes_colors.dart';

class AppBarMaua extends StatelessWidget {
  const AppBarMaua({Key? key}) : super(key: key);
  final String pathLogoMaua = "assets/images/logo_maua.png";
  @override
  Widget build(BuildContext context) {
    return Center(
      child: AppBar(
        backgroundColor: AppColors.darkblue,
        title: const Text(''),
        actions: [
          Column(
            children: [Container()],
          )
        ],
        leading: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
            height: 128,
            width: 128,
            decoration: BoxDecoration(
              image: DecorationImage(
                  filterQuality: FilterQuality.high,
                  image: AssetImage(pathLogoMaua)),
            ),
          ),
        ),

        //leading: ,
      ),
    );
  }
}
