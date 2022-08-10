import 'package:projeto_biblas/database/enum/livroSituacao_enum.dart';
import 'package:projeto_biblas/database/modules/livro/livroUsuario.dart';
import 'package:projeto_biblas/database/repository_mock/repository_mock.dart';

import '../modules/livro/livro.dart';

class UsuarioSingleton {
  RepositoryMock repositorio = RepositoryMock();
  late List<LivroUsuario> livros = [
    LivroUsuario(repositorio.livros[9], DateTime.utc(2022, 4, 07),
        DateTime.utc(2022, 4, 14), LivroSituacao.DEVOLVIDO),
    LivroUsuario(repositorio.livros[11], DateTime.utc(2022, 5, 11),
        DateTime.utc(2022, 5, 18), LivroSituacao.DEVOLVIDO),
    LivroUsuario(repositorio.livros[10], DateTime.utc(2022, 8, 05),
        DateTime.utc(2022, 8, 12), LivroSituacao.ATRASADO),
    LivroUsuario(repositorio.livros[8], DateTime.utc(2022, 8, 10),
        DateTime.utc(2022, 8, 17), LivroSituacao.EMPOSSE),
  ];

  //Criação do Singleton
  static final UsuarioSingleton _instance = UsuarioSingleton._internal();
  factory UsuarioSingleton() => _instance;
  UsuarioSingleton._internal();

  void adicionarLivro(LivroUsuario livro) {
    livros.add(livro);
  }
}
