import 'package:projeto_biblas/database/enum/livroSituacao_enum.dart';
import 'package:projeto_biblas/database/modules/livro/livroUsuario.dart';
import 'package:projeto_biblas/database/repository_mock/repository_mock.dart';

import '../modules/livro/livro.dart';

class UsuarioSingleton {
  RepositoryMock repositorio = RepositoryMock();
  late List<LivroUsuario> livros = [
    LivroUsuario(repositorio.livros[0], DateTime.utc(2022, 2, 04),
        DateTime.utc(2022, 2, 11), LivroSituacao.EMPOSSE),
    LivroUsuario(repositorio.livros[1], DateTime.utc(2022, 2, 05),
        DateTime.utc(2022, 2, 12), LivroSituacao.DEVOLVIDO),
    LivroUsuario(repositorio.livros[2], DateTime.utc(2022, 2, 06),
        DateTime.utc(2022, 2, 13), LivroSituacao.ATRASADO),
  ];

  //Criação do Singleton
  static final UsuarioSingleton _instance = UsuarioSingleton._internal();
  factory UsuarioSingleton() => _instance;
  UsuarioSingleton._internal();

  void adicionarLivro(LivroUsuario livro) {
    livros.add(livro);
  }
}
