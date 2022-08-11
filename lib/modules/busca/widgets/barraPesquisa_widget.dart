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
      child: TextField(
        textAlignVertical: TextAlignVertical.center,
        controller: _textControler,
        onChanged: widget.detectaTexto,
        cursorColor: AppColors.greyblue,
        maxLines: 1,
        textInputAction: TextInputAction.done,
        keyboardType: TextInputType.name,
        decoration: InputDecoration(
          filled: true,
          fillColor: AppColors.greyblue,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(32),
              borderSide: const BorderSide(color: Colors.black)),
          prefixIcon: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
            child: Icon(
              Icons.search,
              color: Colors.black,
              size: MediaQuery.of(context).size.width * (5 / 300),
            ),
          ),
          suffixIcon: _textControler.text.isNotEmpty
              ? IconButton(
                  onPressed: () {
                    _textControler.clear();
                    widget.reset();
                  },
                  icon: const Icon(
                    Icons.clear,
                    size: 16,
                    color: Colors.black,
                  ),
                )
              : null,
        ),
      ),
    );
  }

  void clearButton() {
    _textControler.clear();
  }
}
