import '../modules/livro/livro.dart';

class RepositoryMock {
  List<Livro> livros = [Livro(), Livro(), Livro(), Livro(), Livro()];
  RepositoryMock(this.livros);
}
