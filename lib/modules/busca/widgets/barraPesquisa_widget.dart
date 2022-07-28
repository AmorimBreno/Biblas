import 'package:flutter/material.dart';
import 'package:projeto_biblas/shared/themes/themes_colors.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      height: 50,
      color: Colors.transparent,
      padding: const EdgeInsets.all(8),
      child: TextField(
        cursorColor: Colors.black,
        cursorWidth: 1,
        textInputAction: TextInputAction.done,
        keyboardType: TextInputType.name,
        decoration: InputDecoration(
          filled: true,
          fillColor: AppColors.greyblue,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(32),
              borderSide: const BorderSide(color: Colors.black)),
          suffixIcon: const Icon(
            Icons.search,
            color: Colors.black,
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(32),
              borderSide: const BorderSide(color: Colors.black)),
        ),
      ),
    );
  }
}
