import 'package:flutter/material.dart';

import 'package:projeto_biblas/modules/busca/widgets/barraPesquisa_widget.dart';
import 'package:projeto_biblas/modules/busca/widgets/funil/botaoFunil_widget.dart';

import '../../../database/modules/livro/livro.dart';
import '../../../shared/widgets/app_bar_widget.dart';
import '../widgets/capaLivro_widget.dart';
import '../widgets/iconeProcessos_widget.dart';

class BuscaPage extends StatelessWidget {
  BuscaPage({Key? key}) : super(key: key);
  final Livro livro = Livro(
      "Introdução à Programação com Python",
      "EC001",
      "Nilo Ney Corinho Menezes",
      2010,
      "Este livro é orientado ao iniciante em programação. Os conceitos básicos de programação, como expressões, variáveis, repetições, decisões, listas, dicionários, conjuntos, funções, arquivos, classes, objetos e banco de dados com SQLite 3 são apresentados um a um com exemplos e exercícios. A obra visa a explorar a programação de computadores como ferramenta do dia a dia. Ela pode ser lida durante um curso de introdução à programação de computadores e usada como guia de estudo para autodidatas. Para aproveitamento pleno do conteúdo, apenas conhecimentos básicos de informática, como digitar textos, abrir e salvar arquivos, são suficientes. Todo software utilizado no livro pode ser baixado gratuitamente, sendo executado em Windows, Linux e Mac OS X. Embora a linguagem Python (versão +3.7) seja muito poderosa e repleta de recursos modernos de programação, este livro não pretende ensinar a linguagem em si, mas ensinar a programar. Alguns recursos da linguagem não foram utilizados para privilegiar os exercícios de lógica de programação e oferecer uma preparação mais ampla ao leitor para outras linguagens. Essa escolha não impediu a apresentação de recursos poderosos da linguagem, e, embora o livro não seja fundamentalmente uma obra de referência, o leitor encontrará várias notas e explicações de características específicas do Python, além da lógica de programação.",
      "Segunda (Junho/2014)",
      ["ciclo básico", "programação", "engenharia", "computação"],
      'assets/images/introducao_a_programacao_com_python.png');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: PreferredSize(preferredSize: Size(52, 64), child: AppBarMaua()),
      body: Column(
        children: [
          const AppBarMaua(),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width / 2 - 250),
                  child: Stack(
                    children: [
                      const SearchBarWidget(),
                      Container(
                        margin: const EdgeInsets.only(left: 432),
                        child: const Padding(
                          padding: EdgeInsets.only(top: 16.0),
                          child: BotaoFunilWidget(),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                    margin: const EdgeInsets.only(right: 8),
                    child: const IconeProcessosWidget())
              ]),
          Row(children: const [Text("Hello")]),
        ],
      ),
      backgroundColor: Colors.white,
    );
  }
}
