import 'package:flutter/material.dart';
import 'package:projeto_biblas/shared/themes/app_colors.dart';

class SearchBarWidget extends StatefulWidget {
  final void Function(String) detectaTexto;
  final void Function() reset;
  const SearchBarWidget(
      {Key? key, required this.detectaTexto, required this.reset})
      : super(key: key);

  @override
  InputPesquisa createState() => InputPesquisa();
}

class InputPesquisa extends State<SearchBarWidget> {
  final _textControler = TextEditingController();
  String input = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * (5 / 15),
      height: MediaQuery.of(context).size.width * (5 / 150),
      color: Colors.transparent,
      padding: const EdgeInsets.all(8),
      child: TextField(
        style: TextStyle(fontSize: MediaQuery.of(context).size.width / (100)),
        textAlignVertical: TextAlignVertical.top,
        controller: _textControler,
        onSubmitted: widget.detectaTexto,
        cursorColor: AppColors.greyblue,
        cursorWidth: 1,
        textInputAction: TextInputAction.done,
        keyboardType: TextInputType.name,
        decoration: InputDecoration(
          filled: true,
          fillColor: AppColors.greyblue,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(32),
              borderSide: const BorderSide(color: Colors.black)),
          prefix: _textControler.text.isNotEmpty
              ? Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: IconButton(
                    onPressed: () {
                      _textControler.clear();
                      widget.reset();
                    },
                    icon: Icon(Icons.clear,
                        size: MediaQuery.of(context).size.width * (5 / 750)),
                  ),
                )
              : null,
          suffixIcon: Icon(
            Icons.search,
            color: Colors.black,
            size: MediaQuery.of(context).size.width * (5 / 300),
          ),
        ),
      ),
    );
  }

  void clearButton() {
    _textControler.clear();
  }
}
