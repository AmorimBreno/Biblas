import '../modules/livro/livro.dart';

class UsuarioSingleton {
  late List<Livro> livros = [];

  //Criação do Singleton
  static final UsuarioSingleton _instance = UsuarioSingleton._internal();
  factory UsuarioSingleton() => _instance;
  UsuarioSingleton._internal();

  void adicionarLivro(Livro livro) {
    livros.add(livro);
  }
}
