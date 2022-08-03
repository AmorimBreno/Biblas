import 'package:projeto_biblas/database/modules/livro/livroUsuario.dart';

class UsuarioSingleton {
  late List<LivroUsuario> livros = [];

  //Criação do Singleton
  static final UsuarioSingleton _instance = UsuarioSingleton._internal();
  factory UsuarioSingleton() => _instance;
  UsuarioSingleton._internal();

  void adicionarLivro(LivroUsuario livro) {
    livros.add(livro);
  }
}
