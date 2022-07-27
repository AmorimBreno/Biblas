import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  InputPesquisa createState() => InputPesquisa();
}

class InputPesquisa extends State<SearchBar> {
  final _textControler = TextEditingController();
  String input = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 35,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32),
          color: Colors.lightBlue,
          border: Border.all(color: Colors.black)),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              cursorColor: Colors.black,
              cursorWidth: 1,
              cursorHeight: 22,
              textInputAction: TextInputAction.done,
              keyboardType: TextInputType.name,
              controller: _textControler,
              onSubmitted: (String str) {
                setState(() {
                  input = str;
                });
              },
              decoration: const InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(bottom: 16, left: 10),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 4.0),
            child: Icon(Icons.search),
          ),
        ],
      ),
    );
  }
}
