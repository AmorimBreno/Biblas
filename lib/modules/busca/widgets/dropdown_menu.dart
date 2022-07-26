import 'package:flutter/material.dart';

class MenuDropDown extends StatefulWidget {
  const MenuDropDown({Key? key}) : super(key: key);

  @override
  State<MenuDropDown> createState() => _MenuDropDownState();
}

class _MenuDropDownState extends State<MenuDropDown> {
  String? itemSelecionado1;
  final List<String> cursosPrincipais = [
    'Administração',
    'Design',
    'Engenharia'
  ];

  final List<String> cursosEngenharia = [
    'Ciclo Básico',
    'Alimentos',
    'Civil',
    'Computação',
    'Controle e Automação',
    'Eletrônica',
    'Elétrica',
    'Mecânica',
    'Produção',
    'Química'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            width: 240,
            child: DropdownButtonFormField<String>(
              isExpanded: true,
              icon: const Icon(Icons.book),
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide:
                          const BorderSide(width: 3, color: Colors.blue))),
              hint: const Text(
                'Selecione o curso',
                style: TextStyle(fontSize: 20),
              ),
              value: itemSelecionado1,
              items: cursosPrincipais
                  .map((item) => DropdownMenuItem<String>(
                      value: item,
                      child: Text(
                        item,
                        style: const TextStyle(fontSize: 20),
                      )))
                  .toList(),
              onChanged: (item) => setState(() {
                itemSelecionado1 = item ?? '';
                print(itemSelecionado1);
              }),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
