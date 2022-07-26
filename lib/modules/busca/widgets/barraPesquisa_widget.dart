import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  InputPesquisa createState() => new InputPesquisa();
}

class InputPesquisa extends State<SearchBar> {
  final _textControler = TextEditingController();
  String input = '';

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
        controller: _textControler,
        onSubmitted: (String str) {
          setState(() {
            input = str;
          });
        },
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.lightBlue,
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
