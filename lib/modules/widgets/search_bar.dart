import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        heightFactor: 4,
        child: Container(
          width: 500,
          height: 50,
          color: Colors.transparent,
          padding: const EdgeInsets.all(8),
          child: TextField(
            textInputAction: TextInputAction.done,
            keyboardType: TextInputType.name,
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
        ),
      ),
    );
  }
}
